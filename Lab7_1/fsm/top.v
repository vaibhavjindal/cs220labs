`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:50 03/04/2019 
// Design Name: 
// Module Name:    top 
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
module top(clk,ROT_A,ROT_B,y,state);
	input clk,ROT_A,ROT_B;
	input [1:0]y;
	output [3:0]state;
	wire [3:0]state;
	
	rot_event_detect R1(clk,ROT_A,ROT_B,rotation_event);
	module_1 D1(y,clk,rotation_event,state);

endmodule
