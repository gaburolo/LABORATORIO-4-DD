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
	
	always_ff @(posedge(!par)) begin
		case (selected1)
			0:par1<=0;
			1:par2<=0;
			2:par3<=0;
			3:par4<=0;
			4:par5<=0;
			5:par6<=0;
			6:par7<=0;
			7:par8<=0;
			8:par9<=0;
			9:par10<=0;
			10:par11<=0;
			11:par12<=0;
			12:par13<=0;
			13:par14<=0;
			14:par15<=0;
			15:par16<=0;
		endcase
		
		case (selected2)
			0:par1<=0;
			1:par2<=0;
			2:par3<=0;
			3:par4<=0;
			4:par5<=0;
			5:par6<=0;
			6:par7<=0;
			7:par8<=0;
			8:par9<=0;
			9:par10<=0;
			10:par11<=0;
			11:par12<=0;
			12:par13<=0;
			13:par14<=0;
			14:par15<=0;
			15:par16<=0;
		endcase
	end
	
endmodule