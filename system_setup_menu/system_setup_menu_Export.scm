{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "attrs": {
          "name": {
            "text": "system_setup_menu Export"
          },
          "specification": {
            "text": "interface:\n    in event Enter\n    in event Next\n    in event Escape\n\n    var motor_index: integer = 0   \n    var menu_2_index: integer = 0  \n\n    var m1_power: boolean = true   \n    var m1_speed: integer = 8      \n    var m1_spin: boolean = false   \n\n    var m2_power: boolean = true\n    var m2_speed: integer = 8\n    var m2_spin: boolean = false\n\n    var temp_val_int: integer = 0\n    var temp_val_bool: boolean = false"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 340,
          "y": 40
        },
        "size": {
          "height": 60,
          "width": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "Menu_1",
            "fontSize": 11
          }
        },
        "id": "1cc9fe16-ca4e-4330-b00f-8d90a35fc93b",
        "z": 3,
        "embeds": []
      },
      {
        "position": {
          "x": -20,
          "y": 40
        },
        "size": {
          "height": 60,
          "width": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "Main",
            "fontSize": 11
          }
        },
        "id": "f410cfeb-ced9-4129-92b2-9870113056ff",
        "z": 8
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1cc9fe16-ca4e-4330-b00f-8d90a35fc93b"
        },
        "target": {
          "id": "f410cfeb-ced9-4129-92b2-9870113056ff",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "100%",
              "dy": "66.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "873c4224-6cf9-449a-bdce-013b1d6b13f6",
        "z": 9,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "f410cfeb-ced9-4129-92b2-9870113056ff",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "100%",
              "dy": "16.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "1cc9fe16-ca4e-4330-b00f-8d90a35fc93b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "0%",
              "dy": "16.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "2ff5839d-bef5-4ebe-9c5d-d198aa28a833",
        "z": 9,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -110,
          "y": 10
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "767c7bf3-f2f8-4fc8-a477-4ff86f491ac5",
        "z": 15,
        "embeds": [
          "a14517a2-9611-4195-9e2c-c75dfe3c1a6f"
        ]
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -110,
          "y": 25
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "a14517a2-9611-4195-9e2c-c75dfe3c1a6f",
        "z": 16,
        "parent": "767c7bf3-f2f8-4fc8-a477-4ff86f491ac5"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "767c7bf3-f2f8-4fc8-a477-4ff86f491ac5"
        },
        "target": {
          "id": "f410cfeb-ced9-4129-92b2-9870113056ff",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50%",
              "dy": "33.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "ec9e7ccb-24da-4f52-bbf5-367b1bb455a4",
        "z": 17,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 448,
          "y": 62.5
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "4a4e1229-dea4-4c52-a035-f5e0b437a625",
        "z": 22
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1cc9fe16-ca4e-4330-b00f-8d90a35fc93b"
        },
        "target": {
          "id": "4a4e1229-dea4-4c52-a035-f5e0b437a625"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {
              "distance": 0.45830697001381043,
              "offset": -6.000001220703126,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "467994a9-2e07-40bd-a09c-31a722447a25",
        "z": 26,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "4a4e1229-dea4-4c52-a035-f5e0b437a625"
        },
        "target": {
          "id": "1cc9fe16-ca4e-4330-b00f-8d90a35fc93b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "46.667%",
              "dy": "98.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "else / motor_index = 0"
              }
            },
            "position": {
              "distance": 0.30409486754101644,
              "offset": -20.161852968400545,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "52d51acb-2c8f-462d-b282-9687eb05c559",
        "z": 27,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 455.5,
            "y": 99
          }
        ]
      },
      {
        "position": {
          "x": 340,
          "y": 476
        },
        "size": {
          "width": 202,
          "height": 64
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "Menu_2",
            "fontSize": 11
          }
        },
        "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5",
        "z": 37
      },
      {
        "position": {
          "x": 236,
          "y": 498.5
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "0fb82e08-113a-4571-9b9c-00366511a44a",
        "z": 50
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5"
        },
        "target": {
          "id": "0fb82e08-113a-4571-9b9c-00366511a44a"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter"
              }
            },
            "position": {
              "distance": 0.48876009162147355,
              "offset": 9.999970703124973,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "bd5021e4-250e-46bd-9ccc-77b1b2f588d4",
        "z": 51,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -267,
          "y": 305
        },
        "size": {
          "width": 103,
          "height": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "Menu_3_Power",
            "fontSize": 11
          }
        },
        "id": "28490b2f-9f3f-4eb6-bb01-260c75505865",
        "z": 59,
        "embeds": [
          "f219b0bf-c232-422b-8178-46c59b7b7028"
        ]
      },
      {
        "position": {
          "x": -262,
          "y": 474
        },
        "size": {
          "width": 99,
          "height": 64
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "Menu_3_Speed",
            "fontSize": 11
          }
        },
        "id": "ad9b7990-1ba3-4141-8e62-46d54e1de571",
        "z": 61,
        "embeds": [
          "11e5e054-0d50-4cd0-b9cf-3a01a1b2e89c"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "0fb82e08-113a-4571-9b9c-00366511a44a"
        },
        "target": {
          "id": "ad9b7990-1ba3-4141-8e62-46d54e1de571",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "92.929%",
              "dy": "50%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[menu_2_index == 1] \n/ temp_val_int = (motor_index == 0 ? m1_speed : m2_speed)"
              }
            },
            "position": {
              "distance": 0.48269867478755485,
              "offset": 20,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f843d28e-8ff6-480a-913c-a81a17bf2c16",
        "z": 62,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "0fb82e08-113a-4571-9b9c-00366511a44a"
        },
        "target": {
          "id": "28490b2f-9f3f-4eb6-bb01-260c75505865",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "98.058%",
              "dy": "45%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[menu_2_index == 0] \n/ temp_val_bool = (motor_index == 0 ? m1_power : m2_power)"
              }
            },
            "position": {
              "distance": 0.6085619090192206,
              "offset": 19.088165283203125,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "35ba8d29-693f-45c5-8822-d80646288739",
        "z": 64,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 243.5,
            "y": 332
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "28490b2f-9f3f-4eb6-bb01-260c75505865"
        },
        "target": {
          "id": "28490b2f-9f3f-4eb6-bb01-260c75505865",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "38.835%",
              "dy": "85%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next / temp_val_bool = !temp_val_bool"
              }
            },
            "position": {
              "distance": 0.5877458416667685,
              "offset": 13.0159912109375,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f219b0bf-c232-422b-8178-46c59b7b7028",
        "z": 66,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -305,
            "y": 377
          }
        ],
        "parent": "28490b2f-9f3f-4eb6-bb01-260c75505865"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ad9b7990-1ba3-4141-8e62-46d54e1de571"
        },
        "target": {
          "id": "ad9b7990-1ba3-4141-8e62-46d54e1de571",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "39.394%",
              "dy": "79.688%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next / temp_val_int = (temp_val_int < 9 ? temp_val_int + 1 : 0)"
              }
            },
            "position": {
              "distance": 0.5267685462829902,
              "offset": 13.1771240234375,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "11e5e054-0d50-4cd0-b9cf-3a01a1b2e89c",
        "z": 67,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -288,
            "y": 551
          }
        ],
        "parent": "ad9b7990-1ba3-4141-8e62-46d54e1de571"
      },
      {
        "position": {
          "x": -263,
          "y": 681
        },
        "size": {
          "width": 94,
          "height": 66
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "Menu_3_Spin",
            "fontSize": 11
          }
        },
        "id": "5178e3d0-1449-458e-bf8e-ee9c4e93bdd5",
        "z": 71,
        "embeds": [
          "a4b89d66-b243-4966-a825-baf0a24b244a"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "0fb82e08-113a-4571-9b9c-00366511a44a"
        },
        "target": {
          "id": "5178e3d0-1449-458e-bf8e-ee9c4e93bdd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "88.298%",
              "dy": "71.212%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "else / temp_val_bool = (motor_index == 0 ? m1_spin : m2_spin)"
              }
            },
            "position": {
              "distance": 0.6558263932791063,
              "offset": 13,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "eeb7bb09-5e0d-434f-a0ad-38befbcf32eb",
        "z": 72,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 243.5,
            "y": 702
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "5178e3d0-1449-458e-bf8e-ee9c4e93bdd5"
        },
        "target": {
          "id": "5178e3d0-1449-458e-bf8e-ee9c4e93bdd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "45.745%",
              "dy": "92.424%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next / temp_val_bool = !temp_val_bool"
              }
            },
            "position": {
              "distance": 0.5077802653278387,
              "offset": 13.085378261543818,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "a4b89d66-b243-4966-a825-baf0a24b244a",
        "z": 73,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -305,
            "y": 766
          }
        ],
        "parent": "5178e3d0-1449-458e-bf8e-ee9c4e93bdd5"
      },
      {
        "position": {
          "x": -782,
          "y": 315
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "b4ba886c-186d-4921-8852-e2bf62838ec1",
        "z": 78
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "28490b2f-9f3f-4eb6-bb01-260c75505865"
        },
        "target": {
          "id": "b4ba886c-186d-4921-8852-e2bf62838ec1"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter"
              }
            },
            "position": {
              "distance": 0.504000210715768,
              "offset": 9.000001220703098,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "88044bc2-76e6-4d86-b52e-8358f0eac1ca",
        "z": 79,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -724,
          "y": 480
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "34930d72-3d35-49ea-bd5f-b2c08bc10fb5",
        "z": 82
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ad9b7990-1ba3-4141-8e62-46d54e1de571"
        },
        "target": {
          "id": "34930d72-3d35-49ea-bd5f-b2c08bc10fb5"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter"
              }
            },
            "position": {
              "distance": 0.49552539398966927,
              "offset": 13.000001220703098,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "0db4f706-0d00-4dc4-9838-7c8fcee0bd80",
        "z": 83,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 716,
          "y": 513
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "472b9ee8-35eb-4821-803f-46bccdd7a238",
        "z": 86
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5"
        },
        "target": {
          "id": "472b9ee8-35eb-4821-803f-46bccdd7a238"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Next"
              }
            },
            "position": {
              "distance": 0.4999998121272603,
              "offset": -7.000001220703097,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b0e99bda-16d9-4b9c-9aaa-6d65823164fd",
        "z": 87,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "472b9ee8-35eb-4821-803f-46bccdd7a238"
        },
        "target": {
          "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "78.333%",
              "dy": "0%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[menu_2_index == 0] / menu_2_index = 1"
              }
            },
            "position": {
              "distance": 0.40935913831579185,
              "offset": 15.815887451171875,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "6f42197d-0afe-4387-adc4-7a781d094874",
        "z": 87,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 723.5,
            "y": 443
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "472b9ee8-35eb-4821-803f-46bccdd7a238"
        },
        "target": {
          "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "98.515%",
              "dy": "31.25%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[menu_2_index == 1] / menu_2_index = 2"
              }
            },
            "position": {
              "distance": 0.20063477491037693,
              "offset": 114.2861328125,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "06fd4527-4b60-43c4-a52c-75ba5ccb7ac8",
        "z": 88,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 785,
            "y": 496
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "472b9ee8-35eb-4821-803f-46bccdd7a238"
        },
        "target": {
          "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "96.04%",
              "dy": "98.438%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "else / menu_2_index = 0"
              }
            },
            "position": {
              "distance": 0.38154708875198023,
              "offset": -10.999999999999943,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f3dad2b8-f48c-4935-85a6-3017224dca0f",
        "z": 89,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 723.5,
            "y": 590
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "b4ba886c-186d-4921-8852-e2bf62838ec1"
        },
        "target": {
          "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "89.109%",
              "dy": "98.438%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "else / m2_power = temp_val_bool"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "8ac9b31c-9cc4-42f2-ac92-c88ca7e869bf",
        "z": 90,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -413,
            "y": 1088
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "34930d72-3d35-49ea-bd5f-b2c08bc10fb5"
        },
        "target": {
          "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "73.267%",
              "dy": "98.438%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "else / m2_speed = temp_val_int"
              }
            },
            "position": {
              "distance": 0.49720877693667626,
              "offset": -10,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "7884f9e4-2629-402d-b117-0964adea1dbb",
        "z": 92,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -502,
            "y": 994
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "b4ba886c-186d-4921-8852-e2bf62838ec1"
        },
        "target": {
          "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "84.653%",
              "dy": "100%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[motor_index == 0] / m1_power = temp_val_bool"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "7c046230-3a89-4f9e-9a9d-48549babb351",
        "z": 93,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -403,
            "y": 1048
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "34930d72-3d35-49ea-bd5f-b2c08bc10fb5"
        },
        "target": {
          "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "68.317%",
              "dy": "93.75%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[motor_index == 0] / m1_speed = temp_val_int"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "406b8ab8-9106-4f14-ad0e-767f4ab7631d",
        "z": 94,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -685,
            "y": 960
          },
          {
            "x": -482,
            "y": 960
          }
        ]
      },
      {
        "position": {
          "x": -627,
          "y": 681
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "1003fab8-19ef-4c49-a6f4-edf6e664f496",
        "z": 95
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "5178e3d0-1449-458e-bf8e-ee9c4e93bdd5"
        },
        "target": {
          "id": "1003fab8-19ef-4c49-a6f4-edf6e664f496"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter"
              }
            },
            "position": {
              "distance": 0.502865533861256,
              "offset": 11.999970703124973,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b2c7f7c2-b651-4f11-8b44-ae36ef1a79a8",
        "z": 96,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1003fab8-19ef-4c49-a6f4-edf6e664f496"
        },
        "target": {
          "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "44.059%",
              "dy": "89.063%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[motor_index == 0] / m1_spin = temp_val_bool"
              }
            },
            "position": {
              "distance": 0.5127637110845749,
              "offset": -13,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "257a8beb-e614-4b1e-9ef9-0527045dde11",
        "z": 98,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -100,
            "y": 842
          },
          {
            "x": 429,
            "y": 842
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1003fab8-19ef-4c49-a6f4-edf6e664f496"
        },
        "target": {
          "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "54.455%",
              "dy": "92.188%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "else / m2_spin = temp_val_bool"
              }
            },
            "position": {
              "distance": 0.4932581309741759,
              "offset": -13,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "16987671-3c46-4581-8901-6adae77c2f2e",
        "z": 99,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 450,
            "y": 877
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "28490b2f-9f3f-4eb6-bb01-260c75505865"
        },
        "target": {
          "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "7.426%",
              "dy": "35.938%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "07f67d6e-9c9b-43f3-a080-8f04566c4722",
        "z": 100,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 355,
            "y": 365
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ad9b7990-1ba3-4141-8e62-46d54e1de571"
        },
        "target": {
          "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "21.782%",
              "dy": "70.313%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {
              "distance": 0.49801192842942343,
              "offset": 11,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "c8b3d3cc-77de-4abf-aa5a-5a78a782aefc",
        "z": 101,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "5178e3d0-1449-458e-bf8e-ee9c4e93bdd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "54.255%",
              "dy": "16.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "35.149%",
              "dy": "76.563%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {
              "distance": 0.4762049939553845,
              "offset": -11,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "4cee0c15-845b-480c-a687-04d56b1a8bb2",
        "z": 102,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -166,
            "y": 645
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5"
        },
        "target": {
          "id": "1cc9fe16-ca4e-4330-b00f-8d90a35fc93b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "86.667%",
              "dy": "98.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Escape"
              }
            },
            "position": {
              "distance": 0.51875,
              "offset": 20,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "7cab87f0-31b8-4343-b05d-984e7ab4ff07",
        "z": 103,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1cc9fe16-ca4e-4330-b00f-8d90a35fc93b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "56.667%",
              "dy": "100%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "e4afc9d1-80b5-4b81-b201-a9eb1d84dbd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "16.667%",
              "dy": "0%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "Enter"
              }
            },
            "position": {
              "distance": 0.4522278971465023,
              "offset": 23.12445068359375,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "6e7e53cd-d953-4d34-a4d8-73335f62ffc3",
        "z": 104,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "4a4e1229-dea4-4c52-a035-f5e0b437a625"
        },
        "target": {
          "id": "1cc9fe16-ca4e-4330-b00f-8d90a35fc93b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "61.667%",
              "dy": "10%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[motor_index==0] / motor_index=1"
              }
            },
            "position": {
              "distance": 0.5000000765904379,
              "offset": 12,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "77216ed9-bc72-49b6-8de4-b00761835ca9",
        "z": 105,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 455.5,
            "y": 16
          },
          {
            "x": 411,
            "y": 16
          }
        ]
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "SystemSetupMenu",
          "statemachinePrefix": "systemSetupMenu",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": false,
          "exitState": false,
          "generic": false
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}