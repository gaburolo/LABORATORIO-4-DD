`timescale 1ns / 1ps
// testbench verilog code for debouncing button without creating another clock
module debounceTest();
 // Inputs
 reg pb_1;
 reg clk;
 // Outputs
 logic pb_out;
 // Instantiate the debouncing Verilog code
 debounce uut (
	.clk(clk),
	.PB(!pb_1), 
   
	.PB_state(pb_out)
 );
 initial begin
  clk = 0;
  forever #50 clk = ~clk;
 end
 initial begin
	#1000;
  pb_1 = 0;
  #10;
  pb_1=1;
  #20;
  pb_1 = 0;
  #10;
  pb_1=1;
  #30; 
  pb_1 = 0;
  #10;
  pb_1=1;
  #40;
  pb_1 = 0;
  #10;
  pb_1=1;
  #30; 
  pb_1 = 0;
  #10;
  pb_1=1; 
  #1000; 
  pb_1 = 0;
  #10;
  pb_1=1;
  #20;
  pb_1 = 0;
  #10;
  pb_1=1;
  #30; 
  pb_1 = 0;
  #10;
  pb_1=1;
  #40;
  pb_1 = 0; 
 end 
      
endmodule