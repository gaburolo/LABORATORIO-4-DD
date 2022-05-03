module moveTest();
	//parameter PERIOD = 1;
	logic CLK50MHZ;
	//logic clk;
	logic rst;
	logic move;
	logic select;	
	
	
	
	
	
	logic [7:0] R;
	logic [7:0] G;
	logic [7:0] B;
	logic hsync;
   logic vsync;
   logic vgaclk;
	logic [6:0] player1;
	logic [6:0] player2;

	
	main m1(
	.clk(CLK50MHZ),
	.rst(rst),
	.move(!move),
	.select(!select),
	.R(R),
   .G(G),
   .B(B),
   .hsync(hsync),
   .vsync(vsync),
   .vgaclk(vgaclk),
	.player1(player1),
	.player2(player2)
   );
	
	//always #PERIOD clk=~clk;
	always begin
		CLK50MHZ=~CLK50MHZ;#5;
	end
	initial begin
		 CLK50MHZ=0;
		 rst=1;
		 CLK50MHZ=0;
		 #5;
		 rst=0;
		 #5;
		 rst=1;
		 #5;
		 select=1;
		 #20;
		 select=0;
		 #20;
		 move=1; // c02
		 #5;
		 move=0; 
		 #5;
		 move=1; // c03
		 #5;
		 move=0; 
		 #5;
		 move=1; // c04
		 #5;
		 move=0; 
		 #5;
		 move=1; // c05
		 #5;
		 move=0; 
		 #5;
		 move=1; // c06
		 #5;
		 move=0; 
		 #5;
		 move=1; // c07
		 #5;
		 move=0; 
		 #5;
		 move=1; // c08
		 #5;
		 move=0; 
		 #5;
		 move=1; // c09
		 #5;
		 move=0; 
		 #5;
		 move=1; // c10
		 #5;
		 move=0; 
		 #5;
		 move=1; // c11
		 #5;
		 move=0; 
		 #5;
		 move=1; // c12
		 #5;
		 move=0; 
		 #5;
		 move=1; // c13
		 #5;
		 move=0; 
		 #5;
		 move=1; // c14
		 #5;
		 move=0; 
		 #5;
		 select=1;
		 #10;
		 
		 
		 select=0;
		 #10;
		 move=1; // c15
		 #5;
		 move=0; 
		 #5;
		 select=1;
		 #10;
		 select=0;
		 #10;
		 move=1; // c16
		 #5;
		 move=0; 
		 #5;
		 move=1; // c01
		 #5;
		 move=0; 
		 #5;
		 move=1; // c02
		 #5;
		 move=0; 
		 #5;
		 move=1; // c03
		 #5;
		 move=0; 
		 #5;
		 move=1; // c04
		 #5;
		 move=0; 
		 #5;
		 move=1; // c05
		 #5;
		 move=0; 
		 #5;
		 select=1;
		 #10;
		 
		 
		 select=0;
		 #10;
		 move=1; // c06
		 #5;
		 move=0; 
		 #5;
		 select=1;
		 #10;
		 select=0;
		 #10;
		 move=1; // c07
		 #5;
		 move=0; 
		 #5;
		 move=1; // c08
		 #5;
		 move=0; 
		 #5;
		 move=1; // c09
		 #5;
		 move=0; 
		 #5;
		 select=1;
		 #10;
		 
		 
		 select=0;
		 #10;
		 move=1; // c10
		 #5;
		 move=0; 
		 #5;
		 select=1;
		 #10;
		 select=0;
		 #10;
		 move=1; // c11
		 #5;
		 move=0; 
		 #5;
		 move=1; // c12
		 #5;
		 move=0; 
		 #5;
		 move=1; // c13
		 #5;
		 move=0; 
		 #5;
		 move=1; // c14
		 #5;
		 move=0; 
		 #5;
		 move=1; // c15
		 #5;
		 move=0; 
		 #5;
		 move=1; // c16
		 #5;
		 move=0; 
		 #5;
		 move=1; // c01
		 #5;
		 move=0; 
		 #5;
		 move=1; // c02
		 #5;
		 move=0; 
		 #5;
		 select=1;
		 #10;
		 
		 
		 select=0;
		 #10;
		 move=1; // c03
		 #5;
		 move=0; 
		 #5;
		 select=1;
		 #10;
		 select=0;
		 #30;
		 move=1; // c04
		 #5;
		 move=0; 
		 #5;
		 move=1; // c05
		 #5;
		 move=0; 
		 #5;
		 move=1; // c06
		 #5;
		 move=0; 
		 #5;
		 move=1; // c07
		 #5;
		 move=0; 
		 #5;
		 move=1; // c08
		 #5;
		 move=0; 
		 #5;
		 move=1; // c09
		 #5;
		 move=0; 
		 #5;
		 move=1; // c10
		 #5;
		 move=0; 
		 #5;
		 move=1; // c11
		 #5;
		 move=0; 
		 #5;
		 move=1; // c12
		 #5;
		 move=0; 
		 #5;
		 move=1; // c13
		 #5;
		 move=0; 
		 #5;
		 move=1; // c14
		 #5;
		 move=0; 
		 #5;
		 move=1; // c15
		 #5;
		 move=0; 
		 #5;
		 move=1; // c16
		 #5;
		 move=0; 
		 #5;
		 select=1;
		 #10;
		 
		 
		 select=0;
		 #10;
		 move=1; // c01
		 #5;
		 move=0; 
		 #5;
		 move=1; // c02
		 #5;
		 move=0; 
		 #5;
		 move=1; // c03
		 #5;
		 move=0; 
		 #5;
		 move=1; // c04
		 #5;
		 move=0; 
		 #5;
		 select=1;
		 #10;
		 select=0;
		 #10;
		 move=1; // c05
		 #5;
		 move=0; 
		 #5;
		 move=1; // c06
		 #5;
		 move=0; 
		 #5;
		 move=1; // c07
		 #5;
		 move=0; 
		 #5;
		 move=1; // c08
		 #5;
		 move=0; 
		 #5;
		 move=1; // c09
		 #5;
		 move=0; 
		 #5;
		 move=1; // c10
		 #5;
		 move=0; 
		 #5;
		 move=1; // c11
		 #5;
		 move=0; 
		 #5;
		 move=1; // c12
		 #5;
		 move=0; 
		 #5;
		 select=1;
		 #10;
		 
		 
		 select=0;
		 #10;
		 move=1; // c13
		 #5;
		 move=0; 
		 #5;
		 select=1;
		 #10;
		 select=0;
		 #10;
		 move=1; // c14
		 #5;
		 move=0; 
		 #5;
		 move=1; // c15
		 #5;
		 move=0; 
		 #5;
		 move=1; // c16
		 #5;
		 move=0; 
		 #5;
		 move=1; // c01
		 #5;
		 move=0; 
		 #5;
		 move=1; // c02
		 #5;
		 move=0; 
		 #5;
		 move=1; // c03
		 #5;
		 move=0; 
		 #5;
		 move=1; // c04
		 #5;
		 move=0; 
		 #5;
		 move=1; // c05
		 #5;
		 move=0; 
		 #5;
		 move=1; // c06
		 #5;
		 move=0; 
		 #5;
		 move=1; // c07
		 #5;
		 move=0; 
		 #5;
		 move=1; // c08
		 #5;
		 move=0; 
		 #5;
		 select=1;
		 #10;
		 
		 
		 select=0;
		 #10;
		 move=1; // c09
		 #5;
		 move=0; 
		 #5;
		 move=1; // c10
		 #5;
		 move=0; 
		 #5;
		 move=1; // c11
		 #5;
		 move=0; 
		 #5;
		 select=1;
		 #10;
		 select=0;
		 #10;
		 move=1; // c12
		 #5;
		 move=0; 
		 #5;
		 move=1; // c13
		 #5;
		 move=0; 
		 #5;
		 move=1; // c14
		 #5;
		 move=0; 
		 #5;
		 move=1; // c15
		 #5;
		 move=0; 
		 #5;
		 move=1; // c16
		 #5;
		 move=0; 
		 #5;
		 move=1; // c01
		 #5;
		 move=0; 
		 #5;
		 move=1; // c02
		 #5;
		 move=0; 
		 #5;
		 move=1; // c03
		 #5;
		 move=0; 
		 #5;
		 move=1; // c04
		 #5;
		 move=0; 
		 #5;
		 move=1; // c05
		 #5;
		 move=0; 
		 #5;
		 move=1; // c06
		 #5;
		 move=0; 
		 #5;
		 move=1; // c07
		 #5;
		 move=0; 
		 #5;
		 select=1;
		 #10;
		 select=0;
		 #120;
		 $stop;

	end
endmodule