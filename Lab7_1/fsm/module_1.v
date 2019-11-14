`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:15 03/04/2019 
// Design Name: 
// Module Name:    module_1 
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

`define TIME 100000000
module module_1(y,clk,rotation_event,state);
	input [1:0]y;
	input clk,rotation_event;
	output [4:0] state;
	reg [4:0] state=0;
	reg [2:0] microcode[0:12];
	reg [3:0] dr1[0:3];
	reg [3:0] dr2[0:3];
	reg prev_rotation_event;
	reg [26:0] counter=0;
	reg [1:0]prev_inp=0;
	
	initial begin
		microcode[0]=0;
		microcode[1]=0;
		microcode[2]=0;
		microcode[3]=1;
		microcode[4]=2;
		microcode[5]=2;
		microcode[6]=2;
		microcode[7]=0;
		microcode[8]=0;
		microcode[9]=0;
		microcode[10]=3;
		microcode[11]=4;
		microcode[12]=4;
		dr1[0]=4;
		dr1[1]=5;
		dr1[2]=6;
		dr1[3]=6;
		dr2[0]=11;
		dr2[1]=12;
		dr2[2]=12;
		dr2[3]=12;
	end
	
	always @(posedge clk) begin
		prev_rotation_event<=rotation_event;
		if(prev_rotation_event==0&&rotation_event==1) begin
			prev_inp<=y;
			if(microcode[state]==0) begin
				state<=state+1;
			end
			if(microcode[state]==1) begin
				state<=dr1[y];
			end
			if(microcode[state]==2) begin
				state<=7;
			end
			if(microcode[state]==3) begin
				state<=dr2[y];
			end
			if(microcode[state]==4) begin
				state<=0;
			end
			counter<=0;
		end
		else if (counter==`TIME) begin
			counter<=0;
			if(microcode[state]==0) begin
				state<=state+1;
			end
			if(microcode[state]==1) begin
				state<=dr1[prev_inp];
			end
			if(microcode[state]==2) begin
				state<=7;
			end
			if(microcode[state]==3) begin
				state<=dr2[prev_inp];
			end
			if(microcode[state]==4) begin
				state<=0;
			end
		end
		else begin
			counter<=counter+1;
		end
	end

endmodule
