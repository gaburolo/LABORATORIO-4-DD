module memTurn(input logic clk, input logic rst, input logic select, input logic player, output logic[1:0] x);
	byte counter = 0;
	always_ff @(posedge (clk) or negedge rst)
		if(rst === 1'b0) counter <= 0;
		else
		begin
			if (select==1) 
				begin
					if(counter >= 1) begin
					
						x=01;
						counter <= 0;
						end
					else counter <= counter + 1;
				end
			else
				x=00;
		end

endmodule