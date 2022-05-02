

`define WHITE 24'hFFFFFF
`define BLACK 24'h000000

`define GREEN 24'h00FF00
`define PURPLE 24'hCCFF99
`define CELESTE 24'h0D1E86
`define RED 24'hD10E49
`define BLUE 24'h0000FF
`define YELLOW 24'hD1C50E
`define ORANGE 24'hF39C12 
`define GRAY 24'h7F8C8D

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


	logic squareC01;logic squareC02;logic squareC11;logic squareC12;
	logic squareC21;logic squareC22;logic squareC31;logic squareC32;
	
	logic squareC41;logic squareC42;logic squareC51;logic squareC52;
	logic squareC61;logic squareC62;logic squareC71;logic squareC72;
	
	logic squareC81;logic squareC82;logic squareC91;logic squareC92;
	logic squareC101;logic squareC102;logic squareC111;logic squareC112;

	logic squareC121;logic squareC122;logic squareC131;logic squareC132;
	logic squareC141;logic squareC142;logic squareC151;logic squareC152;
	//Contadores para coordenadas
	reg[9:0] sx=0;
	reg[9:0] sy=0;
	//square <= ((sx > 350 && sx < 370) && (sy > 150 && sy < 170));
	//VALORES RBG
	reg[7:0] r_red=0;
	reg[7:0] r_blue=0;
	reg[7:0] r_green=0;
	
	
	//FOR DOBLE
	always @(posedge VGA_CLK_IN)
		begin
			if(sx < 799)
				sx <= sx + 1;
			else
				sx <= 0;
		end
		
	always @(posedge VGA_CLK_IN)
		begin
			if(sx == 799)
				begin
					if(sy < 525)
						sy <= sy + 1;
					else
						sy <= 0;
				end
		end
		
	
	always_comb begin
		squareC01 = (sx > 320+28 && sx < 390-28)  && (sy > 130 && sy < 200);
		squareC02 = (sx > 320 && sx < 390)  && (sy > 130+28 && sy <205-28 );
				 
		squareC11 = (sx > 395+28 && sx < 465-28)  && (sy > 130 && sy < 200);
		squareC12 = (sx > 395 && sx < 465)  && (sy > 130+28 && sy <205-28 );
				 
		squareC21 = (sx > 470+28 && sx < 540-28)  && (sy > 130 && sy < 200);
		squareC22 = (sx > 470 && sx < 540)  && (sy > 130+28 && sy <205-28 );
		
		squareC31 = (sx > 545+28 && sx < 615-28)  && (sy > 130 && sy < 200);
		squareC32 = (sx > 545 && sx < 615)  && (sy > 130+28 && sy <205-28 );
		
		
		squareC41 = (sx > 320+28 && sx < 390-28)  && (sy > 205 && sy < 275);
		squareC42 = (sx > 320 && sx < 390)  && (sy > 205+28 && sy <280-28 );
				 
		squareC51 = (sx > 395+28 && sx < 465-28)  && (sy > 205 && sy < 275);
		squareC52 = (sx > 395 && sx < 465)  && (sy > 205+28 && sy <280-28 );
				 
		squareC61 = (sx > 470+28 && sx < 540-28)  && (sy > 205 && sy < 275);
		squareC62 = (sx > 470 && sx < 540)  && (sy > 205+28 && sy <280-28 );
		
		squareC71 = (sx > 545+28 && sx < 615-28)  && (sy > 205 && sy < 275);
		squareC72 = (sx > 545 && sx < 615)  && (sy > 205+28 && sy <275-28 );
		
		
		squareC81 = (sx > 320+28 && sx < 390-28)  && (sy > 280 && sy < 350);
		squareC82 = (sx > 320 && sx < 390)  && (sy > 280+28 && sy <350-28 );
				 
		squareC91 = (sx > 395+28 && sx < 465-28)  && (sy > 280 && sy < 350);
		squareC92 = (sx > 395 && sx < 465)  && (sy > 280+28 && sy <350-28 );
				 
		squareC101 = (sx > 470+28 && sx < 540-28)  && (sy > 280 && sy < 350);
		squareC102 = (sx > 470 && sx < 540)  && (sy > 280+28 && sy <350-28 );
		
		squareC111 = (sx > 545+28 && sx < 615-28)  && (sy > 280 && sy < 350);
		squareC112 = (sx > 545 && sx < 615)  && (sy > 280+28 && sy <350-28 );
		
		
		squareC121 = (sx > 320+28 && sx < 390-28)  && (sy > 355 && sy < 425);
		squareC122 = (sx > 320 && sx < 390)  && (sy > 355+28 && sy <425-28 );
				 
		squareC131 = (sx > 395+28 && sx < 465-28)  && (sy > 355 && sy < 425);
		squareC132 = (sx > 395 && sx < 465)  && (sy > 355+28 && sy <425-28 );
				 
		squareC141 = (sx > 470+28 && sx < 540-28)  && (sy > 355 && sy < 425);
		squareC142 = (sx > 470 && sx < 540)  && (sy > 355+28 && sy <425-28 );
	
		squareC151 = (sx > 545+28 && sx < 615-28)  && (sy > 355 && sy < 425);
		squareC152 = (sx > 545 && sx < 615)  && (sy > 355+28 && sy <425-28 );
		
	end
	
		
	//---Cuadrados
	always @(posedge VGA_CLK_IN)
	begin
		if((sx <=315 || 620 <= sx) || (sy <=125 || 430 <= sy))//margen
			begin 
				{r_red,r_green,r_blue} <= `WHITE;
			end
		
		else if((315 < sx && sx < 620) && (125 < sy && sy < 130))//margen
			begin 
				{r_red,r_green,r_blue} <= `BLACK;
			end
			
		else if((315 < sx && sx < 620) && (200 < sy && sy < 205))//Linea horizontal
			begin 
				{r_red,r_green,r_blue} <= `BLACK;
			end
		else if((315 < sx && sx < 620) && (275 < sy && sy < 280))//Linea horizontal
			begin 
				{r_red,r_green,r_blue} <= `BLACK;//cambio
			end
		else if((315 < sx && sx < 620) && (350 < sy && sy < 355))//Linea horizontal
			begin 
				{r_red,r_green,r_blue} <= `BLACK;
			end
		else if((315 < sx && sx < 620) && (425 < sy && sy < 430))//margen horizontal
			begin 
				{r_red,r_green,r_blue} <= `BLACK;
			end
		else
			begin
				if(315 <= sx && sx < 320)//margen vertical
					begin 
						{r_red,r_green,r_blue} <= `BLACK;
					end
				else if(390 <= sx && sx < 395)//Linea vertical
					begin 
						{r_red,r_green,r_blue} <= `BLACK;
					end
				else if(465 <= sx && sx < 470)//Linea vertical
					begin 
						{r_red,r_green,r_blue} <= `BLACK;
					end
				else if(540 <= sx && sx < 545)//Linea vertical
					begin 
						{r_red,r_green,r_blue} <= `BLACK;
					end
				else if(615 <= sx && sx < 620)//margen vertical
					begin 
						{r_red,r_green,r_blue} <= `BLACK;
					end
				else 
					begin
					{r_red,r_green,r_blue} <= `WHITE;
					end
			end
		case(player)
			1'd0: begin
				if(squareC01)
				//1
					begin
							{r_red,r_green,r_blue} <= `PURPLE;
					end
				else if(squareC02)
					begin
							{r_red,r_green,r_blue} <= `PURPLE;
					end
					
				//2
				else if(squareC11)
					begin
							{r_red,r_green,r_blue} <= `CELESTE;
					end
				else if(squareC12)
					begin
							{r_red,r_green,r_blue} <= `CELESTE;
					end
					
				//3
				else if(squareC21)
					begin
							{r_red,r_green,r_blue} <= `GREEN;
					end
				else if(squareC22)
					begin
							{r_red,r_green,r_blue} <= `GREEN;
					end
				
				//4
				else if(squareC31)
					begin
							{r_red,r_green,r_blue} <= `RED;
					end
				else if(squareC32)
					begin
							{r_red,r_green,r_blue} <= `RED;
					end
				//5
				else if(squareC41)
					begin
							{r_red,r_green,r_blue} <= `BLUE;
					end
				else if(squareC42)
					begin
							{r_red,r_green,r_blue} <= `BLUE;
					end
					
				//6
				else if(squareC51)
					begin
							{r_red,r_green,r_blue} <= `YELLOW;
					end
				else if(squareC52)
					begin
							{r_red,r_green,r_blue} <= `YELLOW;
					end
					
				//7
				else if(squareC61)
					begin
							{r_red,r_green,r_blue} <= `ORANGE;
					end
				else if(squareC62)
					begin
							{r_red,r_green,r_blue} <= `ORANGE;
					end
				
				//8
				else if(squareC71)
					begin
							{r_red,r_green,r_blue} <= `GRAY;
					end
				else if(squareC72)
					begin
							{r_red,r_green,r_blue} <= `GRAY;
					end
					
				//9
				else if(squareC81)
					begin
							{r_red,r_green,r_blue} <= `YELLOW;
					end
				else if(squareC82)
					begin
							{r_red,r_green,r_blue} <= `YELLOW;
					end
					
				//10
				else if(squareC91)
					begin
							{r_red,r_green,r_blue} <= `CELESTE;
					end
				else if(squareC92)
					begin
							{r_red,r_green,r_blue} <= `CELESTE;
					end
					
					
				//11	
				else if(squareC101)
					begin
							{r_red,r_green,r_blue} <= `ORANGE;
					end
				else if(squareC102)
					begin
							{r_red,r_green,r_blue} <= `ORANGE;
					end
					
				//12
				else if(squareC111)
					begin
							{r_red,r_green,r_blue} <= `RED;
					end
				else if(squareC112)
					begin
							{r_red,r_green,r_blue} <= `RED;
					end
						
				//13
				else if(squareC121)
					begin
							{r_red,r_green,r_blue} <= `GRAY;
					end
				
				else if(squareC122)
					begin
							{r_red,r_green,r_blue} <= `GRAY;
					end
					
				//14
				else if(squareC131)
					begin
							{r_red,r_green,r_blue} <= `PURPLE;
					end
				else if(squareC132)
					begin
							{r_red,r_green,r_blue} <= `PURPLE;
					end
					
				//15
				else if(squareC141)
					begin
							{r_red,r_green,r_blue} <= `BLUE;
					end
				else if(squareC142)
					begin
							{r_red,r_green,r_blue} <= `BLUE;
					end
					
				//16
				else if(squareC151)
					begin
							{r_red,r_green,r_blue} <= `GREEN;
					end
				else if(squareC152)
					begin
							{r_red,r_green,r_blue} <= `GREEN;
					end
					
			end
		endcase
		//Faltan partes
		
	
		
	end
		
	
	assign o_hsync = (0 <= sx && sx <96) ? 1:0;
	assign o_vsync = (0 <= sy && sy <2) ? 1:0;
	
	assign VGA_CLK_OUT = VGA_CLK_IN;
	
	assign o_red = (sx > 144 && sx <= 783 && sy > 35 && sy <= 514)? r_red:8'h00;
	assign o_blue = (sx > 144 && sx <= 783 && sy > 35 && sy <= 514)? r_blue:8'h00;
	assign o_green = (sx > 144 && sx <= 783 && sy > 35 && sy <= 514)? r_green:8'h00;
	
endmodule