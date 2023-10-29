`include "m1.v"
`include "m2.v"
`include "m3.v"
`include "m4.v"
`include "m5.v"

module ISCAS_85_432();

input[8:0] A, B, C, E;
output PA, PB, PC;
output[3:0] Chan;

wire[8:0] X1, X2, I;

M1(A, E, PA, X1);
M2(X1, B, E, PB, X2);
M3(X1, X2, C, E, PC);
M4(A, B, C, PA, PB, PC, E, I);
M5(I, Chan);

endmodule