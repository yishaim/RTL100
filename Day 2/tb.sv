`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2023 07:53:12 PM
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
    logic d_i;
    logic q_norst_o;
    logic q_asyncrst_o;
    logic q_syncrst_o;
    
    top dut (.*);
    
    //Generate clk
    always
        begin
        clk = 1'b0;
        #5;
        clk = ~clk;
        #5;
        end
        
    initial 
        begin
        d_i = 1'b0;
        rst = 1'b1;
        @(posedge clk)
        rst = 1'b0;
        @(posedge clk)
        d_i = 1'b1;
        @(posedge clk)
        @(posedge clk)
        @(negedge clk)
        rst = 1'b1;
        @(posedge clk)
        @(posedge clk)
        d_i = 1'b0;
        @(posedge clk)
        d_i = 1'b0;
        @(posedge clk)
        rst = 1'b0;
        @(posedge clk)
        d_i = 1'b1;
        @(posedge clk)
        $finish();
        end
endmodule
