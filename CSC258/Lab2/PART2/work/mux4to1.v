//SW[3:0] data input
//SW[9:8] selected input
//LEDR[0] output display
module mux(LEDR,SW);
input [9:0] SW;
output [9:0] LEDR;
wire connector_0, connector_1;
mux2to1 uv(.x(SW[0]),
.y(SW[1]),
.s(SW[9]),
.m(connector_0)
);
mux2to1 wx(.x(SW[2]),
.y(SW[3]),
.s(SW[9]),
.m(connector_1)
);
mux2to1 all(.x(connector_0),
.y(connector_1),
.s(SW[8]),
.m(LEDR[0])
);
endmodule
		 	 	 				
module mux2to1(x, y, s, m);
input x,y,s; 
output m;
					
assign m = s&y|~s&x	;	
endmodule 
				
	
