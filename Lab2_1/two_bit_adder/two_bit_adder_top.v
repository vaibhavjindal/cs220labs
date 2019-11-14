`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:28:16 01/21/2019
// Design Name:   two_bit_adder
// Module Name:   /media/vaibhavj/28E1-CC83/CS220Labs/Lab2_1/two_bit_adder/two_bit_adder_top.v
// Project Name:  two_bit_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_bit_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module two_bit_adder_top;

	// Inputs
	reg [1:0] x;
	reg [1:0] y;

	// Outputs
	wire [1:0] z;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	two_bit_adder uut (
		.x(x), 
		.y(y), 
		.z(z), 
		.carry(carry)
	);

	always @(x or y) begin
		$display("time=%d : %b%b + %b%b = %b%b%b\n",$time,x[1],x[0],y[1],y[0],carry,z[1],z[0]);
	end
	
	initial begin
		x=2'b00;y=2'b00;
		#5
		x=2'b01;y=2'b10;
		#5
		x=2'b11;y=2'b10;
		#5
		x=2'b11;y=2'b11;
		#5
		x=2'b01;y=2'b01;
		#5
		x=2'b11;y=2'b00;
		#5
		$finish;
	end
	
endmodule

