`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:57 02/25/2019 
// Design Name: 
// Module Name:    five_bit_add_sub 
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
module five_bit_add_sub(a,b,add_sub,sum);
	input a,b;
	input add_sub;
	output [4:0]sum;
	wire [4:0]sum;
	wire [2:0]carry;
	
	one_bit_add_sub M0(a[0],b[0],add_sub,add_sub,sum[0],carry[0]);
	one_bit_add_sub M1(a[1],b[1],carry[0],add_sub,sum[1],carry[1]);
	one_bit_add_sub M2(a[2],b[2],carry[1],add_sub,sum[2],carry[2]);
	one_bit_add_sub M3(a[3],b[3],carry[2],add_sub,sum[3],sum[4]);
	

endmodule
