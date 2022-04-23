module VGAtest();
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

dividerClock dvd(clk, clk2);

VGA control(CLK50MHZ, reset, jugador,casilla,VGA_R, VGA_G, VGA_B,VGA_HS, VGA_VS, CLK25MHZ);
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