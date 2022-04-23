module casillaTest();
logic clk;
logic[3:0] label;
logic rst;
logic player;
logic select;
logic par;
logic [3:0] new_state;


casilla c1(.clk_Temp(clk), .label(label), .rst(rst), .player(player), .select(select), .par(par), .new_state(new_state));


initial begin
	

	clk=0;
	par=0;
	
	label=1000;
	player=1;
	select=1;
	rst=1;
	#5;clk=1;#5;clk=0;
	
	
	select=0;
	#5;
	clk=1;#5;clk=0;#5;
	clk=1;#5;clk=0;#5;
	clk=1;#5;clk=0;#5;
	clk=1;#5;clk=0;#5;
	clk=1;#5;clk=0;#5;
	clk=1;#5;clk=0;#5;
	par=1;
	clk=1;#5;clk=0;#5;
	clk=1;#5;clk=0;#5;
	clk=1;#5;clk=0;#5;
	clk=1;#5;clk=0;#5;
	clk=1;#5;clk=0;#5;
	clk=1;#5;clk=0;#5;
	
end

endmodule