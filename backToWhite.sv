module backToWhite(input logic par, input byte selected1, input byte selected2,
	output logic par1,
	output logic par2,
	output logic par3,
	output logic par4,
	output logic par5,
	output logic par6,
	output logic par7,
	output logic par8,
	output logic par9,
	output logic par10,
	output logic par11,
	output logic par12,
	output logic par13,
	output logic par14,
	output logic par15,
	output logic par16
	);
	
	always_comb begin
		if((selected1 == 0 || selected2 == 0) && !par) par1=0;
		else par1=1;
		
		if((selected1 == 1 || selected2 == 1) && !par) par2=0;
		else par2=1;
		
		if((selected1 == 2 || selected2 == 2) && !par) par3=0;
		else par3=1;
		
		if((selected1 == 3 || selected2 == 3) && !par) par4=0;
		else par4=1;
		
		if((selected1 == 4 || selected2 == 4) && !par) par5=0;
		else par5=1;
		
		if((selected1 == 5 || selected2 == 5) && !par) par6=0;
		else par6=1;
		
		if((selected1 == 6 || selected2 == 6) && !par) par7=0;
		else par7=1;
		
		if((selected1 == 7 || selected2 == 7) && !par) par8=0;
		else par8=1;
		
		if((selected1 == 8 || selected2 == 8) && !par) par9=0;
		else par9=1;
		
		if((selected1 == 9 || selected2 == 9) && !par) par10=0;
		else par10=1;
		
		if((selected1 == 10 || selected2 == 10) && !par) par11=0;
		else par11=1;
		
		if((selected1 == 11 || selected2 == 11) && !par) par12=0;
		else par12=1;
		
		if((selected1 == 12 || selected2 == 12) && !par) par13=0;
		else par13=1;
		
		if((selected1 == 13 || selected2 == 13) && !par) par14=0;
		else par14=1;
		
		if((selected1 == 14 || selected2 == 14) && !par) par15=0;
		else par15=1;
		
		if((selected1 == 15 || selected2 == 15) && !par) par16=0;
		else par16=1;
	end
	
endmodule