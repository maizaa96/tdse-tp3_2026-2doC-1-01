	¡Excelente elección! La placa **Nucleo F103RB** (basada en el microcontrolador STM32F103) es un estándar en la industria. Para esta plataforma, el ecosistema oficial utiliza la librería **STM32 HAL (Hardware Abstraction Layer)**.

Para completar el "porting", vamos a vincular nuestra capa genérica con las funciones de la HAL del STM32. La ventaja de la placa Nucleo es que ya cuenta con un botón de usuario (el botón azul) que podemos usar para nuestro Statechart.

Aquí tienes la guía paso a paso y el código adaptado:

1. **Configurar los pines (System Setup):** Uso de STM32CubeIDE o CubeMX.
Abre tu proyecto y configura los siguientes pines como **GPIO_Output**:

* **RS, EN, D4, D5, D6, y D7**. Puedes elegir los pines que te queden más cómodos en los conectores de la Nucleo (por ejemplo: `PA8`, `PA9`, `PB5`, `PB4`, `PB10`, `PB8`).
* **Importante:** En la configuración de cada pin, asígnales una "User Label" (Etiqueta de usuario) para que CubeMX genere los nombres automáticamente. Llámalos `LCD_RS`, `LCD_EN`, `LCD_D4`, `LCD_D5`, `LCD_D6` y `LCD_D7`.
* Asegúrate de que el pin `PC13` esté configurado como **GPIO_Input** (es el botón azul de la Nucleo, generalmente ya viene etiquetado como `B1`).


2. **Crear lcd_port.h:** El archivo de cabecera.
Este archivo define los identificadores de los pines que usará la capa superior.

```c
#ifndef LCD_PORT_H
#define LCD_PORT_H

#include "stm32f1xx_hal.h" // Librería HAL específica de tu Nucleo F103
#include "main.h"          // Contiene las definiciones de los pines de CubeMX

// Identificadores abstractos para la capa genérica
#define PIN_RS 0
#define PIN_EN 1
#define PIN_D4 2
#define PIN_D5 3
#define PIN_D6 4
#define PIN_D7 5

// Prototipos de funciones hardware-dependent
void LCD_WritePin(uint8_t pin_name, uint8_t state);
void LCD_DelayMs(uint32_t ms);

#endif // LCD_PORT_H

```


3. **Implementar lcd_port.c:** El archivo fuente de bajo nivel.
Aquí hacemos la "traducción" entre nuestros identificadores y las funciones reales de STM32.

```c
#include "lcd_port.h"

void LCD_WritePin(uint8_t pin_name, uint8_t state) {
    // Traducimos el estado (1 o 0) al formato de la HAL de STM32
    GPIO_PinState pinState = (state == 1) ? GPIO_PIN_SET : GPIO_PIN_RESET;

    // Escribimos en el puerto correspondiente usando las etiquetas de CubeMX
    switch(pin_name) {
        case PIN_RS: 
            HAL_GPIO_WritePin(LCD_RS_GPIO_Port, LCD_RS_Pin, pinState); 
            break;
        case PIN_EN: 
            HAL_GPIO_WritePin(LCD_EN_GPIO_Port, LCD_EN_Pin, pinState); 
            break;
        case PIN_D4: 
            HAL_GPIO_WritePin(LCD_D4_GPIO_Port, LCD_D4_Pin, pinState); 
            break;
        case PIN_D5: 
            HAL_GPIO_WritePin(LCD_D5_GPIO_Port, LCD_D5_Pin, pinState); 
            break;
        case PIN_D6: 
            HAL_GPIO_WritePin(LCD_D6_GPIO_Port, LCD_D6_Pin, pinState); 
            break;
        case PIN_D7: 
            HAL_GPIO_WritePin(LCD_D7_GPIO_Port, LCD_D7_Pin, pinState); 
            break;
    }
}

void LCD_DelayMs(uint32_t ms) {
    // Usamos el retardo bloqueante nativo de STM32 basado en el SysTick
    HAL_Delay(ms);
}

```


---

## 4. Conectando el Botón Azul al Statechart

En el código anterior te había dejado un polling ficticio para los eventos. Con la Nucleo F103RB, el botón azul (`PC13`) funciona con lógica negativa (se lee `0` cuando está presionado). Vamos a actualizar la función `Get_Event()` en tu archivo `main.c` para que lea el botón real:

```c
// Variable para un simple "Debounce" (antirrebote) por software
static uint32_t last_button_press = 0;

SystemEvent_t Get_Event(void) {
    // 1. Verificar timeout en la pantalla de inicio
    if (currentState == STATE_BOOT && timer_ticks > 2000) {
        return EV_TIMEOUT;
    }

    // 2. Leer el botón azul de la placa Nucleo (B1_Pin en el puerto B1_GPIO_Port / PC13)
    // Usamos HAL_GetTick() para evitar registrar múltiples pulsaciones en milisegundos (debounce de 200ms)
    if (HAL_GPIO_ReadPin(B1_GPIO_Port, B1_Pin) == GPIO_PIN_RESET) {
        if ((HAL_GetTick() - last_button_press) > 200) {
            last_button_press = HAL_GetTick();
            return EV_BTN_PRESSED;
        }
    }
    
    return EV_NONE;
}

```


Segunda respuesta de Gemini:

El sistema provisto implementa un planificador de tareas (scheduler) "Bare Metal" activado por eventos temporales (Event-Triggered System) y separa la lógica de hardware de la lógica de aplicación.

### Arquitectura Central y Temporización

* **`app_it.c`**: Maneja las interrupciones de hardware. La función `HAL_SYSTICK_Callback` incrementa el contador global cada vez que el temporizador del sistema genera una interrupción (típicamente cada 1 ms).


```c
void HAL_SYSTICK_Callback(void)
{
	/* Update Tick Counter */
	g_app_tick_cnt++;
}

```


* **`app.c`**: Contiene el núcleo de ejecución. En `app_update(void)`, el sistema verifica el contador `g_app_tick_cnt`; si es tiempo de actualizar, recorre el arreglo de tareas `task_cfg_list` ejecutando de forma secuencial la función `update` de cada una (test y display) midiendo además los tiempos mínimos y máximos de ejecución (BCET y WCET).


* **`systick.c`**: Brinda una función de retardo bloqueante `systick_delay_us()` que calcula el tiempo transcurrido leyendo de forma directa el registro físico `SysTick->VAL` del microcontrolador.



### Control de Periféricos e Interfaz

* **`display.h` y `display.c**`: Comprenden el controlador de bajo nivel de una pantalla LCD. Implementan la inicialización mediante `displayInit()`, el control de posición con `displayCharPositionWrite()` y la escritura de caracteres operando bit a bit los pines (RS, RW, EN, D0-D7) según si se utiliza una conexión de 4 o de 8 bits.


* **`task_display_interface.c`**: Actúa como un "puente" para aislar la memoria del display. Expone la función `put_event_task_display()`, la cual guarda el mensaje deseado en un arreglo bidimensional interno (`ddram`) y levanta una bandera para notificar a la máquina de estados que hay información nueva por mostrar.


```c
void put_event_task_display(uint32_t char_column, uint32_t char_row, const char *message)
{
	// ...
	p_task_display_dta->event = EV_DSP_UPDATE;
	p_task_display_dta->flag = true;
    // Lógica de copiado de *message hacia ddram
}

```


* **`task_test_attribute.h`**: Define el tipo `task_test_dta_t`, estructura que almacena un `tick` para temporización no bloqueante y un `counter` de la cantidad de veces que se ha ejecutado el bucle.



### Análisis de las Máquinas de Estado (Statecharts)

**`void task_test_statechart(void)`** (Ubicada en **`task_test.c`**)
Esta función representa una tarea cíclica que alimenta la pantalla LCD con datos dinámicos. Funciona evaluando un retardo de tiempo no bloqueante a través de la variable `tick`.

* En cada llamada periódica, se incrementa un contador global `p_task_test_dta->counter` y decrece `tick`.


* Cuando `tick` llega a cero, significa que se ha cumplido el periodo de espera (`DEL_TEST_XX_MAX`), por lo que la máquina envía un mensaje fijo ("Test Nro: ******") y luego formatea el valor de su contador numérico y lo envía al display invocando a `put_event_task_display()`.



```c
if (DEL_TEST_XX_MIN < p_task_test_dta->tick)
{
	p_task_test_dta->tick--;
}
else
{
	p_task_test_dta->tick = DEL_TEST_XX_MAX ;

	put_event_task_display(0, 1, "Test Nro: ******");

	snprintf(test_str, sizeof(test_str), "%lu", (p_task_test_dta->counter/DEL_TEST_XX_MAX));
	put_event_task_display(10, 1, test_str);
}

```

**`void task_display_statechart(void)`** (Ubicada en **`task_display.c`**)
Esta máquina se encarga de transferir la información almacenada en los buffers hacia los pines del hardware del LCD sin frenar la ejecución general de la aplicación. Evalúa continuamente el estado almacenado en `task_display_dta`:

* **En el estado `ST_DSP_IDLE`:** Monitorea de manera pasiva. Si detecta que la bandera está activa (`p_task_display_dta->flag == true`) por la señal `EV_DSP_UPDATE`, cambia su estado a `ST_DSP_UPDATE`.


* **En el estado `ST_DSP_UPDATE`:** Ejecuta la rutina de pintado en hardware. Baja la bandera (`flag = false`), posiciona el cursor físico al inicio de la primera fila y escribe su contenido usando `displayStringWrite()`, repite el proceso para la segunda fila, y finalmente retorna al estado `ST_DSP_IDLE`.



```c
case ST_DSP_UPDATE:
	if ((true == p_task_display_dta->flag) && (EV_DSP_UPDATE == p_task_display_dta->event))
	{
		p_task_display_dta->flag = false;
        // ... (configuración de cursor y escritura)
		displayCharPositionWrite(0, 0);
	    p_task_display_dta->row = 0;
		displayStringWrite(p_task_display_dta->ddram[p_task_display_dta->row]);
        // ... (impresión segunda línea)
		p_task_display_dta->state = ST_DSP_IDLE;
	}
	break;

```

Tabla con valores de task_dta_list[index]

| Estructura | Parámetro | Valor | Unidad |
| :--- | :--- | :--- | :--- |
| `task_dta_list[0]` | NOE | 28693 | Ejecuciones |
| `task_dta_list[0]` | LET | 2 | ciclos |
| `task_dta_list[0]` | BCET | 2 | ciclos |
| `task_dta_list[0]` | WCET | 36 | ciclos |
| `task_dta_list[1]` | NOE | 28696 | Ejecuciones |
| `task_dta_list[1]` | LET | 2 | ciclos |
| `task_dta_list[1]` | BCET | 2 | ciclos |
| `task_dta_list[1]` | WCET | 6188 | ciclos |
| Sistema | `SystemCoreClock` | 64000000 | Hz |

