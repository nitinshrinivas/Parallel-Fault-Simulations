// Priority A

module M1(input[8:0] A, input [8:0] E, output PA, output[8:0] X1);

wire [8:0] w1, w2;

assign w1 = ~A;
assign w2 = ~(w1 & E);
assign PA = ~&w2;
assign X1 = w2 ^ {9{PA}};

endmodule