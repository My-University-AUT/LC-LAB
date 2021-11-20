`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi
//
// Create Date:   14:01:55 11/15/2020
////////////////////////////////////////////////////////////////////////////////

module Test;

	// Inputs
	reg [2:0] a;
	reg [2:0] b;
	reg l;
	reg e;
	reg g;

	// Outputs
	wire lt;
	wire eq;
	wire gt;

	// Instantiate the Unit Under Test (UUT)
	comparator_3_bit uut (
		.lt(lt), 
		.eq(eq), 
		.gt(gt), 
		.a(a), 
		.b(b), 
		.l(l), 
		.e(e), 
		.g(g)
	);

	initial begin
		
		a = 3'b001;
		b = 3'b001;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 50 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 50 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 50 ;
		//////////////////
		a = 3'b010;
		b = 3'b001;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 50 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 50 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 50;

		a = 3'b001;
		b = 3'b010;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 50 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 50 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 50;

	end
      
endmodule

