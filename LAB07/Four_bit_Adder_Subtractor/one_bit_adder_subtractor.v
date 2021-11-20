`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi 
// 
// Create Date:    17:58:11 11/28/2020 
//////////////////////////////////////////////////////////////////////////////////
module one_bit_adder_subtractor(S,Cout,A,B,Sel,Cin);
	output S,Cout;
	input A, B, Sel, Cin;
	
	wire Bs;
	assign #10 Bs = B^Sel;
	
	one_bit_full_adder fa(S,Cout,A,Bs,Cin);
	
endmodule