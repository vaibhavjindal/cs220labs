`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:15:42 03/31/2019 
// Design Name: 
// Module Name:    main 
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
module main(clk,led,sw);
	input clk,sw;
	output [7:0]led;
	reg [7:0] led;
	
	reg [31:0] regfile [0:7];
	reg [40:0]pc=0;
	reg [2:0]r=0;
	reg [2:0]i=0;
	reg [1:0]j=0;
	reg [1:0]r3=0;
	reg [1:0]r4=0;
	reg [1:0]r5=0;
	reg [1:0]r6=0;
	reg [31:0] temp=32'b00100000000001000011010001010110;
	
	
	initial begin
		regfile[0]=32'b00100000000001000011010001010110;
		regfile[1]=32'b00100000000001011111111111111111;
		regfile[2]=32'b00000000101001000011000000100000;
		regfile[3]=32'b00100000000000110000000000000111;
		regfile[4]=32'b00000000011001100011000000000100;
		regfile[5]=32'b00000000000000110001100001000010;
		regfile[6]=32'b10001100100001011001101010111100;
		regfile[7]=32'b00001000000100100011010001010110;
	end
	
	always @(posedge clk) begin
			if(sw==0) begin
				led[2:0]<=r;
				led[5:3]<=i;
				led[7:6]<=j;
			end
			else begin
				led[1:0]<=r3;
				led[3:2]<=r4;
				led[5:4]<=r5;
				led[7:6]<=r6;
			end
			pc<=pc+1;
			if (pc<8) begin
			temp=regfile[pc];
			if (temp[31:26]==0) begin
				r<=r+1;
				if(temp[15:11]==3) begin
					r3<=r3+1;
				end
				else if(temp[15:11]==4) begin
					r4<=r4+1;
				end
				else if(temp[15:11]==5) begin
					r5<=r5+1;
				end
				else if(temp[15:11]==6) begin
					r6<=r6+1;
				end
			end
			else if ( (temp[31:26]==2) || (temp[31:26]==3) ) begin
				j<=j+1;	
			end
			else begin
				i<=i+1;
				if(temp[20:16]==3) begin
					r3<=r3+1;
				end
				else if(temp[20:16]==4) begin
					r4<=r4+1;
				end
				else if(temp[20:16]==5) begin
					r5<=r5+1;
				end
				else if(temp[20:16]==6) begin
					r6<=r6+1;
				end
			end
			end
			end
			
			//always @(r or i or j) begin
				//$display("r3=%d r4=%d r5=%d r6=%d",r3,r4,r5,r6);
			//end
	
endmodule