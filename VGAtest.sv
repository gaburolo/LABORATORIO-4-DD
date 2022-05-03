module VGAtest();
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

	logic CLK50MHZ;
	logic CLK25MHZ;
	logic [3:0] casilla;
	logic VGA_HS;
	logic VGA_VS;
	logic [7:0] VGA_R;
	logic [7:0] VGA_G;
	logic [7:0] VGA_B;
	logic reset;
	logic jugador;

	
	
VGA control(.clk(CLK50MHZ), .rst(reset), .c1(c1),
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
		.Red(VGA_R),.Green(VGA_G), .Blue(VGA_B),
		.hsync(VGA_HS), .vsync(VGA_VS), 
		.vgaclk(CLK25MHZ));

initial begin
	CLK50MHZ=0;
	jugador=0;
	casilla=1;
 
	CLK25MHZ=0;
end



always begin
	CLK50MHZ=~CLK50MHZ;#50;
end

always begin
	CLK25MHZ=~CLK25MHZ;#100;
end
endmodule