`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:23:26 01/24/2019 
// Design Name: 
// Module Name:    eight_bit_comp 
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
module eight_bit_comp(inp,pb1,pb2,pb3,pb4,l,g,e
    );
input [3:0] inp;
input pb1,pb2,pb3,pb4;
output l,g,e;
wire l,g,e;

reg [7:0]A=8'b00000000;
reg [7:0]B=8'b00000000;

wire [6:0] li;
wire [6:0] gi;
wire [6:0] ei;
 
always @(posedge pb1) begin
	A[3:0]<=inp;
end

always @(posedge pb2) begin
	A[7:4]<=inp;
end

always @(posedge pb3) begin
	B[3:0]<=inp;
end

always @(posedge pb4) begin
	B[7:4]<=inp;
end

comparator C7(A[7],B[7],1'b0,1'b0,1'b1,li[6],gi[6],ei[6]);
comparator C6(A[6],B[6],li[6],gi[6],ei[6],li[5],gi[5],ei[5]);
comparator C5(A[5],B[5],li[5],gi[5],ei[5],li[4],gi[4],ei[4]);
comparator C4(A[4],B[4],li[4],gi[4],ei[4],li[3],gi[3],ei[3]);
comparator C3(A[3],B[3],li[3],gi[3],ei[3],li[2],gi[2],ei[2]);
comparator C2(A[2],B[2],li[2],gi[2],ei[2],li[1],gi[1],ei[1]);
comparator C1(A[1],B[1],li[1],gi[1],ei[1],li[0],gi[0],ei[0]);
comparator C0(A[0],B[0],li[0],gi[0],ei[0],l,g,e);


endmodule