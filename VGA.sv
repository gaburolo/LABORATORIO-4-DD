module VGA(input logic clk, rst,
	input logic [3:0] c1,
	input logic [3:0] c2,
	input logic [3:0] c3,
	input logic [3:0] c4,
	input logic [3:0] c5,
	input logic [3:0] c6,
	input logic [3:0] c7,
	input logic [3:0] c8,
	input logic [3:0] c9,
	input logic [3:0] c10,
	input logic [3:0] c11,
	input logic [3:0] c12,
	input logic [3:0] c13,
	input logic [3:0] c14,
	input logic [3:0] c15,
	input logic [3:0] c16,
	output logic [7:0] Red, Green, Blue,
	output logic hsync, vsync, vgaclk);





//	assign R=8'h33;
//	assign G=8'h11;
//	assign B=8'h55;
	assign sync=1'b0;
	
	logic [3:0] block = 4'b0000;
	
	dividerClock cmh(clk, clk2);
	SYNC s1(.VGA_CLK_IN(clk2), 
		.rst(rst),
		.block(block),
		.c1(c1),
		.c2(c2),
		.c3(c3),
		.c4(c4),
		.c5(c5),
		.c6(c6),
		.c7(c7),
		.c8(c8),
		.c9(c9),
		.c10(c10),
		.c11(c11),
		.c12(c12),
		.c13(c13),
		.c14(c14),
		.c15(c15),
		.c16(c16),
		.o_hsync(hsync), 
		.o_vsync(vsync), 
		.VGA_CLK_OUT(vgaclk),
		.out_R(Red),
		.out_B(Blue),
		.out_G(Green) 
		
		);
		
		
endmodule 