`include "4bit_rca.v"

module tb_rca;
    reg  [3:0] a, b;
    reg  cin;
    wire [3:0] sum;
    wire [3:0] cout;

    top_module dut (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

    initial begin
      
	$monitor("Time=%0t | a=%b b=%b cin=%b | sum=%b cout=%b", $time, a, b,cin, sum, cout);
      
        a = 4'b0000; b = 4'b0000; cin = 0;   // 0 + 0 + 0
        #100 a = 4'b0001; b = 4'b0001; cin = 0;  // 1 + 1 = 2
        #100 a = 4'b0101; b = 4'b0011; cin = 0;  // 5 + 3 = 8
        #100 a = 4'b1111; b = 4'b0001; cin = 0;  // 15 + 1 = 16
        #100 a = 4'b1111; b = 4'b1111; cin = 1;  // 15 + 15 + 1 = 31
        #100 a = 4'b1101; b = 4'b1001; cin = 1;  // 13 + 9 + 1 = 23

        #1000 $finish;
      
    end
  	
  	initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0,tb_rca);
    end
  
endmodule
