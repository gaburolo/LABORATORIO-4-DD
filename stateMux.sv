module stateMux(input byte counter,input logic [3:0] c1,
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
	input logic [3:0] c16,
	output logic[3:0] state
	);

	
	logic [3:0] currentState = 4'b0000;
	
	always_comb begin
		case (counter)
			0:currentState=c1;
			1:currentState=c2;
			2:currentState=c3;
			3:currentState=c4;
			4:currentState=c5;
			5:currentState=c6;
			6:currentState=c7;
			7:currentState=c8;
			8:currentState=c9;
			9:currentState=c10;
			10:currentState=c11;
			11:currentState=c12;
			12:currentState=c13;
			13:currentState=c14;
			14:currentState=c15;
			15:currentState=c16;
			default:currentState=4'b1001;
		endcase
	end	
	
	

	assign state = currentState;
	
	
	
endmodule