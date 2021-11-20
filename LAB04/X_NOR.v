`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Made by: Ali Nowrouzi and Ahmad Foroughi
// 
// Create Date:    15:36:05 11/01/2020 
//////////////////////////////////////////////////////////////////////////////////
module X_NOR( 
	input A,B,C, output out);
	
	wire w,x,y,z;
	wire not_a,not_b, not_c;
	not(not_a,A);
	not(not_b,B);
	not(not_c,C);

	and(w,not_a,not_b,not_c);
	and(x,not_a,B,C);
	and(y,A,B,not_c);
	and(z,A,not_b,C);
	or(out,w,x,y,z);

endmodule
