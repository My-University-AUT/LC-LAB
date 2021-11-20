`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi 
// 
// Create Date:    23:21:50 12/12/2020 
//////////////////////////////////////////////////////////////////////////////////
module dff (Q , QP, CLK , Din, rst);
	input CLK,Din,rst;
	output Q , QP;
	reg Q , QP;
	
	initial 
		begin
			Q = 1'b0; 
			QP = 1'b1;
	   end
	
    always @ (posedge CLK) 
			begin
			  if(rst)
				  begin
					Q = 1'b0;
					QP= 1'b1;
				  end
			  else
				  begin
					Q = Din;
					QP = ~Din;
				  end
			  
			end
endmodule