`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:59:38 04/15/2019 
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
module main(clk,led,pb1);
input pb1;
input clk;
output [7:0]led;
reg [7:0]led;

reg [7:0] regfile[0:7];
reg [3:0] counter=0;
reg [7:0] temp;
reg [7:0] xorv=0;
reg xorb=0;
reg t1=0;
initial begin
	regfile[0]=8'b00001000;
	regfile[1]=8'b00010000;
	regfile[2]=8'b10000000;
	regfile[3]=8'b00000100;
	regfile[4]=8'b00001000;
	regfile[5]=8'b00100000;
	regfile[6]=8'b00000001;
	regfile[7]=8'b00000100;
end

always @(posedge clk) begin
	if (counter<8) begin
		temp=regfile[counter];
		counter<=counter+1;
		xorv<=(xorv^temp);
	end
	else begin
		if (t1==0) begin
			led<=xorv;
		end
		else begin
			xorb=xorv[0]^xorv[1]^xorv[2]^xorv[3]^xorv[4]^xorv[5]^xorv[6]^xorv[7];
			led<={0000000,xorb};
		end
	end
	
end

always @(posedge pb1) begin
	t1<=(~t1);
end

endmodule
