module mux2x1(s,y);
  	reg a,b;
	assign a = 1;
    assign b = 0;
    input wire s;
    output wire y;
	assign y = s?b:a;
endmodule