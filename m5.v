// Channel Decoder

module M5(I, Chan);

input[8:0] I;
output[3:0] Chan;

wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10;

assign w1 = ~I[8];
assign w2 = &I[7:0];
assign Chan[3] = ~(w1 | w2);

assign w3 = ~I[1];
assign w4 = ~I[2];
assign w5 = ~I[3];
assign w6 = ~I[5];

assign w7 = ~(w6 & I[6]);
assign w8 = ~(w4 & I[4] & I[5]);
assign w9 = ~(w5 & I[4] & I[5] & I[6]);
assign w10 = ~(w3 & I[2] & I[5] & I[6]);

assign Chan[2] = ~(I[4] & I[6] & I[7] & w7);
assign Chan[1] = ~(I[6] & I[7] & w8 & w9);
assign Chan[0] = ~(I[7] & w7 & w10 & w9);

endmodule