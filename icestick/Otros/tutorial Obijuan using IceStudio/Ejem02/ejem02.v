// Code generated by Icestudio 0.3.0-rc-dev
// Wed, 08 Mar 2017 23:48:52 GMT

`default_nettype none

module main (
 output [3:0] vba3212,
 output [0:0] vinit
);
 wire [0:3] w0;
 assign vba3212 = w0;
 main_v5ef7b7 v5ef7b7 (
  .data(w0)
 );
 assign vinit = 1'b0;
endmodule

module main_v5ef7b7 (
 output [3:0] data
);
 
  //-- La salida del modulo son 4 cables
  wire [3:0] data;
 
  //-- Sacar el valor por el bus de salida
  assign data = 4'b0110; //-- 4'hA
 
endmodule
