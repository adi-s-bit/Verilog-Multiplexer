// half_adder_tb.v

`timescale 1 ns/10 ps

module mux2x1_tb;

    reg a, b, s;
  	assign a = 1;
    assign b = 0;
  	
    wire y;

    localparam period = 20;  

  mux2x1 UUT (.s(s), .y(y));
    
    initial 
        begin
          	$dumpfile("dump.vcd");
    		$dumpvars(1);
          
          	s = 0;
            #period;

          	s = 1;
            #period;

        end
  always@(s) 
    $monitor("At time = %t, Output = %d, S1 = %d", $time, y, s);

endmodule
