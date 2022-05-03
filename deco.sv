module deco(input byte player, output logic [6:0] n_salida);
	 
	 always_comb
	  case (player)
		0 : n_salida = 7'b1000000;   
		1 : n_salida = 7'b1111001;
		2 : n_salida = 7'b0100100;
		default : n_salida = 7'b1;
    endcase

										
endmodule