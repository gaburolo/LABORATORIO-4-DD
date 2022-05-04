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
	output byte counter,
	output logic player,
	output logic [3:0] state,
	output logic empty
	//output logic stop_timer,
	//output byte won_play [2:0]
	);
	
	
	//logic [3:0] state;
	logic par = 0;
	
	byte selected1 = 16; byte selected2 = 16;
	
	logic par1; logic par2; logic par3; logic par4;
	logic par5; logic par6; logic par7; logic par8;
	logic par9; logic par10; logic par11; logic par12;
	logic par13; logic par14; logic par15; logic par16;
	
	//assign player=1;
	//assign finish=0;
	logic [1:0] x;
	
	byte counterJ1 = 0; // Win cond
	byte counterJ2 = 0; // Win cond
	
	logic [3:0] l1;
	logic [3:0] l2;
	logic [3:0] l3;
	logic [3:0] l4;
	logic [3:0] l5;
	logic [3:0] l6;
	logic [3:0] l7;
	logic [3:0] l8;
	logic [3:0] l9;
	logic [3:0] l10;
	logic [3:0] l11;
	logic [3:0] l12;
	logic [3:0] l13;
	logic [3:0] l14;
	logic [3:0] l15;
	logic [3:0] l16;
	
	
	
	
	
	MemoryGame game(
		.clk(clk),
		.rst(rst),
		.x(x),
		.endState(finish),
		.player(player)
	);
	
	

	casilla ca1(.clk_Temp(clk),.counter(counter === 0), .label(4'b0001), 
					.rst(rst), .player(player), .select(select), 
					.par(par1), .new_state(c1),.label2(l1));
	casilla ca2(.clk_Temp(clk),.counter(counter === 1), .label(4'b0011), 
					.rst(rst), .player(player), .select(select), 
					.par(par2), .new_state(c2),.label2(l2));
	casilla ca3(.clk_Temp(clk),.counter(counter === 2), .label(4'b0010), 
					.rst(rst), .player(player), .select(select), 
					.par(par3), .new_state(c3),.label2(l3));
	casilla ca4(.clk_Temp(clk),.counter(counter === 3), .label(4'b0100),
					.rst(rst), .player(player), .select(select), 
					.par(par4), .new_state(c4),.label2(l4));
	casilla ca5(.clk_Temp(clk),.counter(counter === 4), .label(4'b0101),
					.rst(rst), .player(player), .select(select), 
					.par(par5), .new_state(c5),.label2(l5));
	casilla ca6(.clk_Temp(clk),.counter(counter === 5), .label(4'b0110), 
					.rst(rst), .player(player), .select(select), 
					.par(par6), .new_state(c6),.label2(l6));
	casilla ca7(.clk_Temp(clk),.counter(counter === 6), .label(4'b0111), 
					.rst(rst), .player(player), .select(select), 
					.par(par7), .new_state(c7),.label2(l7));
	casilla ca8(.clk_Temp(clk),.counter(counter === 7), .label(4'b1000), 
					.rst(rst), .player(player), .select(select), 
					.par(par8), .new_state(c8),.label2(l8));
	casilla ca9(.clk_Temp(clk),.counter(counter === 8), .label(4'b0110), 
					.rst(rst), .player(player), .select(select), 
					.par(par9), .new_state(c9),.label2(l9));
	casilla ca10(.clk_Temp(clk),.counter(counter === 9), .label(4'b0011), 
					.rst(rst), .player(player), .select(select), 
					.par(par10), .new_state(c10),.label2(l10));
	casilla ca11(.clk_Temp(clk),.counter(counter === 10), .label(4'b0111), 
					.rst(rst), .player(player), .select(select), 
					.par(par11), .new_state(c11),.label2(l11));
	casilla ca12(.clk_Temp(clk),.counter(counter === 11), .label(4'b0100), 
					.rst(rst), .player(player), .select(select), 
					.par(par12), .new_state(c12),.label2(l12));
	casilla ca13(.clk_Temp(clk),.counter(counter === 12), .label(4'b1000), 
					.rst(rst), .player(player), .select(select), 
					.par(par13), .new_state(c13),.label2(l13));
	casilla ca14(.clk_Temp(clk),.counter(counter === 13), .label(4'b0001), 
					.rst(rst), .player(player), .select(select), 
					.par(par14), .new_state(c14),.label2(l14));
	casilla ca15(.clk_Temp(clk),.counter(counter === 14), .label(4'b0101), 
					.rst(rst), .player(player), .select(select), 
					.par(par15), .new_state(c15),.label2(l15));
	casilla ca16(.clk_Temp(clk),.counter(counter === 15), .label(4'b0010), 
					.rst(rst), .player(player), .select(select), 
					.par(par16), .new_state(c16),.label2(l16));
	
	
	
	emptyC eC(.counter(counter),.c1(c1),.c2(c2),.c3(c3),.c4(c4), .c5(c5),
	.c6(c6), .c7(c7), .c8(c8),	.c9(c9),	.c10(c10), .c11(c11), .c12(c12), 
	.c13(c13), .c14(c14), .c15(c15), .c16(c16), .empty(empty)
	);
	
	memTurn mt(.clk(clk), .rst(rst), .counter(counter), .select(select), .state(state), .empty(empty),
	.player(player), .x(x), .par(par), .selected1(selected1), .selected2(selected2));
	
	stateMux st(.counter(counter),.c1(l1),.c2(l2),.c3(l3),.c4(l4), .c5(l5),
	.c6(l6), .c7(l7), .c8(l8),	.c9(l9),	.c10(l10), .c11(l11), .c12(l12),
	.c13(l13), .c14(l14), .c15(l15), .c16(l16), .state(state)
	);
	
	backToWhite b2w(.par(par), .selected1(selected1), .selected2(selected2),
	.par1(par1), .par2(par2), .par3(par3), .par4(par4),
	.par5(par5), .par6(par6), .par7(par7), .par8(par8),
	.par9(par9), .par10(par10), .par11(par11), .par12(par12),
	.par13(par13), .par14(par14), .par15(par15), .par16(par16));
	
	always_ff @(posedge (move) or negedge rst)
		if(rst === 1'b0) counter <= 0;
		else
		begin
			if(!finish) begin
				if (counter >= 15) counter <= 0;
				//aqui
				else counter <= counter + 1;
			end
		end
	
endmodule




//else if(stop_timer) counter <= random;