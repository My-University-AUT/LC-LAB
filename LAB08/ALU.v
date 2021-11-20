`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi 
// 
// Create Date:    10:57:26 12/06/2020 
//////////////////////////////////////////////////////////////////////////////////
module ALU (out, A, B, S );

	input [1:0] A, B, S;
	output [3:0] out;
	assign out = S[1] ? (S[0] ? A * B : (A + B) ) : (S[0] ? {2'b00,~(A & B)} : {2'b00,~A});




endmodule