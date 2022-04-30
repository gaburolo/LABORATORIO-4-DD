module memTurn(input logic clk, input logic rst, input logic select, input logic [3:0] state, input logic empty,
	input logic player, output logic[1:0] x, output byte counterJ1, output byte counterJ2);
	byte counter = 0;
	
	logic v1;
	logic v2;
	
	always_ff @(posedge (clk) or negedge rst)
		if(rst === 1'b0) 
			begin 
				counter <= 0;
				counterJ1 <= 0;
				counterJ2 <= 0;
			end
		else
		begin
			if (select==1 && empty) 
				begin
					if(counter >= 1) begin
						v2 = state;
						x=01;
						counter <= 0;
						
						if(v1 == v2)
							begin
								if(player == 0) counterJ1 <= counterJ1 + 1;
								else counterJ2 <= counterJ2 + 1;
							end
						
						end
					else counter <= counter + 1;
					v1 = state;
				end
			else
				x=00;
		end
			
		
endmodule