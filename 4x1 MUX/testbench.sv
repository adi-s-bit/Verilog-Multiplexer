module top;

wire  out;
reg  a;
reg  b;
reg  c;
reg  d;
reg s0, s1;

m41 name(.out(out), .a(a), .b(b), .c(c), .d(d), .s0(s0), .s1(s1));
 initial
 begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

 	a=1'b1; b=1'b1; c=1'b0; d=1'b0;
 	s0=1'b0; s1=1'b0;
//  	#480 $finish;


   #20; 
    s0=0;
    s1=0;
   #20; 
    s0=1;
    s1=0;
   #20; 
    s0=0;
    s1=1;
   #20; 
    s0=1;
    s1=1;
   #20; 
    s0=0;
    s1=0;

end
always@(a or b or c or d or s0 or s1) 
  $monitor("At time = %t, Output = %d, S1 = %d, S0 = %d", $time, out, s1, s0);
task display;
  #1 $display("out:%0h, s1:%0h, s0:%0h",
      out, s1, s0);
endtask

endmodule;