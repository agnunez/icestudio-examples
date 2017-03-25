{
  "version": "1.1",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "16ca4ab4-2721-4706-aaba-c0ffd2c4bd44",
          "type": "basic.output",
          "data": {
            "name": "out",
            "range": "[15:0]",
            "pins": [
              {
                "index": "15",
                "name": "TR3",
                "value": "112"
              },
              {
                "index": "14",
                "name": "TR6",
                "value": "115"
              },
              {
                "index": "13",
                "name": "TR8",
                "value": "117"
              },
              {
                "index": "12",
                "name": "TR9",
                "value": "118"
              },
              {
                "index": "11",
                "name": "TR10",
                "value": "119"
              },
              {
                "index": "10",
                "name": "PMOD1",
                "value": "78"
              },
              {
                "index": "9",
                "name": "PMOD2",
                "value": "79"
              },
              {
                "index": "8",
                "name": "PMOD3",
                "value": "80"
              },
              {
                "index": "7",
                "name": "PMOD4",
                "value": "81"
              },
              {
                "index": "6",
                "name": "PMOD8",
                "value": "88"
              },
              {
                "index": "5",
                "name": "PMOD7",
                "value": "87"
              },
              {
                "index": "4",
                "name": "D5",
                "value": "95"
              },
              {
                "index": "3",
                "name": "D4",
                "value": "96"
              },
              {
                "index": "2",
                "name": "D3",
                "value": "97"
              },
              {
                "index": "1",
                "name": "D2",
                "value": "98"
              },
              {
                "index": "0",
                "name": "D1",
                "value": "99"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 920,
            "y": 56
          }
        },
        {
          "id": "9666115a-aff5-4be6-ab10-caf2d924bc47",
          "type": "basic.constant",
          "data": {
            "name": "Random_Sum",
            "value": "18231",
            "local": false
          },
          "position": {
            "x": 472,
            "y": 152
          }
        },
        {
          "id": "a8e8aa1e-4432-4f07-baac-309451d0ec9b",
          "type": "basic.constant",
          "data": {
            "name": "initialValue",
            "value": "1",
            "local": false
          },
          "position": {
            "x": 664,
            "y": 152
          }
        },
        {
          "id": "e2e6f942-90b5-480b-a058-91e0a92a9ac5",
          "type": "7c0ae704fe4f7176c6e19f8639bc59e42c836297",
          "position": {
            "x": 288,
            "y": 296
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "01eb2b73-ee18-40b2-865e-dd5dcc34fc70",
          "type": "fcd9e63dce9246c4517577cf70c3b5ececdbf8c5",
          "position": {
            "x": 576,
            "y": 296
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "ed649f1f-aa1e-4dab-809b-6644747abdeb",
          "type": "basic.info",
          "data": {
            "info": "\n With Pseudo Random you can generate one pseudo Random number in \n function 2 parameters ( R, i ).\n R = number to sum\n i = initial value of the number\n Example:\n  if R=0  and i = 7 --> Generate the number 7 forever\n     R=18343 and i = 7 (Num=i)--> Generate diferents numbers each clock\n            Num = Num + R;\n        \n"
          },
          "position": {
            "x": 208,
            "y": 392
          },
          "size": {
            "width": 656,
            "height": 224
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "9666115a-aff5-4be6-ab10-caf2d924bc47",
            "port": "constant-out"
          },
          "target": {
            "block": "01eb2b73-ee18-40b2-865e-dd5dcc34fc70",
            "port": "9666115a-aff5-4be6-ab10-caf2d924bc47"
          }
        },
        {
          "source": {
            "block": "e2e6f942-90b5-480b-a058-91e0a92a9ac5",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "01eb2b73-ee18-40b2-865e-dd5dcc34fc70",
            "port": "1131d05a-0312-427c-98bb-72230e09415a"
          }
        },
        {
          "source": {
            "block": "01eb2b73-ee18-40b2-865e-dd5dcc34fc70",
            "port": "7f98d7d3-1dea-4411-8679-9397c8401927"
          },
          "target": {
            "block": "16ca4ab4-2721-4706-aaba-c0ffd2c4bd44",
            "port": "in"
          },
          "size": 16
        },
        {
          "source": {
            "block": "a8e8aa1e-4432-4f07-baac-309451d0ec9b",
            "port": "constant-out"
          },
          "target": {
            "block": "01eb2b73-ee18-40b2-865e-dd5dcc34fc70",
            "port": "00eb7935-02c1-4e71-9301-17113d267883"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": -4,
        "y": 2
      },
      "zoom": 1
    }
  },
  "dependencies": {
    "7c0ae704fe4f7176c6e19f8639bc59e42c836297": {
      "package": {
        "name": "Bomba_x1",
        "version": "0.1",
        "description": "Bombeo de bits. Una pulsación por segundo",
        "author": "Juan Gonzalez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22113.28%22%20height=%2281.27%22%20viewBox=%220%200%20106.20044%2076.190928%22%3E%3Ctext%20y=%22443.842%22%20x=%22-155.758%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2240.397%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%20transform=%22translate(238.359%20-394.146)%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22443.842%22%20x=%22-155.758%22%20font-weight=%22700%22%20font-size=%2223.084%22%3E1%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M40.85%2073.768c-1.314-2.254-3.351-4.461-7.211-7.812-2.091-1.815-3.363-2.823-10.605-8.401-5.676-4.373-8.508-6.799-11.79-10.101-3.28-3.302-5.208-5.932-6.862-9.361-1.056-2.19-1.782-4.3-2.234-6.492-.573-2.785-.651-3.728-.648-7.829.004-5.381.182-6.276%201.954-9.866%201.317-2.666%202.317-4.07%204.4-6.179C9.877%205.68%2011.19%204.75%2014.03%203.35c3.155-1.556%205.437-1.964%2010.138-1.813%203.653.118%204.99.48%207.886%202.142%204.558%202.615%208.095%206.813%209.074%2010.77.16.647.325%201.177.367%201.177.042%200%20.411-.757.82-1.682%201.392-3.145%202.685-5.064%204.739-7.038C53.343.86%2063.258-.233%2071.275%204.234c3.274%201.824%205.938%204.48%208.002%207.978%201.625%202.753%202.456%206.41%202.598%2011.433.205%207.277-1.13%2012.32-4.683%2017.694-1.41%202.133-2.453%203.425-4.409%205.461-3.156%203.287-6.002%205.703-12.721%2010.798-4.24%203.215-6.753%205.282-10.39%208.55-2.915%202.618-7.431%207.176-7.866%207.938-.19.333-.362.605-.382.605-.02%200-.278-.415-.574-.923z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%223%22/%3E%3Cpath%20d=%22M77.277%2053.462h25.759%22%20fill=%22none%22%20stroke=%22red%22%20stroke-width=%223%22/%3E%3Ctext%20y=%22463.171%22%20x=%22-164.04%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2227.48%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%20transform=%22translate(238.359%20-394.146)%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22463.171%22%20x=%22-164.04%22%20font-weight=%22700%22%20font-size=%2215.703%22%3ESeg%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "8709aff2-3586-4a6f-b6c5-d8751d3bc45d",
              "type": "basic.code",
              "data": {
                "code": "//-- module bomba_x1(input wire clk, output wire clk_1hz)\n\n//-- Bombeo de bits a 1Hz (1 pulsacion por segundo)\n\n//-- Constante para dividir y obtener una frecuencia de 2Hz\nlocalparam M = 6000000;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\n//-- Contador modulo M. tras M pulsos de relog vuelve a 0\nalways @(posedge clk)\n  divcounter <= (divcounter == M - 1) ? 0 : divcounter + 1;\n\n//-- Obtener la señal de 2Hz. La señal no tiene ciclo del 50%\nwire clk_2hz;\nassign clk_2hz = divcounter[N-1]; \n\n//-- Usamos un biestable T para dividir entre 2 y obtener una señal\n//-- de 1Hz y ciclo del 50%\nreg T = 0;\nalways @(posedge clk_2hz)\n  T <= ~T;\n  \n//-- Señal de salida de 1Hz y ciclo del 50%\nassign clk_1hz = T;\n  \n//endmodule\n \n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk_1hz"
                    }
                  ]
                }
              },
              "position": {
                "x": 192,
                "y": 24
              },
              "size": {
                "width": 592,
                "height": 320
              }
            },
            {
              "id": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 0,
                "y": 152
              }
            },
            {
              "id": "7e07d449-6475-4839-b43e-8aead8be2aac",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 856,
                "y": 152
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "8709aff2-3586-4a6f-b6c5-d8751d3bc45d",
                "port": "clk_1hz"
              },
              "target": {
                "block": "7e07d449-6475-4839-b43e-8aead8be2aac",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
                "port": "out"
              },
              "target": {
                "block": "8709aff2-3586-4a6f-b6c5-d8751d3bc45d",
                "port": "clk"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 20,
            "y": 0
          },
          "zoom": 1
        }
      }
    },
    "fcd9e63dce9246c4517577cf70c3b5ececdbf8c5": {
      "package": {
        "name": "Pseudo Random",
        "version": "1.0",
        "description": "Generate a Pseudo Random number  of 16 bits",
        "author": "José Picó",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9666115a-aff5-4be6-ab10-caf2d924bc47",
              "type": "basic.constant",
              "data": {
                "name": "R",
                "value": "",
                "local": false
              },
              "position": {
                "x": 456,
                "y": 88
              }
            },
            {
              "id": "00eb7935-02c1-4e71-9301-17113d267883",
              "type": "basic.constant",
              "data": {
                "name": "i",
                "value": "",
                "local": false
              },
              "position": {
                "x": 704,
                "y": 88
              }
            },
            {
              "id": "94078c1a-e2de-4647-9a09-d980a81fff9b",
              "type": "basic.code",
              "data": {
                "code": "\n// To generate pseudoaleatory numbers\n// each posedge clock ,output number changes\n// pseudo-Randomly in function of Random_Sum\n// parameter\n\nreg[15:0] num=Initial_Value;\n\nlocalparam x = Random_Sum;\n\nalways @(posedge clk)\n num <= num + x;",
                "params": [
                  {
                    "name": "Random_Sum"
                  },
                  {
                    "name": "Initial_Value"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    }
                  ],
                  "out": [
                    {
                      "name": "num",
                      "range": "[15:0]",
                      "size": 16
                    }
                  ]
                }
              },
              "position": {
                "x": 376,
                "y": 200
              },
              "size": {
                "width": 496,
                "height": 272
              }
            },
            {
              "id": "1131d05a-0312-427c-98bb-72230e09415a",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": 184,
                "y": 304
              }
            },
            {
              "id": "7f98d7d3-1dea-4411-8679-9397c8401927",
              "type": "basic.output",
              "data": {
                "name": "Num",
                "range": "[15:0]",
                "size": 16
              },
              "position": {
                "x": 976,
                "y": 304
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9666115a-aff5-4be6-ab10-caf2d924bc47",
                "port": "constant-out"
              },
              "target": {
                "block": "94078c1a-e2de-4647-9a09-d980a81fff9b",
                "port": "Random_Sum"
              }
            },
            {
              "source": {
                "block": "94078c1a-e2de-4647-9a09-d980a81fff9b",
                "port": "num"
              },
              "target": {
                "block": "7f98d7d3-1dea-4411-8679-9397c8401927",
                "port": "in"
              },
              "size": 16
            },
            {
              "source": {
                "block": "1131d05a-0312-427c-98bb-72230e09415a",
                "port": "out"
              },
              "target": {
                "block": "94078c1a-e2de-4647-9a09-d980a81fff9b",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "00eb7935-02c1-4e71-9301-17113d267883",
                "port": "constant-out"
              },
              "target": {
                "block": "94078c1a-e2de-4647-9a09-d980a81fff9b",
                "port": "Initial_Value"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -4,
            "y": 3
          },
          "zoom": 1
        }
      }
    }
  }
}