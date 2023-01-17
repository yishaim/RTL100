`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2023 09:46:34 PM
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb();

    logic clk;
    logic rst;
    logic [7:0] cnt_o;

top dut(.*);

    always
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
        @(posedge clk)
        rst <= 1'b0;
        for (int i = 0; i < 200; i++)
            @(posedge clk); //1
    end   
endmodule
