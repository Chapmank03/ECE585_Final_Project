module hextobinary(
input [3:0] hex,
output reg [3:0] binary
);

always @(hex)
case(hex)
4'h0: binary = 4'b0000;
4'h1: binary = 4'b0001;
4'h2: binary = 4'b0010;
4'h3: binary = 4'b0011;
4'h4: binary = 4'b0100;
4'h5: binary = 4'b0101;
4'h6: binary = 4'b0110;
4'h7: binary = 4'b0111;
4'h8: binary = 4'b1000;
4'h9: binary = 4'b1001;
4'ha: binary = 4'b1010;
4'hb: binary = 4'b1011;
4'hc: binary = 4'b1100;
4'hd: binary = 4'b1101;
4'he: binary = 4'b1110;
4'hf: binary = 4'b1111;
endcase

endmodule
