`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi 
// 
// Create Date:    18:01:15 11/28/2020 
//////////////////////////////////////////////////////////////////////////////////
module four_bit_adder_subtractor(S,Cout,A,B,Sel );
	output [3:0] S;
	output Cout;
	input [3:0] A;
	input [3:0] B;
	input Sel;
	
	wire carry[2:0];
	one_bit_adder_subtractor a1(S[0],carry[0],A[0],B[0],Sel,Sel),
									 a2(S[1],carry[1],A[1],B[1],Sel,carry[0]),
									 a3(S[2],carry[2],A[2],B[2],Sel,carry[1]),
									 a4(S[3],Cout,A[3],B[3],Sel,carry[2]);
	//assign overflow = Cout ^ carry[2];
endmodule
