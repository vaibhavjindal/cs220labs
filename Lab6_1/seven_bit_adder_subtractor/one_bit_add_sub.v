`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:47 02/25/2019 
// Design Name: 
// Module Name:    one_bit_add_sub 
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
module one_bit_add_sub(a,b,cin,add_sub,sum,cout);
	input a,b,cin,add_sub;
	output sum,cout;
	wire sum,cout;
	wire b_xor;
	
	assign b_xor=b^add_sub;
	assign sum=a^b_xor^cin;
	assign cout=(a&b_xor)|(b_xor&cin)|(cin&a);

endmodule
