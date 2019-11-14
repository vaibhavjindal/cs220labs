`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:21:56 01/27/2019
// Design Name:   five_four_bit_adder
// Module Name:   
// Project Name:  five_four_bit_adder_top
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: five_four_bit_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module five_four_bit_adder_top;

	// Inputs
	reg pb1;
	reg pb2;
	reg pb3;
	reg pb4;
	reg rpb;
	reg [3:0] y;

	// Outputs
	wire [6:0] z;

	// Instantiate the Unit Under Test (UUT)
	five_four_bit_adder uut (
		.pb1(pb1), 
		.pb2(pb2), 
		.pb3(pb3), 
		.pb4(pb4), 
		.rpb(rpb), 
		.y(y), 
		.z(z)
	);

initial begin
	y=4'd15;pb1=0;pb2=0;pb3=0;pb4=0;rpb=0;
	#1
	y=4'd15;pb1=1;pb2=0;pb3=0;pb4=0;rpb=0;
	#1
	y=4'd14;pb1=0;pb2=0;pb3=0;pb4=0;rpb=0;
	#1
	y=4'd14;pb1=0;pb2=1;pb3=0;pb4=0;rpb=0;
	#1
	y=4'd13;pb1=0;pb2=0;pb3=0;pb4=0;rpb=0;
	#1
	y=4'd13;pb1=0;pb2=0;pb3=1;pb4=0;rpb=0;
	#1
	y=4'd12;pb1=0;pb2=0;pb3=0;pb4=0;rpb=0;
	#1
	y=4'd12;pb1=0;pb2=0;pb3=0;pb4=1;rpb=0;
	#1
	y=4'd11;pb1=0;pb2=0;pb3=0;pb4=0;rpb=0;
	#1
	y=4'd11;pb1=0;pb2=0;pb3=0;pb4=0;rpb=1;
	#1
	y=4'd15;pb1=0;pb2=0;pb3=0;pb4=0;rpb=0;
	#1
	y=4'd15;pb1=0;pb2=0;pb3=0;pb4=0;rpb=0;
	#1
	$finish;
end
      
endmodule









