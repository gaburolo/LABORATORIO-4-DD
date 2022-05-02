module memTurn(input logic clk, input logic rst, input logic select, input logic [3:0] state, input logic empty,
	input logic player, output logic[1:0] x);
	byte counter = 0;
	byte counterJ1 = 0;
	byte counterJ2 = 0;
	logic[3:0] v1;
	logic[3:0] v2;
	
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
						v2 <= state;
						
						// Valida si hay un ganador
						if((counterJ1 + counterJ2) == 8)
							begin
								if(counterJ1 > counterJ2 || counterJ1 < counterJ2) x <= 10;
								else x <= 11;
							end
						
						// Incrementa puntos
						else if(v1 == v2)
							begin
								if(player == 0) counterJ1 <= counterJ1 + 1;
								else counterJ2 <= counterJ2 + 1;
							end
						
						x <= 01;
						counter <= 0;
						
						end
					else begin 
						counter <= counter + 1;
						v1 <= state; 
					end
				end
			else
				x <= 00;
		end
			
		
endmodule