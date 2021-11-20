`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  
// Made by: Ali Nowrouzi and Ahmad Foroughi 
// 
// Create Date:    10:13:18 11/13/2020 
//////////////////////////////////////////////////////////////////////////////////
module comparator_3_bit(output lt,eq,gt , input [2:0] a,b,input l,e,g
    );
	
	wire c2,c1,c0;
	
	xnor(c2 , a[2],b[2]),
		 (c1 , a[1],b[1]),
		 (c0 , a[0],b[0]);

	
	wire b2_not,b1_not,b0_not;
	not(b2_not,b[2]);
	not(b1_not,b[1]);
	not(b0_not,b[0]);

	wire w2,w1,w0;
	and(w2, a[2],b2_not),
		(w1, a[1],b1_not,c2),
		(w0, a[0],b0_not,c2,c1);
		
	wire g1,e1,l1;
	or(g1 ,w2,w1,w0);
	and(e1 ,c2,c1,c0);
	nor(l1,e1,g1);
	
	
	wire t1,t2;
	and(t1,l,e1);
	and(t2,g,e1);

	
	//or(lt,l1,t1);
	and(eq,e1,e);
	or(gt,g1,t2);
	or(lt,l1,t1);
	

	
endmodule
