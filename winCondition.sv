module winCondition(input byte counterJ1, input byte counterJ2, output logic [1:0] x);
	
	assign endCond = (counterJ1 + counterJ2) == 8;
	
endmodule