`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:26:51 03/11/2019 
// Design Name: 
// Module Name:    register_file 
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
module register_file(change,ra1,ra2,wa,wd,bits,rd1,rd2);
	input change;
	input [4:0]ra1;
	input [4:0]ra2;
	input [4:0]wa;
	input [15:0] wd;
	input [2:0] bits;
	
	output [15:0]rd1;
	output [15:0]rd2;
	
	reg [15:0] rf[0:31];
	
	initial begin
		rf[0]=0;
		rf[1]=0;
		rf[2]=0;
		rf[3]=0;
		rf[4]=0;
		rf[5]=0;
		rf[6]=0;
		rf[7]=0;
		rf[8]=0;
		rf[9]=0;
		rf[10]=0;
		rf[11]=0;
		rf[12]=0;
		rf[13]=0;
		rf[14]=0;
		rf[15]=0;
		rf[16]=0;
		rf[17]=0;
		rf[18]=0;
		rf[19]=0;
		rf[20]=0;
		rf[21]=0;
		rf[22]=0;
		rf[23]=0;
		rf[24]=0;
		rf[25]=0;
		rf[26]=0;
		rf[27]=0;
		rf[28]=0;
		rf[29]=0;
		rf[30]=0;
		rf[31]=0;
	end
	
	always @(posedge change) begin
		if(bits==0) begin
			rf[wa]<=wd;
		end
		else if(bits==1) begin
			rd1<=rf[ra1];
		end
		else if(bits==2) begin
			rd1<=rf[ra1];
			rd2<=rf[ra2];
		end
		else if(bits==3) begin
			rd1<=rf[ra1];
			rf[wa]<=wd;
		end
		else if(bits==4) begin
			rd1<=rf[ra1];
			rd2<=rf[ra2];
			rf[wa]<=wd;
		end
		else if(bits==5) begin
			rd1<=rf[ra1];
			rd2<=rf[ra2];
			rf[wa]<=rf[ra1]+rf[ra2];
		end
		else if(bits==6) begin
			rd1<=rf[ra1];
			rd2<=rf[ra2];
			rf[wa]<=rf[ra1]-rf[ra2];
		end
		else if(bits==7) begin
			rd1<=rf[ra1];
			rf[wa]<=rf[ra1]<<wd;
		end
	end

endmodule