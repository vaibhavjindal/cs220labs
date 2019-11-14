`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:40:10 01/24/2019
// Design Name:   eight_bit_comp
// Module Name:   /home/ise/eight_bit_comparator/eight_bit_comp_top.v
// Project Name:  eight_bit_comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eight_bit_comp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eight_bit_comp_top;

	// Inputs
	reg [3:0] inp;
	reg pb1;
	reg pb2;
	reg pb3;
	reg pb4;

	// Outputs
	wire l;
	wire g;
	wire e;

	// Instantiate the Unit Under Test (UUT)
	eight_bit_comp uut (
		.inp(inp), 
		.pb1(pb1), 
		.pb2(pb2), 
		.pb3(pb3), 
		.pb4(pb4), 
		.l(l), 
		.g(g), 
		.e(e)
	);

initial begin
	inp=15;pb1=0;pb2=0;pb3=0;pb4=0;
	#1
	inp=15;pb1=1;pb2=0;pb3=0;pb4=0;
	#1
	inp=15;pb1=0;pb2=1;pb3=0;pb4=0;
	#1
	inp=15;pb1=0;pb2=0;pb3=1;pb4=0;
	#1
	inp=15;pb1=0;pb2=0;pb3=0;pb4=1;
	#1

	$finish;
end	
endmodule
