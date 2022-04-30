module emptyC(input byte counter,input logic [3:0] c1,
	input logic [3:0] c2,
	input logic [3:0] c3,
	input logic [3:0] c4,
	input logic [3:0] c5,
	input logic [3:0] c6,
	input logic [3:0] c7,
	input logic [3:0] c8,
	input logic [3:0] c9,
	input logic [3:0] c10,
	input logic [3:0] c11,
	input logic [3:0] c12,
	input logic [3:0] c13,
	input logic [3:0] c14,
	input logic [3:0] c15,
	input logic [3:0] c16, output logic empty
	//,output logic[3;0] state
	);

	
	logic [3:0] state = 4'b0000;
	
	always_comb begin
		case (counter)
			0:state=c1;
			1:state=c2;
			2:state=c3;
			3:state=c4;
			4:state=c5;
			5:state=c6;
			6:state=c7;
			7:state=c8;
			8:state=c9;
			9:state=c10;
			10:state=c11;
			11:state=c12;
			12:state=c13;
			13:state=c14;
			14:state=c15;
			15:state=c16;
			default:state=4'b1001;
		endcase 
	end	
	
	
	assign empty = (state === 4'b0000) || (state === 4'b1111);

	
	
	
endmodule