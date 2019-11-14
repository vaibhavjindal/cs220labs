`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:56 01/21/2019 
// Design Name: 
// Module Name:    five_four_bit_adder
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module five_four_bit_adder(pb1,pb2,pb3,pb4,rpb,y,z);
input[3:0] y;
output [6:0] z;
wire [6:0] z;
input pb1;
input pb2;
input pb3;
input pb4;
input rpb;

wire [4:0]X;
wire [4:0]Y;
wire [5:0]Z;

reg [3:0] A=0;
reg [3:0] B=0;
reg [3:0] C=0;
reg [3:0] D=0;
reg [3:0] E=0;

always @(posedge pb1) begin
	A[3:0]<=y[3:0];
end

always @(posedge pb2) begin
	B[3:0]<=y[3:0];
end

always @(posedge pb3) begin
	C[3:0]<=y[3:0];
end

always @(posedge pb4) begin
	D[3:0]<=y[3:0];
end

always @(posedge rpb) begin
	E[3:0]<=y[3:0];
end
	
four_bit_adder FB0(A,B,X);
four_bit_adder FB1(C,D,Y);
five_bit_adder FiB(X,Y,Z);
six_bit_adder SB(Z,{0,0,E},z);

endmodule