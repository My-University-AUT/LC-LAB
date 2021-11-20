`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi 
// 
// Create Date:    22:34:37 12/20/2020 
//////////////////////////////////////////////////////////////////////////////////

//module register ( rst ,en , clk , din , qout
//);
//	 input en;
//	 input        clk ;
//	 input        rst ;
//	 input [3:0] din ;
//	 output reg [3:0] qout;
////	 initial begin
////		 assign din=4'b0000;
////	  end
//	 always @ (posedge clk or negedge rst)
//	 begin
//		  if(~rst)  qout = 4'b0000;
//		   else if(en)
//			  qout = din; 
//	 end
//	 
//	  
//endmodule


module register(input [3:0] D, input Clk,
	input reset, input load, output reg [3:0] Q);
	
	always @(posedge Clk)
		if (~reset)
		begin
			Q <= 4'b0;
		end else if (load) begin
			Q <= D;
		end
endmodule 