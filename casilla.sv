module casilla(input logic clk_Temp, input logic[3:0] label, input logic rst, input logic player, input logic select, input logic par,
					output logic [3:0] new_state);
					
	logic clk;
	assign clk = clk_Temp;
	logic [3:0] actual_state = 4'b0000;
	
	always_ff @(posedge clk or negedge rst)
		if (!rst) actual_state <= 4'b0000;
		else actual_state <= new_state;

	
		
	always_comb begin
		case (actual_state)
			4'b0000: if(select) new_state <= label;else new_state = 4'b0000;
			label:if(par) begin 
					case(player)
						0: new_state=4'b1001;
						1: new_state=4'b1010;
					endcase
				end
				else new_state=label;
				
			4'b1001: new_state=4'b1001;
			4'b1010: new_state=4'b1010;
			default:new_state=4'b0000;
			
		endcase 
	end	
		

endmodule