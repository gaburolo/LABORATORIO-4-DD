module VGA(input logic clk, reset, jugador,
							   input logic[3:0] movimiento,
								output logic [7:0] Red, Green, Blue,
								output logic hsync, vsync, vgaclk);

//	assign R=8'h33;
//	assign G=8'h11;
//	assign B=8'h55;
	assign sync=1'b0;
	
	
	
	dividerClock cmh(clk, clk2);
	SYNC s1(clk2,hsync,vsync,vgaclk,Red,Green,Blue,movimiento,jugador);
endmodule 