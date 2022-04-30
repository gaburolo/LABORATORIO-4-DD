module memTurn(input logic clk, input logic rst, input logic select, input logic empty,
	//input logic [3;0] state.
	input logic player, output logic[1:0] x);
	byte counter = 0;
	//v1
	//v2
	always_ff @(posedge (clk) or negedge rst)
		if(rst === 1'b0) counter <= 0;
		else
		begin
			if (select==1 && empty) 
				begin
					if(counter >= 1) begin
						//v2=state
						x=01;
						counter <= 0;
						end
					else counter <= counter + 1;
					//v1=state
				end
			else
				x=00;
		end

		//assign impar = v1!=v2 
		//byte counterJ1, counterJ2
		//always_ff @(posedge (!impar) or negedge rst)
			//if(player==0)
			//elseif(player==1)
		//end
endmodule