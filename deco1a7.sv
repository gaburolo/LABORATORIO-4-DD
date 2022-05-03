module deco1a7(input logic [3:0] player, output logic [6:0] n_salida);
	 
	 always_comb
	  case (player)
		4'b0000 : n_salida = 7'b1000000;   
		4'b1111 : n_salida = 7'b1111001;
		4'b0001 : n_salida = 7'b0101010;
		default : n_salida = 7'b1111111;
    endcase

										
endmodule