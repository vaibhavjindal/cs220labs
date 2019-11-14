`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:28 02/11/2019 
// Design Name: 
// Module Name:    module_2 
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
module module_2(clk,rotation_event,rotation_direction,led0,led1,led2,led3,led4,led5,led6,led7);
	input clk,rotation_event,rotation_direction;
	output led0,led1,led2,led3,led4,led5,led6,led7;
	reg led0,led1,led2,led4,led5,led6,led7;
	reg led3=1;
	reg prev_rotation_event=1;
	
	always @(posedge clk) begin
		prev_rotation_event<=rotation_event;
		if(prev_rotation_event==0&&rotation_event==1) begin
			if(rotation_direction==0) begin
				led0<=led1;
				led1<=led2;
				led2<=led3;
				led3<=led4;
				led4<=led5;
				led5<=led6;
				led6<=led7;
				led7<=led0;
			end
			if(rotation_direction==1) begin
				led0<=led7;
				led1<=led0;
				led2<=led1;
				led3<=led2;
				led4<=led3;
				led5<=led4;
				led6<=led5;
				led7<=led6;
			end
		end
	end
endmodule