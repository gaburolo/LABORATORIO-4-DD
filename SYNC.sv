`define WHITE 24'hFFFFFF
`define BLACK 24'h000000

`define GREEN 24'h00FF00
`define PURPLE 24'hCC99FF
`define CELESTE 24'h00E4FF
`define RED 24'hD10E49
`define BLUE 24'h0000FF
`define YELLOW 24'hF3F02A
`define ORANGE 24'hF39C12 
`define GRAY 24'h7F8C8D

module SYNC(
	input logic VGA_CLK_IN,
	input logic rst,
	input logic[3:0] block,
	input logic [3:0] c1,
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
	output logic o_hsync,
	output logic o_vsync,
	output logic VGA_CLK_OUT,
	output logic[7:0] out_R,
	output logic[7:0] out_B,
	output logic[7:0] out_G
	
);


	logic figureC01;logic figureC02;logic figureC11;logic figureC12;
	logic figureC21;logic figureC22;logic figureC31;logic figureC32;
	
	logic figureC41;logic figureC42;logic figureC51;logic figureC52;
	logic figureC61;logic figureC62;logic figureC71;logic figureC72;
	
	logic figureC81;logic figureC82;logic figureC91;logic figureC92;
	logic figureC101;logic figureC102;logic figureC111;logic figureC112;

	logic figureC121;logic figureC122;logic figureC131;logic figureC132;
	logic figureC141;logic figureC142;logic figureC151;logic figureC152;
	
	logic square1; logic square2; logic square3;logic square4;
	logic square5; logic square6; logic square7;logic square8;
	logic square9; logic square10; logic square11;logic square12;
	logic square13; logic square14; logic square15;logic square16;
	//Contadores para coordenadas
	reg[9:0] sx=0;
	reg[9:0] sy=0;
	//figure <= ((sx > 350 && sx < 370) && (sy > 150 && sy < 170));
	//VALORES RBG
	reg[7:0] color_R=0;
	reg[7:0] color_B=0;
	reg[7:0] color_G=0;
	
	
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
		figureC01 = (sx > 320+28 && sx < 390-28)  && (sy > 130 && sy < 200);
		figureC02 = (sx > 320 && sx < 390)  && (sy > 130+28 && sy <205-28 );
		square1 = (sx > 320+28 && sx < 390-28)  && (sy > 130+28 && sy <205-28 );
		
		
		figureC11 = (sx > 395+28 && sx < 465-28)  && (sy > 130 && sy < 200);
		figureC12 = (sx > 395 && sx < 465)  && (sy > 130+28 && sy <205-28 );
		square2 = (sx > 395+28 && sx < 465-28)  &&(sy > 130+28 && sy <205-28 );

		
		figureC21 = (sx > 470+28 && sx < 540-28)  && (sy > 130 && sy < 200);
		figureC22 = (sx > 470 && sx < 540)  && (sy > 130+28 && sy <205-28 );
		square3 = (sx > 470+28 && sx < 540-28)  && (sy > 130+28 && sy <205-28 );
		
		
		figureC31 = (sx > 545+28 && sx < 615-28)  && (sy > 130 && sy < 200);
		figureC32 = (sx > 545 && sx < 615)  && (sy > 130+28 && sy <205-28 );
		square4 = (sx > 545+28 && sx < 615-28) && (sy > 130+28 && sy <205-28 );
		
		figureC41 = (sx > 320+28 && sx < 390-28)  && (sy > 205 && sy < 275);
		figureC42 = (sx > 320 && sx < 390)  && (sy > 205+28 && sy <280-28 );
		square5 = (sx > 320+28 && sx < 390-28) && (sy > 205+28 && sy <280-28 );
		
				 
		figureC51 = (sx > 395+28 && sx < 465-28)  && (sy > 205 && sy < 275);
		figureC52 = (sx > 395 && sx < 465)  && (sy > 205+28 && sy <280-28 );
		square6 = (sx > 395+28 && sx < 465-28)  && (sy > 205+28 && sy <280-28 );
		
				 
		figureC61 = (sx > 470+28 && sx < 540-28)  && (sy > 205 && sy < 275);
		figureC62 = (sx > 470 && sx < 540)  && (sy > 205+28 && sy <280-28 );
		square7 = (sx > 470+28 && sx < 540-28)  && (sy > 205+28 && sy <280-28 );
		
		figureC71 = (sx > 545+28 && sx < 615-28)  && (sy > 205 && sy < 275);
		figureC72 = (sx > 545 && sx < 615)  && (sy > 205+28 && sy <275-28 );
		square8 =  (sx > 545+28 && sx < 615-28) && (sy > 205+28 && sy <280-28);
		
		figureC81 = (sx > 320+28 && sx < 390-28)  && (sy > 280 && sy < 350);
		figureC82 = (sx > 320 && sx < 390)  && (sy > 280+28 && sy <350-28 );
		square9 = (sx > 320+28 && sx < 390-28) && (sy > 280+28 && sy <350-28 );
		
		figureC91 = (sx > 395+28 && sx < 465-28)  && (sy > 280 && sy < 350);
		figureC92 = (sx > 395 && sx < 465)  && (sy > 280+28 && sy <350-28 );
		square10 = 	(sx > 395+28 && sx < 465-28)  && (sy > 280+28 && sy <350-28 );
			
		figureC101 = (sx > 470+28 && sx < 540-28)  && (sy > 280 && sy < 350);
		figureC102 = (sx > 470 && sx < 540)  && (sy > 280+28 && sy <350-28 );
		square11 = (sx > 470+28 && sx < 540-28) && (sy > 280+28 && sy <350-28 );
		
		
		figureC111 = (sx > 545+28 && sx < 615-28)  && (sy > 280 && sy < 350);
		figureC112 = (sx > 545 && sx < 615)  && (sy > 280+28 && sy <350-28 );
		square12 = (sx > 545+28 && sx < 615-28)  && (sy > 280+28 && sy <350-28 );
		
		figureC121 = (sx > 320+28 && sx < 390-28)  && (sy > 355 && sy < 425);
		figureC122 = (sx > 320 && sx < 390)  && (sy > 355+28 && sy <425-28 );
		square13 = (sx > 320+28 && sx < 390-28)  && (sy > 355+28 && sy <425-28 );
				 
		figureC131 = (sx > 395+28 && sx < 465-28)  && (sy > 355 && sy < 425);
		figureC132 = (sx > 395 && sx < 465)  && (sy > 355+28 && sy <425-28 );
		square14 = (sx > 395+28 && sx < 465-28)  && (sy > 355+28 && sy <425-28 );
				 
		figureC141 = (sx > 470+28 && sx < 540-28)  && (sy > 355 && sy < 425);
		figureC142 = (sx > 470 && sx < 540)  && (sy > 355+28 && sy <425-28 );
		square15 = (sx > 470+28 && sx < 540-28)  && (sy > 355+28 && sy <425-28);
	
		figureC151 = (sx > 545+28 && sx < 615-28)  && (sy > 355 && sy < 425);
		figureC152 = (sx > 545 && sx < 615)  && (sy > 355+28 && sy <425-28 );
		square16 = (sx > 545+28 && sx < 615-28)  && (sy > 355+28 && sy <425-28 );
	end
	
		
	//---Cuadrados
	always @(posedge VGA_CLK_IN)
	begin
		if((sx <=315 || 620 <= sx) || (sy <=125 || 430 <= sy))//margen
			begin 
				{color_R,color_G,color_B} <= `WHITE;
			end
		
		else if((315 < sx && sx < 620) && (125 < sy && sy < 130))//margen
			begin 
				{color_R,color_G,color_B} <= `BLACK;
			end
			
		else if((315 < sx && sx < 620) && (200 < sy && sy < 205))//Linea horizontal
			begin 
				{color_R,color_G,color_B} <= `BLACK;
			end
		else if((315 < sx && sx < 620) && (275 < sy && sy < 280))//Linea horizontal
			begin 
				{color_R,color_G,color_B} <= `BLACK;//cambio
			end
		else if((315 < sx && sx < 620) && (350 < sy && sy < 355))//Linea horizontal
			begin 
				{color_R,color_G,color_B} <= `BLACK;
			end
		else if((315 < sx && sx < 620) && (425 < sy && sy < 430))//margen horizontal
			begin 
				{color_R,color_G,color_B} <= `BLACK;
			end
		else
			begin
				if(315 <= sx && sx < 320)//margen vertical
					begin 
						{color_R,color_G,color_B} <= `BLACK;
					end
				else if(390 <= sx && sx < 395)//Linea vertical
					begin 
						{color_R,color_G,color_B} <= `BLACK;
					end
				else if(465 <= sx && sx < 470)//Linea vertical
					begin 
						{color_R,color_G,color_B} <= `BLACK;
					end
				else if(540 <= sx && sx < 545)//Linea vertical
					begin 
						{color_R,color_G,color_B} <= `BLACK;
					end
				else if(615 <= sx && sx < 620)//margen vertical
					begin 
						{color_R,color_G,color_B} <= `BLACK;
					end
				else 
					begin
					{color_R,color_G,color_B} <= `WHITE;
					end
			end
			
			
		case(c1)
			4'b0000: begin 
					if(figureC01)//1
						begin
								{color_R,color_G,color_B} <= `WHITE;
						end
					else if(figureC02)
						begin
								{color_R,color_G,color_B} <= `WHITE;
						end
					end
			4'b1111: begin 
					if(square1)//1
						begin
								{color_R,color_G,color_B} <= `BLACK;
						end
					end
			4'b0001: begin 
					if(figureC01)//1
						begin
								{color_R,color_G,color_B} <= `PURPLE;
						end
					else if(figureC02)
						begin
								{color_R,color_G,color_B} <= `PURPLE;
						end
					end
			
		endcase
		
		
		case(c2)
			4'b0000: begin
						if(figureC11)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						else if(figureC12)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						end
			4'b1111: begin
						if(square2)//1
							begin
									{color_R,color_G,color_B} <= `BLACK;
							end
					end
			4'b0011:begin
							if(figureC11)
							begin
									{color_R,color_G,color_B} <= `CELESTE;
							end
						else if(figureC12)
							begin
									{color_R,color_G,color_B} <= `CELESTE;
							end
						end	
		endcase
		
		case(c3)
			4'b0000: begin
						if(figureC21)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						else if(figureC22)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						end
			4'b1111: begin
						if(square3)//1
							begin
									{color_R,color_G,color_B} <= `BLACK;
							end
					end
			4'b0010:begin
							if(figureC21)
								begin
										{color_R,color_G,color_B} <= `GREEN;
								end
							else if(figureC22)
								begin
										{color_R,color_G,color_B} <= `GREEN;
								end
						end	
		endcase
		
		case(c4)
			4'b0000: begin
						if(figureC31)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
							else if(figureC32)
								begin
										{color_R,color_G,color_B} <= `WHITE;
								end
						end
			4'b1111: begin
						if(square4)//1
							begin
									{color_R,color_G,color_B} <= `BLACK;
							end
					end
			4'b0100:begin
							if(figureC31)
								begin
										{color_R,color_G,color_B} <= `RED;
								end
							else if(figureC32)
								begin
										{color_R,color_G,color_B} <= `RED;
								end
						end	
		endcase
		
		case(c5)
			4'b0000: begin
						if(figureC41)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						else if(figureC42)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						end
			4'b1111: begin
						if(square5)//1
							begin
									{color_R,color_G,color_B} <= `BLACK;
							end
					end
			4'b0101:begin
							if(figureC41)
								begin
										{color_R,color_G,color_B} <= `BLUE;
								end
							else if(figureC42)
								begin
										{color_R,color_G,color_B} <= `BLUE;
								end
							end
		endcase
		case(c6)
			4'b0000: begin
						if(figureC51)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						else if(figureC52)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						end
			4'b1111: begin
						if(square6)//1
							begin
									{color_R,color_G,color_B} <= `BLACK;
							end
					end
			4'b0110:begin
							if(figureC51)
								begin
										{color_R,color_G,color_B} <= `YELLOW;
								end
							else if(figureC52)
								begin
										{color_R,color_G,color_B} <= `YELLOW;
								end
							end
		endcase
		
		case(c7)
			4'b0000: begin
						if(figureC61)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						else if(figureC62)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						end
			4'b1111: begin
						if(square7)//1
							begin
									{color_R,color_G,color_B} <= `BLACK;
							end
					end
			4'b0101:begin
							if(figureC61)
								begin
										{color_R,color_G,color_B} <= `ORANGE;
								end
							else if(figureC62)
								begin
										{color_R,color_G,color_B} <= `ORANGE;
								end
							end
		endcase
		
		case(c8)
			4'b0000: begin
						if(figureC71)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						else if(figureC72)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						end
			4'b1111: begin
						if(square8)//1
							begin
									{color_R,color_G,color_B} <= `BLACK;
							end
					end
			4'b1000:begin
							if(figureC71)
								begin
										{color_R,color_G,color_B} <= `GRAY;
								end
							else if(figureC72)
								begin
										{color_R,color_G,color_B} <= `GRAY;
								end
							end
		endcase
		
		case(c9)
			4'b0000: begin
						if(figureC81)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						else if(figureC82)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						end
			4'b1111: begin
						if(square9)//1
							begin
									{color_R,color_G,color_B} <= `BLACK;
							end
					end
			4'b0110:begin
							if(figureC81)
								begin
										{color_R,color_G,color_B} <= `YELLOW;
								end
							else if(figureC82)
								begin
										{color_R,color_G,color_B} <= `YELLOW;
								end
							end
		endcase
		
		case(c10)
			4'b0000: begin
						if(figureC91)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						else if(figureC92)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						end
			4'b1111: begin
						if(square10)//1
							begin
									{color_R,color_G,color_B} <= `BLACK;
							end
					end
			4'b0011:begin
							if(figureC91)
								begin
										{color_R,color_G,color_B} <= `CELESTE;
								end
							else if(figureC92)
								begin
										{color_R,color_G,color_B} <= `CELESTE;
								end
							end
		endcase
		
		case(c11)
			4'b0000: begin
						if(figureC101)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						else if(figureC102)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						end
			4'b1111: begin
						if(square11)//1
							begin
									{color_R,color_G,color_B} <= `BLACK;
							end
					end
			4'b0111:begin
							if(figureC101)
								begin
										{color_R,color_G,color_B} <= `ORANGE;
								end
							else if(figureC102)
								begin
										{color_R,color_G,color_B} <= `ORANGE;
								end
							end
		endcase
		
		case(c12)
			4'b0000: begin
						if(figureC111)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						else if(figureC112)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						end
			4'b1111: begin
						if(square12)//1
							begin
									{color_R,color_G,color_B} <= `BLACK;
							end
					end
			4'b0100:begin
							if(figureC111)
								begin
										{color_R,color_G,color_B} <= `RED;
								end
							else if(figureC112)
								begin
										{color_R,color_G,color_B} <= `RED;
								end
							end
		endcase
		
		case(c13)
			4'b0000: begin
						if(figureC121)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						
						else if(figureC122)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						end
			4'b1111: begin
						if(square13)//1
							begin
									{color_R,color_G,color_B} <= `BLACK;
							end
					end
			4'b1000:begin
							if(figureC121)
								begin
										{color_R,color_G,color_B} <= `GRAY;
								end
							
							else if(figureC122)
								begin
										{color_R,color_G,color_B} <= `GRAY;
								end
							end
		endcase
		
		case(c14)
			4'b0000: begin
						if(figureC131)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						else if(figureC132)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						end
			4'b1111: begin
						if(square14)//1
							begin
									{color_R,color_G,color_B} <= `BLACK;
							end
					end
			4'b0001:begin
							if(figureC131)
								begin
										{color_R,color_G,color_B} <= `PURPLE;
								end
							else if(figureC132)
								begin
										{color_R,color_G,color_B} <= `PURPLE;
								end
							end
		endcase
		
		case(c15)
			4'b0000: begin
						if(figureC141)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						else if(figureC142)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						end
			4'b1111: begin
						if(square15)//1
							begin
									{color_R,color_G,color_B} <= `BLACK;
							end
					end
			4'b0101:begin
							if(figureC141)
								begin
										{color_R,color_G,color_B} <= `BLUE;
								end
							else if(figureC142)
								begin
										{color_R,color_G,color_B} <= `BLUE;
								end
							end
		endcase
		
		case(c16)
			4'b0000: begin
						if(figureC151)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						else if(figureC152)
							begin
									{color_R,color_G,color_B} <= `WHITE;
							end
						end
			4'b1111: begin
						if(square16)//1
							begin
									{color_R,color_G,color_B} <= `BLACK;
							end
					end
			4'b0010:begin
							if(figureC151)
								begin
										{color_R,color_G,color_B} <= `GREEN;
								end
							else if(figureC152)
								begin
										{color_R,color_G,color_B} <= `GREEN;
								end
							end
		endcase

	
	end
		
	
	assign o_hsync = (0 <= sx && sx <96) ? 1:0;
	assign o_vsync = (0 <= sy && sy <2) ? 1:0;
	
	assign VGA_CLK_OUT = VGA_CLK_IN;
	
	assign out_R = (sx > 144 && sx <= 783 && sy > 35 && sy <= 514)? color_R:8'h00;
	assign out_B = (sx > 144 && sx <= 783 && sy > 35 && sy <= 514)? color_B:8'h00;
	assign out_G = (sx > 144 && sx <= 783 && sy > 35 && sy <= 514)? color_G:8'h00;
	
endmodule