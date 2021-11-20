`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi 
// 
// Create Date:    18:54:46 11/08/2020 
//////////////////////////////////////////////////////////////////////////////////
module Decoder_4_16(output d0, d1, d2, d3, d4, d5, d6, d7, d8, 
			d9, d10, d11, d12, d13, d14, d15, out,input i0, i1, i2, i3, e);

	
	wire w[3:0];
	
	Decoder_2_4 o1(w[3], w[2], w[1], w[0], i3, i2, e);
	Decoder_2_4 o2(d15, d14, d13, d12, i1, i0, w[3]);
	Decoder_2_4 o3(d11, d10, d9, d8, i1, i0, w[2]);
	Decoder_2_4 o4(d7, d6, d5, d4, i1, i0, w[1]);
	Decoder_2_4 o5(d3, d2, d1, d0, i1, i0, w[0]);
	
	
	assign out = d2 | d3 | d5 | d7 | d11 | d13 ;
	

endmodule
