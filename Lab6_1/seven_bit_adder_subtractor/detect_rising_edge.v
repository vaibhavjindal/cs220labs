`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:21 02/25/2019 
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
module detect_rising_edge(clk,rotation_event,inp1,inp2,inp3,inp4,sum,overflow);
	input clk,rotation_event,inp1,inp2,inp3,inp4;
	output [6:0]sum;
	output overflow;
	wire [6:0] sum;
	wire overflow;
	reg [2:0] state=0;
	reg [6:0] A=0;
	reg [6:0] B=0;
	wire [5:0] carry;
	reg add_sub=0;
	reg prev_rotation_event;
	
	one_bit_add_sub M0(A[0],B[0],add_sub,add_sub,sum[0],carry[0]);
	one_bit_add_sub M1(A[1],B[1],carry[0],add_sub,sum[1],carry[1]);
	one_bit_add_sub M2(A[2],B[2],carry[1],add_sub,sum[2],carry[2]);
	one_bit_add_sub M3(A[3],B[3],carry[2],add_sub,sum[3],carry[3]);
	one_bit_add_sub M4(A[4],B[4],carry[3],add_sub,sum[4],carry[4]);
	one_bit_add_sub M5(A[5],B[5],carry[4],add_sub,sum[5],carry[5]);
	one_bit_add_sub M6(A[6],B[6],carry[5],add_sub,sum[6],overflow);
	
	always @(posedge clk) begin
		prev_rotation_event<=rotation_event;
		if(prev_rotation_event==0&&rotation_event==1) begin
			if(state==0) begin
				A[3:0]<={inp4,inp3,inp2,inp1};
				state<=1;
			end
			if(state==1) begin
				A[6:4]<={inp3,inp2,inp1};
				state<=2;
			end
			if(state==2) begin
				B[3:0]<={inp4,inp3,inp2,inp1};
				state<=3;
			end
			if(state==3) begin
				B[6:4]<={inp3,inp2,inp1};
				state<=4;
			end
			if(state==4) begin
				add_sub<=inp1;
				state<=0;
			end
		end	
	end

endmodule
