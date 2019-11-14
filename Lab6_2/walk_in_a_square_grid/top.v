`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:01:57 03/04/2019 
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
module top(clk,ROT_A,ROT_B,inp1,inp2,inp3,inp4,sumx,sumy);
	input clk,ROT_A,ROT_B,inp1,inp2,inp3,inp4;
	output [4:0]sumx;
	output [4:0]sumy;
	wire [4:0]sumx;
	wire [4:0]sumy;
	
	rot_event_detect R1(clk,ROT_A,ROT_B,rotation_event);
	detect_edge_rise D1(clk,rotation_event,inp1,inp2,inp3,inp4,sumx,sumy);

endmodule
