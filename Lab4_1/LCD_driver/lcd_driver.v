`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:31 02/04/2019 
// Design Name: 
// Module Name:    lcd_driver 
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
`define TIME 1000000
module lcd_driver(clk,lcd_e,lcd_rs,lcd_w,db,inp1,inp2);

input clk;
input [127:0] inp1;
input [127:0] inp2;
output lcd_e,lcd_rs,lcd_w;
output [3:0]db;
reg [3:0]db;
reg lcd_rs;
reg lcd_w;
reg [19:0]counter=0;
reg [10:0] state=0;
reg lcd_e;
reg [6:0]inp1_state=127;
reg [6:0]inp2_state=127;
reg [1:0]temp=0;

always @(posedge clk) begin
	counter<=counter+1;
	if(counter==`TIME) begin
		counter<=0;
	if (state == 0) begin
		lcd_e<=0;
		state<=state+1;
	end
	if (state == 1) begin
		lcd_rs<=0;
		lcd_w<=0;
		db<=4'h3;
		state<=state+1;
	end
	if(state==2) begin
		lcd_e<=1;
		state<=state+1;
	end
	if(state==3) begin
		lcd_e<=0;
		state<=state+1;
	end
	if (state == 4) begin
		lcd_rs<=0;
		lcd_w<=0;
		db<=4'h3;
		state<=state+1;
	end
	if(state==5) begin
		lcd_e<=1;
		state<=state+1;
	end
	if(state==6) begin
		lcd_e<=0;
		state<=state+1;
	end
	if (state == 7) begin
		lcd_rs<=0;
		lcd_w<=0;
		db<=4'h3;
		state<=state+1;
	end
	if(state==8) begin
		lcd_e<=1;
		state<=state+1;
	end
	if(state==9) begin
		lcd_e<=0;
		state<=state+1;
	end
	if(state==10) begin
		lcd_rs<=0;
		lcd_w<=0;
		db<=4'h2;
		state<=state+1;
	end
	if(state==11) begin
		lcd_e<=1;
		state<=state+1;
	end
	if(state==12) begin
		lcd_e<=0;
		state<=state+1;
	end
	if(state==13) begin
		lcd_rs<=0;
		lcd_w<=0;
		db<=4'h2;
		state<=state+1;
	end
	if(state==14) begin
		lcd_e<=1;
		state<=state+1;
	end
	if(state==15) begin
		lcd_e<=0;
		state<=state+1;
	end	
	if(state==16) begin
		lcd_rs<=0;
		state<=state+1;
		lcd_w<=0;
		db<=4'h8;
	end
	if(state==17) begin
		lcd_e<=1;
		state<=state+1;
	end
	if(state==18) begin
		lcd_e<=0;
		state<=state+1;
	end
	if(state==19) begin
		lcd_rs<=0;
		lcd_w<=0;
		db<=4'h0;
		state<=state+1;
	end
	if(state==20) begin
		lcd_e<=1;
		state<=state+1;
	end
	if(state==21) begin
		lcd_e<=0;
		state<=state+1;
	end	
	if(state==22) begin
		lcd_rs<=0;
		lcd_w<=0;
		db<=4'h6;
		state<=state+1;
	end
	if(state==23) begin
		lcd_e<=1;
		state<=state+1;
	end
	if(state==24) begin
		lcd_e<=0;
		state<=state+1;
	end
	if(state==25) begin
		lcd_rs<=0;
		lcd_w<=0;
		db<=4'h0;
		state<=state+1;
	end
	if(state==26) begin
		lcd_e<=1;
		state<=state+1;
	end
	if(state==27) begin
		lcd_e<=0;
		state<=state+1;
	end	
	if(state==28) begin
		lcd_rs<=0;
		lcd_w<=0;
		db<=4'hC;
		state<=state+1;
	end
	if(state==29) begin
		lcd_e<=1;
		state<=state+1;
	end
	if(state==30) begin
		lcd_e<=0;
		state<=state+1;
	end
	if(state==31) begin
		lcd_rs<=0;
		lcd_w<=0;
		db<=4'h0;
		state<=state+1;
	end
	if(state==32) begin
		lcd_e<=1;
		state<=state+1;
	end
	if(state==33) begin
		lcd_e<=0;
		state<=state+1;
	end	
	if(state==34) begin
		lcd_rs<=0;
		lcd_w<=0;
		db<=4'h1;
		state<=state+1;
	end
	if(state==35) begin
		lcd_e<=1;
		state<=state+1;
	end


	if(state==36) begin
		lcd_e<=0;
		state<=state+1;
	end
	if(state==37) begin
		lcd_rs<=0;
		lcd_w<=0;
		state<=state+1;
		db<=4'h8;
	end
	if(state==38) begin
		lcd_e<=1;
		state<=state+1;
	end
	if(state==39) begin
		lcd_e<=0;
		state<=state+1;
	end	
	if(state==40) begin
		lcd_rs<=0;
		lcd_w<=0;
		db<=4'h0;
		state<=state+1;
	end
	if(state==41) begin
		lcd_e<=1;
		state<=state+1;
	end
	if((state<138)&&(state>41)) begin
		if(temp==0) begin 
			lcd_e<=0;
			temp<=1;
			state<=state+1;
		end
		else if(temp==2) begin
			lcd_e<=1;
			temp<=0;
			state<=state+1;
		end
		else begin
			lcd_rs<=1;
			state<=state+1;
			lcd_w<=0;
			temp<=2;
			db<=inp1[inp1_state-:4];
			inp1_state<=inp1_state-4;
		end
	end

	if(state==138) begin
		lcd_e<=0;
		state<=state+1;
	end
	if(state==139) begin
		lcd_rs<=0;
		lcd_w<=0;
		db<=4'hC;
		state<=state+1;
	end
	if(state==140) begin
		lcd_e<=1;
		state<=state+1;
	end
	if(state==141) begin
		lcd_e<=0;
		state<=state+1;
	end	
	if(state==142) begin
		lcd_rs<=0;
		state<=state+1;
		lcd_w<=0;
		db<=4'h0;
	end
	if(state==143) begin
		lcd_e<=1;
		state<=state+1;
	end

	if((state<240)&&(state>143)) begin
		if(temp==0) begin 
			lcd_e<=0;
			temp<=1;
			state<=state+1;
		end
		else if(temp==2) begin 
			lcd_e<=1;
			temp<=0;
			state<=state+1;
		end
		else begin 
			lcd_rs<=1;
			lcd_w<=0;
			db<=inp2[inp2_state-:4];
			inp2_state<=inp2_state-4;
			temp<=2;
			state<=state+1;
		end
	end
	
	if(state==240) begin
		lcd_e<=0;
		state<=state+1;
	end
	end
end		

endmodule
