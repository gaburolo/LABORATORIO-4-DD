module MemoryGame (input logic clk,input logic rst, input logic [1:0] x, output logic[2:0] y);


	logic [2:0] estadoActual, estadoSiguiente;

	// lógica del estado actual (secuencial)
	
	always_ff @(posedge clk or posedge rst)
		if (rst) 
			estadoActual=0;
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
			3'b100: estadoSiguiente=3'b000;//cambio
			default: estadoSiguiente=2'b000;
		endcase
	// Lógica de las salidas
	//assign y= estadoSiguiente;
	end
endmodule