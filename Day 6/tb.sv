`timescale 1ns / 1ps

module tb();

    logic clk;
    logic rst;
    logic x_i;
    logic [3:0] sr_o;
   
top dut(.*);   
    
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
    x_i <= 1'b0;
    @(posedge clk)
    rst <= 1'b0;
    @(posedge clk);
    for(int i = 0; i < 16; i++)
        begin
            x_i <= $urandom%2;
            @(posedge clk);
        end
end    
endmodule
