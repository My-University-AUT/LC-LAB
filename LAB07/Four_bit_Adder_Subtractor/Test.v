`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi
//
// Create Date:   18:12:33 11/28/2020
////////////////////////////////////////////////////////////////////////////////

module Test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Sel;

	// Outputs
	wire [3:0] S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	four_bit_adder_subtractor uut (
		.S(S), 
		.Cout(Cout), 
		.A(A), 
		.B(B), 
		.Sel(Sel)
	);

	initial begin

		A = 4'b0010;
		B = 4'b1001;
		Sel = 0;
		#100;

		A = 4'b0110;
		B = 4'b1001;
		Sel = 0;
		#100;
		
		A = 4'b0110;
		B = 4'b1010;
		Sel = 0;
		#100;
		
		A = 4'b1110;
		B = 4'b1001;
		Sel = 1;
		#100;
		
		A = 4'b0110;
		B = 4'b1001;
		Sel = 1;
		#100;
		
		A = 4'b0010;
		B = 4'b1001;
		Sel = 1;
		#100;
        
	   A = 4'b0010;
		B = 4'b0001;
		Sel = 0;
		#100;
		
		A = 4'b0100;
		B = 4'b0001;
		Sel = 0;
		#100;
		
		A = 4'b0110;
		B = 4'b0001;
		Sel = 0;
		#100;
		
		A = 4'b0111;
		B = 4'b0010;
		Sel = 1;
		#100;
		
		A = 4'b0101;
		B = 4'b0010;
		Sel = 1;
		#100;
		
		A = 4'b0010;
		B = 4'b0101;
		Sel = 1;
		#100;

	end
      
endmodule

