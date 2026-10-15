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
            "text": "task_display Export"
          },
          "specification": {
            "text": "@EventDriven\ninterface:\n    in event EV_DSP_UPDATE"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 160,
          "y": -100
        },
        "size": {
          "height": 60,
          "width": 90
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_DSP_UPDATE",
            "fontSize": 11
          }
        },
        "id": "8c92858b-41d3-4c03-9427-c5ea967448cb",
        "z": 6
      },
      {
        "position": {
          "x": -180,
          "y": -100
        },
        "size": {
          "height": 60,
          "width": 90
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_DSP_IDLE",
            "fontSize": 11
          }
        },
        "id": "b234249d-c5a7-4b71-9d54-b07919680d9d",
        "z": 7
      },
      {
        "position": {
          "x": -260,
          "y": -80
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "de7c9231-1b6f-47c9-a422-658a47d78577",
        "z": 14,
        "embeds": [
          "718971ac-dc92-441f-a49a-a2740ba703ab"
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
          "x": -260,
          "y": -65
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "718971ac-dc92-441f-a49a-a2740ba703ab",
        "z": 15,
        "parent": "de7c9231-1b6f-47c9-a422-658a47d78577"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "de7c9231-1b6f-47c9-a422-658a47d78577"
        },
        "target": {
          "id": "b234249d-c5a7-4b71-9d54-b07919680d9d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "11.111%",
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
        "id": "41566684-44e8-44a8-b733-b772e2bfdb0f",
        "z": 16,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "b234249d-c5a7-4b71-9d54-b07919680d9d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "44.444%",
              "dy": "0%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "8c92858b-41d3-4c03-9427-c5ea967448cb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "55.556%",
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
                "text": "EV_DSP_UPDATE"
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
        "id": "7bbd66ba-41f5-405f-b937-778f01a1179f",
        "z": 17,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 40,
            "y": -140
          },
          {
            "x": 60,
            "y": -140
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "8c92858b-41d3-4c03-9427-c5ea967448cb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "55.556%",
              "dy": "83.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "b234249d-c5a7-4b71-9d54-b07919680d9d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "44.444%",
              "dy": "83.333%",
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
                "text": "EV_DSP_UPDATE"
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
        "id": "f9b40dbc-7dad-4da1-9795-377acd4f63b5",
        "z": 18,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 40,
            "y": 10
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
          "moduleName": "TaskDisplay",
          "statemachinePrefix": "taskDisplay",
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