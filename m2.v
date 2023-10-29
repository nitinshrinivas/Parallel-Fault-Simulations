// Priority B

module M2(X1, B, E, PB, X2);

input[8:0] X1, B, E;
output PB;
output[8:0] X2;

wire[8:0] w1, w2, w3;

assign w1 = ~ E;
assign w2 = ~ (w1 | B);
assign w3 = ~ (X1 & w2);
assign PB = ~ &w3;
assign X2 = w3 ^ {9{PB}};

endmodule