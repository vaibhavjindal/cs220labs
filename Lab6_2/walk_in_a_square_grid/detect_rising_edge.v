`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:55:03 02/25/2019 
// Design Name: 
// Module Name:    detect_rising_edge 
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
module detect_rising_edge(clk,rotation_event,inp1,inp2,inp3,inp4,sumx,sumy,x_move,y_move);

	input clk,rotation_event,inp1,inp2,inp3,inp4;
	output [4:0]sumx;
	output [4:0]sumy;
	output [1:0]x_move;
	output [1:0]y_move;
	reg [4:0] sumx=5'b00000;
	reg [4:0] sumy=5'b00000;
	reg prev_rotation_event;
	reg add_sub=0;
	reg [4:0]oldx=0;
	reg [4:0]oldy=0;
	reg [1:0]x_move=0;
	reg [1:0]y_move=0;
	reg [4:0]carryx;
	reg [4:0]carryy;
	
	//inp 4=0 and inp3=0 => north
	//inp 4=0 and inp3=1 => east	
	
	five_bit_add_sub Fx(oldx,{0,0,0,x_move},inp4,sumx,carryx);
	five_bit_add_sub Fy(oldy,{0,0,0,y_move},inp4,sumy,carryy);
	always @(posedge clk) begin
		prev_rotation_event<=rotation_event;
		if(prev_rotation_event==0&&rotation_event==1) begin
			oldx<=sumx;
			oldy<=sumy;
			if((inp4^inp3)==0) begin
				x_move[1]<=inp2;
				x_move[0]<=inp1;
				y_move[1]<=0;
				y_move[0]<=0;
			end
			else begin
				y_move[1]<=inp2;
				y_move[0]<=inp1;
				x_move[1]<=0;
				x_move[0]<=0;
			end
		end
	end
	
	always @(sumx or sumy or carryx or carryy) begin
		if(sumx[4]==1) begin
			oldx<=0;
			x_move<=0;
		end
		if(sumy[4]==1) begin
			oldy<=0;
			y_move<=0;
		end
		if(carryx[4]^carryx[3]==1) begin
			oldx<=5'b01111;
			x_move<=0;
		end
		if(carryy[4]^carryy[3]==1) begin
			oldy<=5'b01111;
			y_move<=0;
		end
	end
endmodule