module casilla(input logic clk_Temp, input logic counter, input logic[3:0] label, input logic rst, input logic player, input logic select, input logic par,
					output logic [3:0] new_state, output logic[3:0] label2);
					
	logic clk;
	assign clk = clk_Temp ;
	logic [3:0] actual_state = 4'b0000;
	
	always_ff @(posedge clk or negedge rst)
		if (!rst) actual_state <= 4'b0000;
		else actual_state <= new_state;

	
		
	always_comb begin
		case (actual_state)
			4'b0000: if(counter) new_state = 4'b1111;else new_state = 4'b0000;//sirve para probar si se toma la casilla adecuada
			4'b1111: if(select) new_state <= label;else if(!counter) new_state = 4'b0000; else new_state = 4'b1111;//Esta en casilla
			label:if(!par) new_state=4'b0000;else new_state=label;//Asigno el valor predeterminado
			//4'b1001: new_state=4'b1001;
			//4'b1010: new_state=4'b1010;
			
			default:new_state=4'b0000;
			
		endcase 
	end	
	assign label2=label;

endmodule