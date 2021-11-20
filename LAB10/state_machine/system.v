`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi 
// 
// Create Date:    17:39:40 12/27/2020 
//////////////////////////////////////////////////////////////////////////////////
module system (
   input [3:0]  secret_pass,
   input        request,
	input  [3:0] din,
	input        RST ,
	input        CLK ,
	input        confirm ,
	input  [3:0] pass_data ,
	output   [3:0] qout_left,
	output   [3:0] qout_right

);
	wire en_left ;
	wire en_right ;
	wire doutt;
	fsm f(secret_pass, request, din, RST , CLK , confirm , pass_data ,en_left , en_right , doutt);
	register left_reg(doutt, CLK, RST, en_left,  qout_left);
	register right_reg(doutt, CLK, RST, en_right,  qout_right);

	//register right_reg( RST ,en_right , CLK , doutt , qout_right);
	

endmodule
