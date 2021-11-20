`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi
//
// Create Date:   10:24:32 11/14/2020
////////////////////////////////////////////////////////////////////////////////

module Test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg l;
	reg e;
	reg g;

	// Outputs
	wire lt;
	wire eq;
	wire gt;

	// Instantiate the Unit Under Test (UUT)
	Comparator_8bit uut (
		.lt(lt), 
		.eq(eq), 
		.gt(gt), 
		.A(a), 
		.B(b), 
		.l(l), 
		.e(e), 
		.g(g)
	);

	initial begin
		// Initialize Inputs
		
		l = 0;
		e = 1;
		g = 0;

		
		a = 8'b00011001;
		b = 8'b00010100;
		#100;
		
		a = 8'b01010010;
		b = 8'b10000101;
		#100;
		
		a = 8'b11000010;
		b = 8'b10100110;
		#100;
		
		a = 8'b10000100;
		b = 8'b11100001;
		#100;
		
		a = 8'b01010101;
		b = 8'b10101010;
		#100;
		
		a = 8'b11001100;
		b = 8'b11100010;
		#100;
        
		l = 0;
		e = 1;
		g = 0;  
	   a = 8'b01010101;
		b = 8'b01010101;
		#100;
		
		l = 1;
		e = 0;
		g = 0;
		a = 8'b00111100;
		b = 8'b00111100;
		#100;
		
		l = 0;
		e = 0;
		g = 1;
		a = 8'b11001010;
		b = 8'b11001010;
		#100;
		
		// Add stimulus here

	end
      
endmodule

