`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi
//
// Create Date:   20:02:16 11/08/2020
////////////////////////////////////////////////////////////////

module TEST;

	// Inputs
	reg d0;
	reg d1;
	reg d2;
	reg d3;

	// Outputs
	wire S0;
	wire S1;
	wire V;

	// Instantiate the Unit Under Test (UUT)
	Encoder_4_2 uut (
		.S0(S0), 
		.S1(S1), 
		.V(V), 
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3)
	);

	initial begin
	
		{d0, d1, d2, d3} = 4'b0000;
		#100;
		
		{d0, d1, d2, d3} = 4'b1000;
		#100;
		
		{d0, d1, d2, d3} = 4'bx100;
		#100;
		
		{d0, d1, d2, d3} = 4'bxx10;
		#100;
		
		{d0, d1, d2, d3} = 4'bxxx1;
		#100;
        
	end
      
endmodule

