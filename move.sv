module move(
	input logic clk,
	input logic rst,
	input logic move,
	input logic select,	
	output logic [3:0] c1,
	output logic [3:0] c2,
	output logic [3:0] c3,
	output logic [3:0] c4,
	output logic [3:0] c5,
	output logic [3:0] c6,
	output logic [3:0] c7,
	output logic [3:0] c8,
	output logic [3:0] c9,
	output logic [3:0] c10,
	output logic [3:0] c11,
	output logic [3:0] c12,
	output logic [3:0] c13,
	output logic [3:0] c14,
	output logic [3:0] c15,
	output logic [3:0] c16,
	output byte counter = 0,
	output logic [3:0] state
	//output logic stop_timer,
	//output byte won_play [2:0]
	);
	logic player;
	
	logic par;
	logic finish;
	logic empty;
	//assign player=1;
	assign par=0;
	//assign finish=0;
	logic [1:0] x;
	
	byte counterJ1 = 0; // Win cond
	byte counterJ2 = 0; // Win cond
	
	MemoryGame game(
		.clk(clk),
		.rst(rst),
		.x(x),
		.endState(finish),
		.player(player)
	);
	
	

	casilla ca1(.clk_Temp(clk),.counter(counter === 0), .label(4'b0001), 
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c1));
	casilla ca2(.clk_Temp(clk),.counter(counter === 1), .label(4'b0011), 
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c2));
	casilla ca3(.clk_Temp(clk),.counter(counter === 2), .label(4'b0010), 
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c3));
	casilla ca4(.clk_Temp(clk),.counter(counter === 3), .label(4'b0100),
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c4));
	casilla ca5(.clk_Temp(clk),.counter(counter === 4), .label(4'b0101),
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c5));
	casilla ca6(.clk_Temp(clk),.counter(counter === 5), .label(4'b0110), 
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c6));
	casilla ca7(.clk_Temp(clk),.counter(counter === 6), .label(4'b0111), 
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c7));
	casilla ca8(.clk_Temp(clk),.counter(counter === 7), .label(4'b1000), 
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c8));
	casilla ca9(.clk_Temp(clk),.counter(counter === 8), .label(4'b0110), 
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c9));
	casilla ca10(.clk_Temp(clk),.counter(counter === 9), .label(4'b0011), 
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c10));
	casilla ca11(.clk_Temp(clk),.counter(counter === 10), .label(4'b0111), 
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c11));
	casilla ca12(.clk_Temp(clk),.counter(counter === 11), .label(4'b0100), 
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c12));
	casilla ca13(.clk_Temp(clk),.counter(counter === 12), .label(4'b1000), 
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c13));
	casilla ca14(.clk_Temp(clk),.counter(counter === 13), .label(4'b0001), 
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c14));
	casilla ca15(.clk_Temp(clk),.counter(counter === 14), .label(4'b0101), 
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c15));
	casilla ca16(.clk_Temp(clk),.counter(counter === 15), .label(4'b0010), 
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c16));
	
	
	
	emptyC eC(.counter(counter),.c1(c1),.c2(c2),.c3(c3),.c4(c4), .c5(c5),
	.c6(c6), .c7(c7), .c8(c8),	.c9(c9),	.c10(c10), .c11(c11), .c12(c12), 
	.c13(c13), .c14(c14), .c15(c15), .c16(c16), .empty(empty), .state(state)
	);
	
	memTurn mt(.clk(clk), .rst(rst), .select(select), .state(state), .empty(empty),
	.player(player), .x(x), .counterJ1(counterJ1), .counterJ2(counterJ2));

	always_ff @(posedge (move) or negedge rst)
		if(rst === 1'b0) counter <= 0;
		else
		begin
			if(!finish) begin
				if (counter > 15) counter <= 0;
				//aqui
				else counter <= counter + 1;
			end
		end
	
endmodule




//else if(stop_timer) counter <= random;