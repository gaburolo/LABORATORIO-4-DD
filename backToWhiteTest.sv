module backToWhiteTest();
	logic par;  
	byte selected1;  
	byte selected2;
	logic par1;
	logic par2;
	logic par3;
	logic par4;
	logic par5;
	logic par6;
	logic par7;
	logic par8;
	logic par9;
	logic par10;
	logic par11;
	logic par12;
	logic par13;
	logic par14;
	logic par15;
	logic par16;
	
	backToWhite b2w(.par(par), .selected1(selected1), .selected2(selected2),
	.par1(par1), .par2(par2), .par3(par3), .par4(par4),
	.par5(par5), .par6(par6), .par7(par7), .par8(par8),
	.par9(par9), .par10(par10), .par11(par11), .par12(par12),
	.par13(par13), .par14(par14), .par15(par15), .par16(par16));
	
	initial begin
		
		#5;
		selected1=3;
		selected2=6;
		#5;
		par=0;
		#5;
		par=1;
		#10;
		
	
	end
	
endmodule