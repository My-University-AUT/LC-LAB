`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi
//
// Create Date:   18:47:14 11/08/2020
////////////////////////////////////////////////////////////////////////////////

module Decoder_2_4_test;

	// Inputs
	reg A;
	reg B;
	reg en;

	// Outputs
	wire D0;
	wire D1;
	wire D2;
	wire D3;

	// Instantiate the Unit Under Test (UUT)
	Decoder_2_4 uut (
		.D0(D0), 
		.D1(D1), 
		.D2(D2), 
		.D3(D3), 
		.A(A), 
		.B(B), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		en = 0;

		// Initialize Inputs
		{A, B, en} = 3'b000;
		#100;
		
		{A, B, en} = 3'b010;
		#100;
		
		{A, B, en} = 3'b100;
		#100;
		
		{A, B, en} = 3'b110;
		#100;
		
		{A, B, en} = 3'b001;
		#100;
		
		{A, B, en} = 3'b011;
		#100;
		
		{A, B, en} = 3'b101;
		#100;
		
		{A, B, en} = 3'b111;
		#100;

	end
      
endmodule

