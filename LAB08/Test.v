`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi
//
// Create Date:   11:08:52 12/06/2020
////////////////////////////////////////////////////////////////////////////////

module Test;

	// Inputs
	reg [1:0] A;
	reg [1:0] B;
	reg [1:0] S;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.out(out), 
		.A(A), 
		.B(B), 
		.S(S)
	);

	initial begin
		// Initialize Inputs
		
		
		A = 2'b00;
		B = 2'b01;
		S = 2'b00;
		#100;
        
		A = 2'b00;
		B = 2'b01;
		S = 2'b01;
		#100;
		
		A = 2'b10;
		B = 2'b01;
		S = 2'b01;
		#100;
		
		A = 2'b11;
		B = 2'b01;
		S = 2'b10;
		#100;
		
		A = 2'b10;
		B = 2'b01;
		S = 2'b10;
		#100;
		
		A = 2'b10;
		B = 2'b01;
		S = 2'b11;
		#100;
		
		A = 2'b10;
		B = 2'b11;
		S = 2'b11;
		#100;
		
		A = 2'b11;
		B = 2'b11;
		S = 2'b11;
		#100;
		
		A = 2'b01;
		B = 2'b01;
		S = 2'b11;
		#100;
		
		A = 2'b11;
		B = 2'b11;
		S = 2'b00;
		#100;
	end
      
endmodule

