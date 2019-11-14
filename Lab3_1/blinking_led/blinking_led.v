`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:16:12 01/27/2019 
// Design Name: 
// Module Name:    blinking_led 
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
`define OFF_TIME 25000000
`define ON_TIME (`OFF_TIME*2)

module blinking_led(clk,led0);
	input clk;
	output led0;
	
	reg led0=1;
	reg [25:0]counter=0;
	
	always @(posedge clk) begin
		counter<=counter+1;
		if(counter== `OFF_TIME)begin
			led0<=0;
		end 
		else if(counter== `ON_TIME)begin
			led0<=1;
			counter<=0;
		end
	end
endmodule