`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi
//
// Create Date:   17:51:20 11/28/2020
////////////////////////////////////////////////////////////////////////////////

module Test;

	// Inputs
	reg A;
	reg B;
	reg Sel;
	reg Cin;

	// Outputs
	wire S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	one_bit_adder uut (
		.S(S), 
		.Cout(Cout), 
		.A(A), 
		.B(B), 
		.Sel(Sel), 
		.Cin(Cin)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Sel = 0;
		Cin = 0;


		// Wait 100 ns for global reset to finish
		#100;
      A = 1;
		B = 0;
		Sel = 0;
		Cin = 0;  
		// Add stimulus here
		#100;
      A = 1;
		B = 0;
		Sel = 0;
		Cin = 1;  
		
		#100;
      A = 1;
		B = 1;
		Sel = 0;
		Cin = 1;

		#100;
      A = 1;
		B = 0;
		Sel = 0;
		Cin = 1;		
		
		#100;
      A = 0;
		B = 0;
		Sel = 0;
		Cin = 1;		
		
		#100;
      A = 0;
		B = 0;
		Sel = 1;
		Cin = 1;		
	end
      
endmodule

