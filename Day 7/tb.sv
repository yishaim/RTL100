`timescale 1ns / 1ps


module tb();

    logic clk;
    logic rst;
    logic [3:0] lfsr_o;
    
    LFSR_4b dut(.*);   
    
always //generate clk
begin
    clk = 1'b1;
    #5;
    clk = ~clk;
    #5;  
end

initial
begin
    rst <= 1'b1;
    @(posedge clk)
    rst <= 1'b0;
    @(posedge clk);
    for(int i = 0; i < 10; i++)
        begin
            @(posedge clk);
        end
end    
endmodule
