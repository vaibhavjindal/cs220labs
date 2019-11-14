`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:27 02/25/2019 
// Design Name: 
// Module Name:    module_top 
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
module module_top(clk,ROT_A,ROT_B,inp1,inp2,inp3,inp4,sum,overflow);
	input clk,ROT_A,ROT_B,inp1,inp2,inp3,inp4;
	output [6:0]sum;
	output overflow;
	wire [6:0]sum;
	wire overflow;
	wire rotation_event;
	
	rot_event_detect R1(clk,ROT_A,ROT_B,rotation_event);
	detect_rising_edge D1(clk,rotation_event,inp1,inp2,inp3,inp4,sum,overflow);

endmodule
