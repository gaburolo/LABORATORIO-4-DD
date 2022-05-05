module main(
	input logic clk,
   input logic rst,
	input logic move,
	input logic select,
	output logic [7:0] R,
   output logic [7:0] G,
   output logic [7:0] B,
   output logic hsync,
   output logic vsync,
   output logic vgaclk,
	output logic [6:0] player1,
	output logic [6:0] player2
   );
	
	logic [3:0] state;
	logic [3:0] c1;
	logic [3:0] c2;
	logic [3:0] c3;
	logic [3:0] c4;
	logic [3:0] c5;
	logic [3:0] c6;
	logic [3:0] c7;
	logic [3:0] c8;
	logic [3:0] c9;
	logic [3:0] c10;
	logic [3:0] c11;
	logic [3:0] c12;
	logic [3:0] c13;
	logic [3:0] c14;
	logic [3:0] c15;
	logic [3:0] c16;
	
	byte counter;
	logic player;
	logic [2:0] block;
	logic timeUp;
	
	logic clk2;
	Clock_Regulator cmh(clk, clk2);
	
	logic clk3;
	timer tmp(clk, clk3, timeUp);
	
	//Inicializa move
	move utt(
		.clk(clk2),
		.timeUp(timeUp),
		.rst(rst),
		.move(!move),
		.select(!select),
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
		.counter(counter),
		.player(player),
		.state(state),
		.gameState(block)
	);
	
	
	VGA control(
		.clk(clk), 
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
		.Red(R), 
		.Green(G), 
		.Blue(B), 
		.hsync(hsync), 
		.vsync(vsync), 
		.vgaclk(vgaclk));
	
endmodule