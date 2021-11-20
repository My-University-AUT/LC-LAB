`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi 
// 
// Create Date:    18:42:00 11/08/2020 
//////////////////////////////////////////////////////////////////////////////////
module Decoder_2_4(D0,D1,D2,D3,A,B,en
    );

	input A, B, en;
	output D0, D1, D2, D3;
	
	assign D0 = (~A) & (~B) & en;
	assign D1 = (~A) & (B) & en;
	assign D2 = (A) & (~B) & en;
	assign D3 = (A) & (B) & en;

endmodule
