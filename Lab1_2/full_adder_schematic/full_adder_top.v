// Verilog test fixture created from schematic /media/vaibhavj/28E1-CC83/CS220Labs/Lab1_2/full_adder_schematic/fuller_adder_sch.sch - Mon Jan 14 16:21:32 2019

`timescale 1ns / 1ps

module fuller_adder_sch_fuller_adder_sch_sch_tb();

// Inputs
   reg b;
   reg a;
   reg cin;

// Output
   wire sum;
   wire cout;

// Bidirs

// Instantiate the UUT
   fuller_adder_sch UUT (
		.sum(sum), 
		.b(b), 
		.a(a), 
		.cin(cin), 
		.cout(cout)
   );
// Initialize Inputs
   //`ifdef auto_init
       //initial begin
		//b = 0;
		//a = 0;
		//cin = 0;
   //`endif
	
	always@(sum or cout) begin
		$display("time=%d: %b+ %b+ %b= %b, cout=%b\n",$time,a,b,cin,sum,cout);
	end
	
	initial begin
		a=0;b=0;cin=0;
		#5
		a=0;b=1;cin=0;
		#5
		a=1;b=0;cin=1;
		#5
		a=1;b=1;cin=1;
		#5
		$finish;
	end
		
endmodule
