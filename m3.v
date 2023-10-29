// Priority C

module M3(X1, X2, C, E, PC);

input[8:0] X1, X2, C, E;
output PC;

wire [8:0] w1, w2, w3;

assign w1 = ~E;
assign w2 = ~(w1 | C);
assign w3 = ~(X1 & X2 & w2);
assign PC = ~&w3;

endmodule