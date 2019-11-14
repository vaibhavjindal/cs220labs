`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:33:03 01/30/2018 
// Design Name: 
// Module Name:    lcd_welcome_top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: Authored by Mainak Chaudhuri
//
//////////////////////////////////////////////////////////////////////////////////


module lcd_welcome_top(
	y,
	pb1,
	pb2,
	pb3,
	pb4,
	clk,
	lcd_rs,
	lcd_rw,
	lcd_e,
	lcd4,
	lcd5,
	lcd6,
	lcd7
    );
	 
  
	input [2:0]y;
	input clk,pb1,pb2,pb3,pb4;
	output lcd_rs, lcd_rw, lcd_e, lcd4, lcd5, lcd6, lcd7;
	wire lcd_rs, lcd_rw, lcd_e, lcd4, lcd5, lcd6, lcd7;
	reg [2:0]num_a=0;
	reg [2:0]num_b=0;
	reg [2:0]num_c=0;
	reg [2:0]num_d=0;
	
	reg [0:127] str1 = 0;
	reg [0:127] str2 = 0 ;
	reg checka=0;
	reg checkb=0;
	reg checkc=0;
	reg checkd=0;
	
	initial begin
		str2[0:127] = "0               ";
		str1[0:127] = "0,0,0,0         ";        
	end
	
	always @(posedge pb1) begin
		num_a<=y;
		str1[0:7] <= 48 + y;
	end
	always @(posedge pb2) begin
		num_b<=y;
		str1[16:23] <= 48 + y;
	end
	always @(posedge pb3) begin
		num_c<=y;
		str1[32:39] <= 48 + y;
	end
	always @(posedge pb4) begin
		num_d<=y;
		str1[48:55] <= 48 + y;
	end
	
	always @(num_a or num_b or num_c or num_d) begin
			if (num_a <= num_b && num_a<=num_c && num_a<=num_d) begin
				str2[0:7]<=48;
			end
			else if (num_b <= num_a && num_b<=num_c && num_b<=num_d) begin
				str2[0:7]<=49;
			end
			else if (num_c <= num_b && num_c<=num_a && num_c<=num_d) begin
				str2[0:7]<=50;
			end
			else if (num_d <= num_b && num_d<=num_c && num_d<=num_a) begin
				str2[0:7]<=51;
			end
	     
	end
	
	lcd_welcome LCD (str1,
			 str2,
			 clk, lcd_rs, lcd_rw, lcd_e, lcd4, lcd5, lcd6, lcd7);
endmodule