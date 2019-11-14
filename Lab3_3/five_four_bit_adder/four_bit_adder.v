`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:48:03 01/27/2019 
// Design Name: 
// Module Name:    four_bit_adder 
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
module four_bit_adder(a,b,res);
	input [3:0]a;
	input [3:0]b;
	output [4:0]res;
	wire [4:0]res;
	wire [2:0]carry;
	
	full_adder FA0(a[0],b[0],0'b0,res[0],carry[0]);
	full_adder FA1(a[1],b[1],carry[0],res[1],carry[1]);
	full_adder FA2(a[2],b[2],carry[1],res[2],carry[2]);
	full_adder FA3(a[3],b[3],carry[2],res[3],res[4]);

endmodule