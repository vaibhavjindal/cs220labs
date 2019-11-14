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
module lcd_welcome(y,pb1,pb2,pb3,pb4,rb,
	clk,
	lcd_rs,
	lcd_rw,
	lcd_e,
	lcd4,
	lcd5,
	lcd6,
	lcd7
    );

	input pb1,pb2,pb3,pb4,rb;
	input [3:0] y;
	reg [0:127] first_line="vaibhav         ";
	reg [0:127] second_line="jindal          ";
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
	
	reg [2:0]bits;
	reg [4:0]ra1;
	reg [4:0] ra2;
	reg [4:0] wa;
	reg [15:0] wd;
	reg write=1;
	reg change=0;
	
	reg [15:0]rd1;
	reg [15:0]rd2;
	
	reg [10:0] state=0;
	 
	 
	reg [15:0] rf[0:31];
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
		rf[0]=16'b0000000000000000;
		rf[1]=16'b0000000000000000;
		rf[2]=16'b0000000000000000;
		rf[3]=16'b0000000000000000;
		rf[4]=16'b0000000000000000;
		rf[5]=16'b0000000000000000;
		rf[6]=16'b0000000000000000;
		rf[7]=16'b0000000000000000;
		rf[8]=16'b0000000000000000;
		rf[9]=16'b0000000000000000;
		rf[10]=16'b0000000000000000;
		rf[11]=16'b0000000000000000;
		rf[12]=16'b0000000000000000;
		rf[13]=16'b0000000000000000;
		rf[14]=16'b0000000000000000;
		rf[15]=16'b0000000000000000;
		rf[16]=16'b0000000000000000;
		rf[17]=16'b0000000000000000;
		rf[18]=16'b0000000000000000;
		rf[19]=16'b0000000000000000;
		rf[20]=16'b0000000000000000;
		rf[21]=16'b0000000000000000;
		rf[22]=16'b0000000000000000;
		rf[23]=16'b0000000000000000;
		rf[24]=16'b0000000000000000;
		rf[25]=16'b0000000000000000;
		rf[26]=16'b0000000000000000;
		rf[27]=16'b0000000000000000;
		rf[28]=16'b0000000000000000;
		rf[29]=16'b0000000000000000;
		rf[30]=16'b0000000000000000;
		rf[31]=16'b0000000000000000;
	end
	
	always @(posedge pb2) begin
		bits <= y[2:0];
		state<=0;
		write<=0;
		change<=0;
	end
	
	always @(posedge pb1) begin
		if(bits==0) begin
				if(state==0) begin
					state<=1;
					wa[3:0]<=y;
				end
				else if(state==1) begin
					state<=2;
					wa[4]<=y[0];
				end
				else if(state==2) begin
					state<=3;
					wd[3:0]<=y;
				end
				else if(state==3) begin
					state<=4;
					wd[7:4]<=y;
				end
				else if (state==4) begin
					state<=5;
					wd[11:8]<=y;
				end
				else if (state==5) begin
					state<=6;
					wd[15:12]<=y;
				end
				else if (state==6) begin
					change<=1;
					state<=7;
					first_line[0:7]<=48+wa[4];
					first_line[8:15]<=48+wa[3];
					first_line[16:23]<=48+wa[2];
					first_line[24:31]<=48+wa[1];
					first_line[32:39]<=48+wa[0];
					first_line[40:127]<="           ";
					second_line[0:7]<=48+wd[15];
					second_line[8:15]<=48+wd[14];
					second_line[16:23]<=48+wd[13];
					second_line[24:31]<=48+wd[12];
					second_line[32:39]<=48+wd[11];
					second_line[40:47]<=48+wd[10];
					second_line[48:55]<=48+wd[9];
					second_line[56:63]<=48+wd[8];
					second_line[64:71]<=48+wd[7];
					second_line[72:79]<=48+wd[6];
					second_line[80:87]<=48+wd[5];
					second_line[88:95]<=48+wd[4];
					second_line[96:103]<=48+wd[3];
					second_line[104:111]<=48+wd[2];
					second_line[112:119]<=48+wd[1];
					second_line[120:127]<=48+wd[0];
				end
				else if (state==7) begin
					write<=1;
				end
			end
			else begin 
				if(state==0) begin
					state<=1;
					ra1[3:0]<=y;
				end
				else if(state==1) begin
					state<=2;
					ra1[4]<=y[0];
				end
				else if(state==2) begin
					state<=3;
					rd1<=rf[ra1];
				end
				else if (state==3) begin
					state<=4;
					change<=1;
					first_line[0:7]<=48+ra1[4];
					first_line[8:15]<=48+ra1[3];
					first_line[16:23]<=48+ra1[2];
					first_line[24:31]<=48+ra1[1];
					first_line[32:39]<=48+ra1[0];
					first_line[40:127]<="           ";
					second_line[0:7]<=48+rd1[15];
					second_line[8:15]<=48+rd1[14];
					second_line[16:23]<=48+rd1[13];
					second_line[24:31]<=48+rd1[12];
					second_line[32:39]<=48+rd1[11];
					second_line[40:47]<=48+rd1[10];
					second_line[48:55]<=48+rd1[9];
					second_line[56:63]<=48+rd1[8];
					second_line[64:71]<=48+rd1[7];
					second_line[72:79]<=48+rd1[6];
					second_line[80:87]<=48+rd1[5];
					second_line[88:95]<=48+rd1[4];
					second_line[96:103]<=48+rd1[3];
					second_line[104:111]<=48+rd1[2];
					second_line[112:119]<=48+rd1[1];
					second_line[120:127]<=48+rd1[0];
				end
				else if (state==4) begin
					write<=1;
				end
			end
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
	
	always @ (posedge clk) begin
			if (write==1) begin
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