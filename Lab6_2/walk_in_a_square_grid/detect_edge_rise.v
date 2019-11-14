`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:47:23 03/03/2019 
// Design Name: 
// Module Name:    detect_edge_rise 
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
module detect_edge_rise(clk,rotation_event,inp1,inp2,inp3,inp4,sumx,sumy);
	input clk,rotation_event,inp1,inp2,inp3,inp4;
	output [4:0]sumx;
	output [4:0]sumy;
	reg [4:0] sumx=0;//n-s
	reg [4:0] sumy=0;//e-w
	reg prev_rotation_event;
	
	//inp 4=0 and inp3=0 => north
	//inp 4=0 and inp3=1 => east	
	
	always @(posedge clk) begin
		prev_rotation_event<=rotation_event;
		if(prev_rotation_event==0&&rotation_event==1) begin
			if(inp4==0&&inp3==0) begin
				if(sumx+{inp2,inp1}>15) begin
					sumx<=15;
				end
				else begin
					sumx<=sumx+{inp2,inp1};
				end
			end
			if(inp4==1&&inp3==1) begin
				if(sumx<{inp2,inp1}) begin
					sumx<=0;
				end
				else begin
					sumx<=sumx-{inp2,inp1};
				end
			end
			if(inp4==0&&inp3==1) begin
				if(sumy+{inp2,inp1}>15) begin
					sumy<=15;
				end
				else begin
					sumy<=sumy+{inp2,inp1};
				end
			end
			if(inp4==1&&inp3==0) begin
				if(sumy<{inp2,inp1}) begin
					sumy<=0;
				end
				else begin
					sumy<=sumy-{inp2,inp1};
				end
			end
		end
	end

endmodule