`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi 
// 
// Create Date:    10:02:14 11/14/2020 
//////////////////////////////////////////////////////////////////////////////////
module Comparator_8bit( output lt,eq, gt , input [7:0] A,B,input l,e,g
    );

	wire l1,e1,g1;
	comparator_3bit c1(l1,e1,g1, A[2:0],B[2:0],l,e,g);
	wire l2,e2,g2;
	comparator_3bit c2(l2,e2,g2, A[5:3],B[5:3],l1,e1,g1);

	//wire [2:0] k;
	//wire [2:0] j;
	//assign k = {1'b0,A[7:6]};
	//assign j = {1'b0,B[7:6]};
	

	comparator_3bit c3(lt,eq,gt, {1'b0,A[7:6]},{1'b0,B[7:6]},l2,e2,g2);

	
endmodule
