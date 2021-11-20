`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi
//
// Create Date:   20:21:41 12/27/2020
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [3:0] secret_pass;
	reg request;
	reg [3:0] din;
	reg RST;
	reg CLK;
	reg confirm;
	reg [3:0] pass_data;

	// Outputs
	wire en_left;
	wire en_right;
	wire [3:0] dout;

	// Instantiate the Unit Under Test (UUT)
	fsm uut (
		.secret_pass(secret_pass), 
		.request(request), 
		.din(din), 
		.RST(RST), 
		.CLK(CLK), 
		.confirm(confirm), 
		.pass_data(pass_data), 
		.en_left(en_left), 
		.en_right(en_right), 
		.dout(dout)
	);

	
	initial begin
		// Initialize Inputs
		secret_pass = 4'b1010;
		request = 1'b0;
		RST = 1'b0;
		
		
		#30
		RST = 1'b1;
		request = 1'b1;

		#30
		//S1
		request = 1'b1;
		confirm = 1'b1;
		pass_data = 4'b1010;
		
		#30
		//S2
		request = 1'b1;
		confirm = 1'b1;
		din = 4'b1101;
		
		
	end
	initial
   begin
      CLK = 1'b0;
      repeat (30)
      #10 CLK = ~CLK;
   end
      
endmodule

