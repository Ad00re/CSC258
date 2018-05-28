module Hex_display(SW,HEX);
	input [3:0] SW;
	output [6:0] HEX;
	
	zero m1(
		.a(SW[3]),
		.b(SW[2]),
		.c(SW[1]),
		.d(SW[0]),
		.m(HEX[0])
		);
	one m2(
		.a(SW[3]),
		.b(SW[2]),
		.c(SW[1]),
		.d(SW[0]),
		.m(HEX[1])
		);
	two m3(
		.a(SW[3]),
		.b(SW[2]),
		.c(SW[1]),
		.d(SW[0]),
		.m(HEX[2])
		);
	three m4(
		.a(SW[3]),
		.b(SW[2]),
		.c(SW[1]),
		.d(SW[0]),
		.m(HEX[3])
		);
   four m5(
		.a(SW[3]),
		.b(SW[2]),
		.c(SW[1]),
		.d(SW[0]),
		.m(HEX[4])
		);
	five m6(
		.a(SW[3]),
		.b(SW[2]),
		.c(SW[1]),
		.d(SW[0]),
		.m(HEX[5])
		);
	six m7(
		.a(SW[3]),
		.b(SW[2]),
		.c(SW[1]),
		.d(SW[0]),
		.m(HEX[6])
		);
endmodule

module zero(a,b,c,d,m);
input a,b,c,d;
output m;
assign m = (~a&~b&~c&d)|(~a&b&~c&~d)|(a&b&~c&d)|(a&~b&c&d);
endmodule

module one(a,b,c,d,m);
input a,b,c,d;
output m;
assign m = (b&c&~d)|(a&c&d)|(~a&b&~c&d)|(a&b&~c&~d);
endmodule

module two(a,b,c,d,m);
input a,b,c,d;
output m;
assign m = (a&b&c)|(~a&~b&c&~d)|(a&b&~c&~d);
endmodule

module three(a,b,c,d,m);
input a,b,c,d;
output m;
assign m = (b&c&d)|(~a&b&~c&~d)|(~a&b&~c&d)|(a&~b&c&~d);
endmodule

module four(a,b,c,d,m);
input a,b,c,d;
output m;
assign m = (~a&d)|(~a&b&~c&~d)|(a&~b&~c&d);
endmodule

module five(a,b,c,d,m);
input a,b,c,d;
output m;
assign m = (~a&~b&c)|(~a&~b&~c&d)|(a&b&~c&d);
endmodule

module six(a,b,c,d,m);
input a,b,c,d;
output m;
assign m = (~a&~b&~c)|(~a&b&c&d)|(a&b&~c&~d);
endmodule
