module timer (input C_50Mhz,
				  output reg C_1Hz = 1, output logic timeUp);

reg[24:0] contador = 0; //Variable Contador equivale a 25 millones de estados.

byte loops = 0;

always @(posedge C_50Mhz)
	begin
		contador = contador + 1; //0.5 segundos LED encendido
		if(contador == 24_000_000)
		begin
			if(loops == 45) begin
				contador = 0;
				loops = 0;
				timeUp = 1;
				C_1Hz = ~C_1Hz; //0.5 segundos LED apagado
			end
			else begin 
				loops = loops + 1;
				timeUp = 0;
			end
		end
		else if(contador ==12_000_000)
			timeUp = 0;
	end
endmodule 