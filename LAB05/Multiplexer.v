`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi 
// 
// Create Date:    19:41:40 11/08/2020 
//////////////////////////////////////////////////////////////////////////////////
module Multii_Plaxer( input S1,S0, W0,W1,W2,W3, output F
    );
		assign F = S1 ? (S0 ? W3 : W2) : (S0 ? W1 : W0);

endmodule
