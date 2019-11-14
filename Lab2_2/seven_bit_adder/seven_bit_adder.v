`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:56 01/21/2019 
// Design Name: 
// Module Name:    seven_bit_adder 
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
module seven_bit_adder(pb1,pb2,pb3,pb4,y,z,cout
    );
input[3:0] y;
output [6:0] z;
wire [6:0] z;
input pb1;
input pb2;
input pb3;
input pb4;
output cout;
wire cout;
wire [5:0]carry;

reg [6:0] A=0;
reg [6:0] B=0;

always @(posedge pb1) begin
	A[3:0]<=y[3:0];
end

always @(posedge pb2) begin
	A[6:4]<=y[2:0];
end

always @(posedge pb3) begin
	B[3:0]<=y[3:0];
end

always @(posedge pb4) begin
	B[6:4]<=y[2:0];
end
	
full_adder FA0(A[0],B[0],1'b0,z[0],carry[0]);
full_adder FA1(A[1],B[1],carry[0],z[1],carry[1]);
full_adder FA2(A[2],B[2],carry[1],z[2],carry[2]);
full_adder FA3(A[3],B[3],carry[2],z[3],carry[3]);
full_adder FA4(A[4],B[4],carry[3],z[4],carry[4]);
full_adder FA5(A[5],B[5],carry[4],z[5],carry[5]);
full_adder FA6(A[6],B[6],carry[5],z[6],cout);

endmodule