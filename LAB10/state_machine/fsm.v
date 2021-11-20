`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi 
// 
// Create Date:    15:10:13 12/27/2020 
//////////////////////////////////////////////////////////////////////////////////
module fsm (
   input [3:0]  secret_pass,
   input        request,
	input  [3:0] din,
	input        RST ,
	input        CLK ,
	input        confirm ,
	input  [3:0] pass_data ,
	output reg      en_left ,
	output reg      en_right ,
	output reg [3:0] dout
);


  reg [2:0] Prstate, Nxtstate;
  parameter S0 = 3'b000 , S1 = 3'b001 , S2 = 3'b101 , S3 = 3'b111 , S4 = 3'b110 , S5 = 3'b011 , S6 = 3'b100;
  
   always @ (posedge CLK or negedge RST)
      if (~RST) Prstate = S0;  //Initialize to state S0
      else Prstate = Nxtstate; //Clock operations
   always @ (Prstate or confirm or request or din or pass_data or secret_pass)     //Determine next state
         case (Prstate)
            S0: if (~request) Nxtstate = S0;
					 else Nxtstate = S1;	 
					 
            S1: if(~request) Nxtstate = S0;  
					 else if (request & ~confirm) Nxtstate = S1;  
                else if(request & confirm & secret_pass == pass_data) Nxtstate = S2;
                else if(request & confirm & secret_pass != pass_data) Nxtstate = S3;

            S2: if(~request) Nxtstate = S0;  
					 else if (request & ~confirm) Nxtstate = S2;  
					 else if (request & confirm) Nxtstate = S4;  
				
            S3: if(~request) Nxtstate = S0; 
					 else Nxtstate = S3; 
				S4: if( request & din[0] == 1'b1)  Nxtstate = S6; 
					 else if( request & din[0] == 1'b0)  Nxtstate = S5; 	
         endcase
			
	always @ (Prstate or confirm or request or din)      //Evaluate output
         case (Prstate)
            S0: begin  en_left=1'b0 ;  en_right=1'b0 ; end
            S1: begin en_left=1'b0 ; en_right=1'b0 ; end
            S2: begin en_left=1'b0 ; en_right=1'b0 ; end
            S3: begin en_left=1'b0 ; en_right=1'b0 ; end
            S4: begin dout = din;
				if (din[0]==1'b0) begin en_right=1'b1; en_left=1'b0;end
				    else if (din[0]==1'b1) begin en_right=1'b0; en_left=1'b1;end
				 end
         endcase

endmodule
