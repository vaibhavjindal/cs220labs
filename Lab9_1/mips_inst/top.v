`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:22:06 03/31/2019
// Design Name:   main
// Module Name:   /home/ise/cs220_hw/mips_inst/top.v
// Project Name:  mips_inst
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top;

	// Inputs
	reg clk;
	reg sw;

	// Outputs
	wire [7:0] led;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.clk(clk), 
		.led(led), 
		.sw(sw)
	);

initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	initial begin
		forever begin
			clk = 0;
			#1;
			clk = 1;
			#1;
		end
	end
	initial begin
		sw = 0;
		#200;
		sw= 1;
	end

      
endmodule
