module memoryGameTest();
logic clk;
logic rst; 
logic [1:0] x; 
logic y;
logic player;



MemoryGame m1(.clk(clk), .rst(rst), .x(x), .endState(y), .player(player));
always begin 
	clk=~clk;#5;
end
initial begin
	clk=0;
	rst=1;
	#5;
	rst=0;
	x=01;
	#5;
	x=00;
	#5;
	x=10;
	#5;
	rst=1;
	#5;
	rst=0;
	x=01;
	#5;
	x=00;
	#5;
	x=01;
	#5;
	x=00;
	#5;
	x=10;
	#5;
end
 
endmodule