`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:46:01 01/28/2019
// Design Name:   ripple_module
// Module Name:   /media/vaibhavj/28E1-CC83/CS220Labs/Lab3_2/rippling_leds/ripple_led_top.v
// Project Name:  rippling_leds
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_led_top;

	// Inputs
	reg clk;

	// Outputs
	wire [7:0] led;

	// Instantiate the Unit Under Test (UUT)
	ripple_module uut (
		.clk(clk), 
		.led(led)
	);

	initial begin
		forever begin
        clk=0;
		  #1
		  clk=1;
		  #1
		  clk=0;
		end
	end
      
endmodule



