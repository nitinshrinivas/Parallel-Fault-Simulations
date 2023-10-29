// Channel Encoder

module M4(A, B, C, PA, PB, PC, E, I);

input[8:0] A, B, C, E;
input PA, PB, PC;
output [8:0] I;

wire[8:0] w1, w2, w3;

assign w1 = ~(A & {9{PA}});
assign w2 = ~(B & {9{PB}});
assign w3 = ~(C & {9{PC}});

assign I = ~(w1 & w2 & w3 & E);

endmodule