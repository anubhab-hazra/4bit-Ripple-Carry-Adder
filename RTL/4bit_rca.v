module top_module( 
    input [3:0] a, b,
    input cin,
    output [3:0] cout,
    output [3:0] sum );
    
    assign {cout[0],sum[0]}=a[0]+b[0]+cin;  //1st
    genvar i;
    generate begin
        for(i=1;i<4;i=i+1) begin
            fa f1(.fa_sum(sum[i]),.fa_cout(cout[i]),.a(a[i]),.b(b[i]),.cin(cout[i-1]));
        end
    end
    endgenerate
endmodule

module fa(input a,b,cin,output fa_sum,fa_cout);
    assign fa_sum=a^b^cin;
    assign fa_cout=a&b| cin&(a^b);
endmodule
