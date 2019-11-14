`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:29:47 01/30/2018 
// Design Name: 
// Module Name:    lcd_welcome 
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
module lcd_welcome(pb1,pb2,pb3,pb4,y,
	clk,
	lcd_rs,
	lcd_rw,
	lcd_e,
	lcd4,
	lcd5,
	lcd6,
	lcd7
    );

	input pb1,pb2,pb3,pb4;
	input [2:0]y;
	reg [0:127] first_line= "0,0,0,0         ";
	reg [0:127] second_line="0               ";
	input clk;
	output lcd_rs, lcd_rw, lcd_e, lcd4, lcd5, lcd6, lcd7;
	reg lcd_rs, lcd_rw, lcd_e, lcd4, lcd5, lcd6, lcd7;

	reg [7:0] first_line_index = 0;
	reg [1:0] first_line_state = 3;
	 
	reg [7:0] second_line_index = 0;
	reg [1:0] second_line_state = 3;
	 
	reg [19:0] counter = 1_000_000;
	reg [2:0] next_state = 0;
	 
	reg [2:0] line_break_state = 7;
	 
	reg [5:0] init_ROM [0:13];
	reg [3:0] init_ROM_index = 0;
	 
	reg [2:0]num_a=0;
	reg [2:0]num_b=0;
	reg [2:0]num_c=0;
	reg [2:0]num_d=0;
	reg a=0;
	reg b=0;
	reg c=0;
	reg d=0;
	
	// Initialization code
	initial begin
		init_ROM[0] = 6'h03;
		init_ROM[1] = 6'h03;
		init_ROM[2] = 6'h03;
		init_ROM[3] = 6'h02;
		init_ROM[4] = 6'h02;
		init_ROM[5] = 6'h08;
		init_ROM[6] = 6'h00;
		init_ROM[7] = 6'h06;
		init_ROM[8] = 6'h00;
		init_ROM[9] = 6'h0c;
		init_ROM[10] = 6'h00;
		init_ROM[11] = 6'h01;
		init_ROM[12] = 6'h08;
		init_ROM[13] = 6'h00;
	end
	
	always @(posedge pb1) begin
		num_a<=y;
		a<=1;
		first_line[0:7] <= 48 + y;
	end
	always @(posedge pb2) begin
		num_b<=y;
		b<=1;
		first_line[16:23] <= 48 + y;
	end
	always @(posedge pb3) begin
		num_c<=y;
		c<=1;
		first_line[32:39] <= 48 + y;
	end
	always @(posedge pb4) begin
		num_d<=y;
		d<=1;
		first_line[48:55] <= 48 + y;
	end
	
	always @ (posedge clk) begin
		if (num_a <= num_b && num_a<=num_c && num_a<=num_d) begin
				second_line[0:7]<=48;
		end
		else if (num_b <= num_a && num_b<=num_c && num_b<=num_d) begin
				second_line[0:7]<=49;
		end
		else if (num_c <= num_b && num_c<=num_a && num_c<=num_d) begin
				second_line[0:7]<=50;
		end
		else if (num_d <= num_b && num_d<=num_c && num_d<=num_a) begin
				second_line[0:7]<=51;
		end
		if(a==1&&b==1&&c==1&&d==1) begin
	   	if (counter == 0) begin
		   	counter <= 1_000_000;
			
			// Initialization state machine
			if (init_ROM_index == 14) begin
				next_state <= 4;
				init_ROM_index <= 0;
				first_line_state <= 0;
			end
					
			if ((next_state != 4) && (init_ROM_index != 14)) begin
			  	case (next_state)
			    		0: begin
						lcd_e <= 0;
						next_state <= 1;
               		    		end
					
                            		1: begin
						{lcd_rs, lcd_rw, lcd7, lcd6, lcd5, lcd4} <= init_ROM[init_ROM_index];
						next_state <= 2;
			    		end
					
			    		2: begin
						lcd_e <= 1;
						next_state <= 3;
			    		end
					
			    		3: begin
						lcd_e <= 0;
						next_state <= 1;
						init_ROM_index <= init_ROM_index + 1;
			    		end
			  	endcase
			end
			
			// First line state machine
			if (first_line_index == 128) begin
				first_line_state <= 3;
				first_line_index <= 0;
				line_break_state <= 0;
			end
			if ((first_line_state != 3) && (first_line_index != 128)) begin
				case (first_line_state)
					0: begin
						{lcd_rs, lcd_rw, lcd7, lcd6, lcd5, lcd4} <= {2'h2,first_line[first_line_index],first_line[first_line_index+1],first_line[first_line_index+2],first_line[first_line_index+3]};
						first_line_state <= 1;
					end
						
					1: begin
						lcd_e <= 1;
						first_line_state <= 2;
					end
					
					2: begin
						lcd_e <= 0;
						first_line_state <= 0;
						first_line_index <= first_line_index+4;
					end
				endcase
			end
			
			// Line break state machine
			if (line_break_state != 7) begin
				case (line_break_state)
					0: begin
						{lcd_rs, lcd_rw, lcd7, lcd6, lcd5, lcd4} <= 6'h0c;
						line_break_state <= 1;
					end
						
					1: begin
						lcd_e <= 1;
						line_break_state <= 2;
					end
						
					2: begin
						lcd_e <= 0;
						line_break_state <= 3;
					end
						
					3: begin
						{lcd_rs, lcd_rw, lcd7, lcd6, lcd5, lcd4} <= 6'h00;
						line_break_state <= 4;
					end
						
					4: begin
						lcd_e <= 1;
						line_break_state <= 5;
					end
						
					5: begin
						lcd_e <= 0;
						line_break_state <= 7;
						second_line_state <= 0;
					end
				endcase
			end
			
			// Second line state machine
			if (second_line_index == 128) begin
				second_line_state <= 3;
				second_line_index <= 0;
			end
			if ((second_line_state != 3) && (second_line_index != 128)) begin
				case (second_line_state)
					0: begin
						{lcd_rs, lcd_rw, lcd7, lcd6, lcd5, lcd4} <= {2'h2,second_line[second_line_index],second_line[second_line_index+1],second_line[second_line_index+2],second_line[second_line_index+3]};
						second_line_state <= 1;
					end
						
					1: begin
						lcd_e <= 1;
						second_line_state <= 2;
					end
					
					2: begin
						lcd_e <= 0;
						second_line_state <= 0;
						second_line_index <= second_line_index+4;
					end
				endcase
			end
		end
		else 
		begin 
		   	counter <= counter - 1;
		end
	end
	end
endmodule