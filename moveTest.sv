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
	initial begin 
		
		
		rst=0;
		#5;
		move = 0;
		rst = 1;
		select = 0;
		clk=0;
		
		#5;
		
		clk=1;#5;clk=0;
		move = 1;//1
		#5;
		clk=1;#5;clk=0;
		#5;
		move = 0;
		clk=1;#5;clk=0;
		#5;
		select = 1;
		clk=1;#5;clk=0;
		#5;
		select= 0;
		move = 1;//2
		clk=1;#5;clk=0;
		#5;
		move = 0;
		clk=1;#5;clk=0;
		#5;
		move = 1;//3
		clk=1;#5;clk=0;
		#5;
		move = 0;
		clk=1;#5;clk=0;
		
		#5;
		move = 1;//4
		clk=1;#5;clk=0;
		#5;
		move = 0;
		clk=1;#5;clk=0;
		
		#5;
		move = 1;//5
		clk=1;#5;clk=0;
		#5;
		move = 0;
		clk=1;#5;clk=0;
		
		#5;
		move = 1;//6
		clk=1;#5;clk=0;
		#5;
		move = 0;
		clk=1;#5;clk=0;
		
		
		#5;
		move = 1;//7
		clk=1;#5;clk=0;
		#5;
		move = 0;
		clk=1;#5;clk=0;
		
		#5;
		move = 1;//8
		clk=1;#5;clk=0;
		#5;
		move = 0;
		clk=1;#5;clk=0;
		
		
		#5;
		move = 1;//9
		clk=1;#5;clk=0;
		#5;
		move = 0;
		clk=1;#5;clk=0;
		#5;
		
		select = 1;
		clk=1;#5;clk=0;
		#5;
		
		select= 0;//2
		clk=1;#5;clk=0;
		clk=1;#5;clk=0;
		clk=1;#5;clk=0;
		clk=1;#5;clk=0;
		
		$stop;
	end
endmodule