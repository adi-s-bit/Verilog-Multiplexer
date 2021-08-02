module m41 ( a, b, c, d, s0, s1, out);

input wire a, b, c, d;
input wire s0, s1;
output reg out;

assign out = (!s0*!s1*a) +(s0*!s1*b)+(!s0*s1*c)+(s0*s1*d);

endmodule