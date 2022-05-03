module machine(input logic clk,input logic rst, input logic move, output byte counter2);
	
	
	byte counter;
	byte counter1;
	always_ff @(posedge clk or negedge rst)
		if(rst === 1'b0) counter1 <= 0;
		else
				counter1=counter;

		
	always_comb begin
		case(counter1)
			0: if(move) counter=1; else counter=0;
			1: if(move) counter=2; else counter=1;
			2: if(move) counter=3; else counter=2;
			3: if(move) counter=4; else counter=3;
			default: counter=0;
			
		endcase
	end
	assign counter2=counter1;
	
endmodule