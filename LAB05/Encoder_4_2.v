`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi 
// 
// Create Date:    20:00:12 11/08/2020 
//////////////////////////////////////////////////////////////////////////////////
module Encoder_4_2(
  S0, S1, V, d0, d1, d2, d3);

	input d0, d1, d2, d3;
	output S0, S1, V;
	
	assign S0 = d3 | (d1 & (~d2));
	assign S1 = d2 | d3;
	assign V = d0 | d1 | d2 | d3;


endmodule
