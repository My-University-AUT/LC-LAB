`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi 
// 
// Create Date:    15:36:48 11/29/2020 
//////////////////////////////////////////////////////////////////////////////////
module one_bit_full_adder(S,Cout,A,B,Cin
    );

	output S,Cout;
	input A, B, Cin;
	
	wire t1, t2, t3;
	
	assign #10 t1= A^B;
	assign #5 t2= A & B;
	assign #5 t3= Cin & t1;
	
	assign #10 S = t1^Cin;
	assign #5 Cout= t2 | t3;
endmodule
