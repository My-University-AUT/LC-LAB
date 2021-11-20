`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi
//
// Create Date:   19:46:30 11/08/2020
// 
////////////////////////////////////////////////////////////////////////////////

module MultiPlaxer_testbench;

	// Inputs
	reg S1;
	reg S0;
	reg W0;
	reg W1;
	reg W2;
	reg W3;

	// Outputs
	wire F;

	// Instantiate the Unit Under Test (UUT)
	MMMM uut (
		.S1(S1), 
		.S0(S0), 
		.W0(W0), 
		.W1(W1), 
		.W2(W2), 
		.W3(W3), 
		.F(F)
	);

	initial begin
		{W0, W1, W2, W3, S1, S0} = 6'b111100;
		#100;
		
		{W0, W1, W2, W3, S1, S0} = 6'b111101;
		#100;
		
		{W0, W1, W2, W3, S1, S0} = 6'b111110;
		#100;
		
		{W0, W1, W2, W3, S1, S0} = 6'b111111;
		#100;

	end
      
endmodule

