`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi
//
// Create Date:   19:06:50 11/08/2020
////////////////////////////////////////////////////////////////////////////////

module Decoder_4_16_test;

	// Inputs
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg e;

	// Outputs
	wire d0;
	wire d1;
	wire d2;
	wire d3;
	wire d4;
	wire d5;
	wire d6;
	wire d7;
	wire d8;
	wire d9;
	wire d10;
	wire d11;
	wire d12;
	wire d13;
	wire d14;
	wire d15;
	wire out;
	// Instantiate the Unit Under Test (UUT)
	Decoder_4_16 uut (
		.out(out),
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.d4(d4), 
		.d5(d5), 
		.d6(d6), 
		.d7(d7), 
		.d8(d8), 
		.d9(d9), 
		.d10(d10), 
		.d11(d11), 
		.d12(d12), 
		.d13(d13), 
		.d14(d14), 
		.d15(d15), 
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.e(e)
	);

	initial begin
		// Initialize Inputs
		i0 = 0;
		i1 = 0;
		i2 = 0;
		i3 = 0;
		e = 0;

		// Initialize Inputs
		{i0, i1, i2, i3} =  4'b0000;
		e = 1'b1;
		#100;
		
		{i0, i1, i2, i3} =  4'b0001;
		e = 1'b1;
		#100;
		
		{i0, i1, i2, i3} =  4'b0010;
		e = 1'b1;
		#100;
		
		{i0, i1, i2, i3} =  4'b0011;
		e = 1'b1;
		#100;
		
		{i0, i1, i2, i3} =  4'b0100;
		e = 1'b1;
		#100;
		
		{i0, i1, i2, i3} =  4'b0101;
		e = 1'b1;
		#100;
		
		{i0, i1, i2, i3} =  4'b0110;
		e = 1'b1;
		#100;
		
		{i0, i1, i2, i3} =  4'b0111;
		e = 1'b1;
		#100;
		
		{i0, i1, i2, i3} =  4'b1000;
		e = 1'b1;
		#100;
		
		{i0, i1, i2, i3} =  4'b1001;
		e = 1'b1;
		#100;
		
		{i0, i1, i2, i3} =  4'b1010;
		e = 1'b1;
		#100;
		
		{i0, i1, i2, i3} =  4'b1011;
		e = 1'b1;
		#100;
		
		{i0, i1, i2, i3} =  4'b1100;
		e = 1'b1;
		#100;
		
		{i0, i1, i2, i3} =  4'b1101;
		e = 1'b1;
		#100;
		
		{i0, i1, i2, i3} =  4'b1110;
		e = 1'b1;
		#100;
		
		{i0, i1, i2, i3} =  4'b1111;
		e = 1'b1;
		#100;
        

	end
      
endmodule

