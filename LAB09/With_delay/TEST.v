`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi
//
// Create Date:   20:47:57 12/12/2020
////////////////////////////////////////////////////////////////////////////////

module Test;

	// Inputs
	reg RST;
	reg CLK;
	reg A;
	reg B;

	// Outputs
	wire Y;
	wire Z;
	wire temp;
	wire R;
	wire S;

	// Instantiate the Unit Under Test (UUT)
	seq_circuit_dealy uut (
		.RST(RST), 
		.CLK(CLK), 
		.A(A), 
		.B(B), 
		.Y(Y), 
		.Z(Z), 
		.temp(temp),
		.R(R),
		.S(S)
	);

	initial begin
		RST = 0;
//		CLK = 0;
//		A = 0;
//		B = 0;
		{CLK,A,B} = 3'b000;
		#40;
		{CLK,A,B} = 3'b100;
		#40;
		{CLK,A,B} = 3'b001;
		#40;
		{CLK,A,B} = 3'b111;
		#40;
		{CLK,A,B} = 3'b011;
		#40;
		{CLK,A,B} = 3'b101;
		#40;
		{CLK,A,B} = 3'b001;
		#40;
		{CLK,A,B} = 3'b100;
		#40;
		{CLK,A,B} = 3'b010;
		#40;
		{CLK,A,B} = 3'b110;
		#40;
		{CLK,A,B} = 3'b010;
		#40;
		{CLK,A,B} = 3'b111;
		#40;
		{CLK,A,B} = 3'b000;
		#40;
		{CLK,A,B} = 3'b100;
		#40;
		{CLK,A,B} = 3'b000;
		#40;
		{CLK,A,B} = 3'b101;
		#40;
		{CLK,A,B} = 3'b011;
		#40;
		{CLK,A,B} = 3'b111;
		#40;
		
		
		

	end
      
endmodule

