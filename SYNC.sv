`define ESQ_SUP_X0 320+7
`define ESQ_SUP_Y0 130+7

`define ESQ_SUP_X1 395+7
`define ESQ_SUP_Y1 130+7

`define ESQ_SUP_X2 470+7
`define ESQ_SUP_Y2 130+7

`define ESQ_SUP_X3 545+7
`define ESQ_SUP_Y3 130+7


`define ESQ_SUP_X4 320+7
`define ESQ_SUP_Y4 205+7

`define ESQ_SUP_X5 395+7
`define ESQ_SUP_Y5 205+7

`define ESQ_SUP_X6 470+7
`define ESQ_SUP_Y6 205+7

`define ESQ_SUP_X7 545+7
`define ESQ_SUP_Y7 205+7


`define ESQ_SUP_X8 320+7
`define ESQ_SUP_Y8 280+7

`define ESQ_SUP_X9 395+7
`define ESQ_SUP_Y9 280+7

`define ESQ_SUP_X10 470+7
`define ESQ_SUP_Y10 280+7

`define ESQ_SUP_X11 545+7
`define ESQ_SUP_Y11 280+7


`define ESQ_SUP_X12 320+7
`define ESQ_SUP_Y12 355+7

`define ESQ_SUP_X13 395+7
`define ESQ_SUP_Y13 355+7

`define ESQ_SUP_X14 470+7
`define ESQ_SUP_Y14 355+7

`define ESQ_SUP_X15 545+7
`define ESQ_SUP_Y15 355+7


`define WHITE 24'hFFFFFF
`define BLUE 24'h264653

`define GREEN 24'h00FF00
`define PURPLE 24'hCC99FF


module SYNC(
	input logic VGA_CLK_IN,
	output logic o_hsync,
	output logic o_vsync,
	output logic VGA_CLK_OUT,
	output logic[7:0] o_red,
	output logic[7:0] o_blue,
	output logic[7:0] o_green,
	input logic[3:0] block,
	input logic player
);



	//Contadores para coordenadas
	reg[9:0] counter_x=0;
	reg[9:0] counter_y=0;
	
	//VALORES RBG
	reg[7:0] r_red=0;
	reg[7:0] r_blue=0;
	reg[7:0] r_green=0;
	
	
	//FOR DOBLE
	always @(posedge VGA_CLK_IN)
		begin
			if(counter_x < 799)
				counter_x <= counter_x+1;
			else
				counter_x <= 0;
		end
		
	always @(posedge VGA_CLK_IN)
		begin
			if(counter_x == 799)
				begin
					if(counter_y < 525)
						counter_y <= counter_y+1;
					else
						counter_y <= 0;
				end
		end
		
		
		
	//---Cuadrados
	always @(posedge VGA_CLK_IN)
	begin
		if((counter_x <=315 || 620 <= counter_x) || (counter_y <=125 || 430 <= counter_y))//margen
			begin 
				{r_red,r_green,r_blue} <= `WHITE;
			end
		
		if((315 < counter_x && counter_x < 620) || (125 < counter_y && counter_y < 130))//margen
			begin 
				{r_red,r_green,r_blue} <= `BLUE;
			end
		//Faltan partes
	end
	
	assign o_hsync = (0 <= counter_x && counter_x <96) ? 1:0;
	assign o_vsync = (0 <= counter_y && counter_y <2) ? 1:0;
	
	assign VGA_CLK_OUT = VGA_CLK_IN;
	
	assign o_red = (counter_x > 144 && counter_x <= 783 && counter_x > 35 && counter_x <= 514)? r_red:8'h00;
	assign o_blue = (counter_x > 144 && counter_x <= 783 && counter_x > 35 && counter_x <= 514)? r_blue:8'h00;
	assign o_green = (counter_x > 144 && counter_x <= 783 && counter_x > 35 && counter_x <= 514)? r_green:8'h00;
	
endmodule