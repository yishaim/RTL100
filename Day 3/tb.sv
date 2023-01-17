`timescale 1ns / 1ps

module tb();

    logic clk;
    logic rst;
    logic a_i;
    logic rising_edge_o;
    logic falling_edge_o;
    
    top dut(.*);
    
    //generate clk
    always
        begin
            clk = 1'b0;
            #5;
            clk = ~clk;
            #5;
        end
                   
    initial
        begin
            rst <= 1'b1;
            a_i <= 1'b1;
            @(posedge clk)
            rst <= 1'b0;
            @(posedge clk);
            for (int i = 0; 1 < 16; i++)
                begin
                    a_i <= $random%2;
                    @(posedge clk);
                end
            $finish;
        end
endmodule
