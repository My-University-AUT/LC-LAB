`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi 
// 
// Create Date:    17:40:17 11/28/2020 
//////////////////////////////////////////////////////////////////////////////////
module one_bit_adder(S,Cout,A,B,Sel,Cin);
	output S,Cout;
	input A, B, Sel, Cin;
	
	wire Bs, t1, t2, t3;
	assign Bs = B^Sel;
	
	assign t1= A^Bs;
	assign t2= A & Bs;
	assign t3= Cin & t1;
	
	assign S = t1^Cin;
	assign Cout= t2 | t3;
	
	
	
endmodule
