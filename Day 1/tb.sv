`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2023 07:14:31 PM
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

top dut(.*);

    logic [7:0] a_i;
    logic [7:0] b_i;
    logic sel_i;
    logic [7:0] y_o;
    
    initial begin
        for (int i = 0; i < 10; i++)
            begin
                a_i = $urandom_range(0,8'hff);
                b_i = $urandom_range(0,8'hff);
                sel_i = $urandom%2;
                #5;
            end
    end 
endmodule
