module MemoryGame (input logic clk,input logic rst, input logic [1:0] x, output logic endState, output logic player, output logic [2:0] gameState);


	logic [2:0] estadoActual, estadoSiguiente;

	// lógica del estado actual (secuencial)
	
	always_ff @(posedge clk or negedge rst)
		if (!rst) 
			estadoActual=3'b000;
		else
			estadoActual=estadoSiguiente;
			
	// Lógica del estado siguiente (combinacional)
	
	always_comb begin
		case (estadoActual)
			3'b000: 
			case(x)
				2'b01: estadoSiguiente=3'b001;
				2'b10: estadoSiguiente=3'b010;
				2'b11: estadoSiguiente=3'b100;
				default estadoSiguiente=3'b000;
			endcase//igual
			3'b001:
			case(x)
				2'b01: estadoSiguiente=3'b000;
				2'b10: estadoSiguiente=3'b011;
				2'b11: estadoSiguiente=3'b100;
				default estadoSiguiente=3'b001;
			endcase
			3'b010: estadoSiguiente=3'b010;//cambio
			3'b011: estadoSiguiente=3'b011;//cambio
			3'b100: estadoSiguiente=3'b100;//cambio
			default: estadoSiguiente=3'b000;
		endcase
	// Lógica de las salidas
	
	end
	assign endState = (estadoActual == 3'b010) || (estadoActual == 3'b011) || (estadoActual == 3'b100);
	assign player = (estadoActual == 3'b001);
	assign gameState = estadoActual;
	
endmodule