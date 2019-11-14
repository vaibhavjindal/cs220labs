`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:15:25 01/24/2019 
// Design Name: 
// Module Name:    comparator 
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
module comparator(a,b,li,gi,ei,lo,go,eo);

input a,b,li,gi,ei;
output lo,go,eo;
wire lo,go,eo;

assign lo=li|(ei&(~a)&b);
assign go=gi|(ei&a&(~b));
assign eo=ei&(a&b|(~a)&(~b));

endmodule