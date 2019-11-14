`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:15:42 03/31/2019 
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
`define MAX_PC 14
`define OUTPUT_REG 2
module top(clk,led);
        input clk;
        output [0:7]led;
        reg [0:7] led;
        reg [0:7] regfile [0:31]; 
        reg [0:31] instruction [0:13];
		  reg [0:7] arr [0:10];
        reg [0:7] pc;
		  reg [0:3] sw=0;
		  reg [0:31] temp;
        reg [0:5] ins;
		  reg [0:5] sub_ins;
		  reg [0:4] inp1;
		  reg [0:4] inp2;
		  reg [0:4] out;
		  reg [0:7] imm;
        reg [0:7] add;
        initial begin
		  
					 pc=12;
					 led=1;
                instruction[0]=32'b00100100000000100000000000000000;
					 instruction[1]=32'b00100100000000110000000000000000;
					 instruction[2]=32'b00000000011000010010000000101010;
					 instruction[3]=32'b00010000100000000000000000001000;
					 instruction[4]=32'b00100100000001010000000000001010;
					 instruction[5]=32'b00010000011001010000000000001010;
					 instruction[6]=32'b10001100011001100000000000000000;
					 instruction[7]=32'b00000000010001100001000000100001;
					 instruction[8]=32'b00100100011000110000000000000001;
					 instruction[9]=32'b00000000011000010010000000101010;
					 instruction[10]=32'b00010100100000001111111111111011;
					 instruction[11]=32'b00000011111000000000000000001000;
					 instruction[12]=32'b10001100000000010000000000001010;
					 instruction[13]=32'b00001100000000000000000000000000;
					 
					 regfile[0]=8'b00000000;
					 regfile[1]=8'b00000000;
					 regfile[2]=8'b00000000;
					 regfile[3]=8'b00000000;
					 regfile[4]=8'b00000000;
					 regfile[5]=8'b00000000;
					 regfile[6]=8'b00000000;
					 regfile[7]=8'b00000000;
					 regfile[8]=8'b00000000;
					 regfile[9]=8'b00000000;
					 regfile[10]=8'b00000000;
					 regfile[11]=8'b00000000;
					 regfile[12]=8'b00000000;
					 regfile[13]=8'b00000000;
					 regfile[14]=8'b00000000;
					 regfile[15]=8'b00000000;
					 regfile[16]=8'b00000000;
					 regfile[17]=8'b00000000;
					 regfile[18]=8'b00000000;
					 regfile[19]=8'b00000000;
					 regfile[20]=8'b00000000;
					 regfile[21]=8'b00000000;
					 regfile[22]=8'b00000000;
					 regfile[23]=8'b00000000;
					 regfile[24]=8'b00000000;
					 regfile[25]=8'b00000000;
					 regfile[26]=8'b00000000;
					 regfile[27]=8'b00000000;
					 regfile[28]=8'b00000000;
					 regfile[29]=8'b00000000;
					 regfile[30]=8'b00000000;
					 regfile[31]=8'b00000000;
					 
					 arr[0]=8'b10011100;
					 arr[1]=8'b10001111;
					 arr[2]=8'b01110000;
					 arr[3]=8'b00111011;
					 arr[4]=8'b00100000;
					 arr[5]=8'b01010000;
					 arr[6]=8'b00000111;
					 arr[7]=8'b00001000;
					 arr[8]=8'b00001001;
					 arr[9]=8'b00001010;
					 arr[10]=8'b00000110;
        end
        
        always @(posedge clk) begin
								if(sw==0) begin
									temp<=instruction[pc];
									sw<=sw+1;
								end
								if (sw==1) begin
									//$display("%d",pc);
									if(temp[0:5]==9) begin
										inp1<=temp[6:10];
										out<=temp[11:15];
										imm<=temp[24:31];
									end
									else if(temp[0:5]==0)begin
										if(temp[26:31]==42) begin
											inp1<=temp[6:10];
											out<=temp[16:20];
											inp2<=temp[11:15];
										end
										if(temp[26:31]==33) begin
											inp1<=temp[6:10];
											out<=temp[16:20];
											inp2<=temp[11:15];
										end
										if(temp[26:31]==8) begin
											inp1<=temp[6:10];
											out<=temp[16:20];
											inp2<=temp[11:15];
										end
										
									end
									else if (temp[0:5]==4)begin
										inp1<=temp[6:10];
										inp2<=temp[11:15];
										imm<=temp[24:31];
									end
									else if(temp[0:5]==35)begin
										inp1<=temp[6:10];
										out<=temp[11:15];
										imm<=temp[24:31];
										//$display("%d %d %d",inp1,out,imm);
									end
									else if (temp[0:5]==5)begin
										inp1<=temp[6:10];
										inp2<=temp[11:15];
										imm<=temp[24:31];
									end
									else if(temp[0:5]==3)begin
										imm<=temp[24:31];
									end							
									sw<=sw+1;
								end
								if(sw==2) begin
									
									
									if(temp[0:5]==9) begin
										regfile[out]<=regfile[inp1]+imm;
										pc<=pc+1;
									end
									else if(temp[0:5]==0)begin
										if(temp[26:31]==42) begin
											if($signed(regfile[inp1])<$signed(regfile[inp2])) begin
												regfile[out]<=1;
												pc<=pc+1;
												//$display("Hello");
											end
											else begin
												regfile[out]<=0;
												pc<=pc+1;
												//$display("World");
											//	$display("%d checks %d %d %d ",inp1,inp2,regfile[inp1],regfile[inp2]);
											end
											
										end
										if(temp[26:31]==33) begin
											regfile[out]<=regfile[inp1]+regfile[inp2];
											pc<=pc+1;
											//$display("%d %d %d values   %d %d %d  indices",regfile[inp1],regfile[inp2],regfile[out],inp1,inp2,out);
										end
										if(temp[26:31]==8) begin
											pc<=regfile[31];
										end
									end
									else if (temp[0:5]==4)begin
										if(regfile[inp1]==regfile[inp2])begin
											pc<=pc+imm;
											
										end
										else begin
											//$display("%d %d regfiles",regfile[inp1],regfile[inp2]);
											pc<=pc+1;
										end
									end
									else if(temp[0:5]==35)begin
											add<=imm+regfile[inp1];
											pc<=pc+1;
									end
									else if (temp[0:5]==5)begin
										if(regfile[inp1] != regfile[inp2])begin
											pc<=pc+imm;
											//$display("bne branch to %d",pc);
										end
										else begin
											//$display("bne fall");
											pc<=pc+1;
										end
										
									end
									else if(temp[0:5]==3)begin
										regfile[31]<=pc+1;
										pc<=imm;
									end							
									sw<=sw+1;
								end
									
                        if(sw==3) begin
									
									sw<=sw+1;
                        end
								if(sw==4) begin
									if(temp[0:5]==35)begin
										regfile[out]<=arr[add];
										//$display("%d checks %d %d %d ",out,add,regfile[out],arr[add]);
									end
									sw<=sw+1;
								end
                        if(sw==5) begin
									if(pc<14)begin
										sw<=0;
									end
									else begin
										sw<=6;
									end
									//pc<=pc+1;
                        end
								if(sw==6)begin
									led<=regfile[`OUTPUT_REG];
									//$display("yogjhhf");
								end
								
         end
                       
                        //always @(regfile[`OUTPUT_REG]) begin
                          //      $display("sum=%d",regfile[`OUTPUT_REG]);
                        //end
        
endmodule