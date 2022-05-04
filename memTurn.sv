module memTurn(input logic clk, input logic rst, input byte counter, input logic select, input logic [3:0] state, input logic empty,
	input logic player, output logic[1:0] x, output logic par, output byte selected1, output byte selected2);
	
	byte turnCounter = 0;
	byte counterJ1 = 0;
	byte counterJ2 = 0;
	
	logic[3:0] flag;
	
	logic[3:0] v1;
	logic[3:0] v2;
	
	always_ff @(posedge (clk) or negedge rst)
		if(rst === 1'b0) 
			begin 
				turnCounter <= 0;
				counterJ1 <= 0;
				counterJ2 <= 0;
				par <= 1;
			end
		else
		begin
			// Valida si hay un ganador
			if((counterJ1 + counterJ2) == 8)
				begin
					
					if(counterJ1 > counterJ2 || counterJ1 < counterJ2) x <= 10;
					else x <= 11;
				end
				
			else if (select==1 && empty) 
				begin
					if(turnCounter == 1) begin
						v2 = state;
						selected2 = counter;
						
						// Incrementa puntos
						if(v1 === v2)
							begin
								flag = 4'b1010;
								
								par=1;
								if(player == 0) counterJ1 <= counterJ1 + 1;
								else counterJ2 <= counterJ2 + 1;
							end
						else par=0;
						
						x <= 01;
						turnCounter <= 0;
						
						end
					else begin 
						turnCounter = turnCounter + 1;
						v1 = state; 
						selected1 = counter;
					end
				end
			else begin
				par = 1;
				x <= 00;
			end
		end
			
		
endmodule