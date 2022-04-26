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
	output byte counter = 0
	//output logic stop_timer,
	//output byte won_play [2:0]
	);
	logic player;
	
	logic par;
	logic finish;
	
	assign player=1;
	assign par=0;
	assign finish=0;

	casilla ca1(.clk_Temp(clk),.counter(counter === 0), .label(4'b0001), 
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c1));
	casilla ca2(.clk_Temp(clk),.counter(counter === 1), .label(4'b0010), 
					.rst(rst), .player(player), .select(select), 
					.par(par), .new_state(c2));
	casilla ca3(.clk_Temp(clk),.counter(counter === 2), .label(4'b0011), 
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
	
	
	




always_ff @(posedge (move) or negedge rst)
		if(rst === 1'b0) counter <= 0;
		else
		begin
			if(!finish) begin
				if (counter > 5) counter <= 0;
				//else if(stop_timer) counter <= random;
				else counter <= counter + 1;
			end
		end
endmodule