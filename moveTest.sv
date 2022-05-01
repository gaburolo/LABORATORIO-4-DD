module moveTest();
	//parameter PERIOD = 1;
	logic clk;
	logic rst;
	logic move;
	logic select;	
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
	byte counter = 0;
	
	move utt(
		.clk(clk),
		.rst(rst),
		.move(move),
		.select(select),
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
		.counter(counter)
	);
	
	//always #PERIOD clk=~clk;
	always begin 
    clk=~clk;#5;
	end
	initial begin
		 clk=0;
		 rst=1;
		 clk=0;
		 #5;
		 rst=0;
		 #5;
		 rst=1;
		 #5
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