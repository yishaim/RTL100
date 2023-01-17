`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2023 06:46:40 PM
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

    logic [7:0] a_i;
    logic [7:0] b_i;
    logic [2:0] op_i;
    logic [7:0] alu_o;
    
    top dut(.*);
    
    initial
        begin
            for (int i = 0; i < 8; i++)
                begin
                for (int j = 0; j < 3; j++)
                    begin
                        a_i = $urandom_range(0, 8'hff);
                        b_i = $urandom_range(0, 8'hff);
                        op_i = 3'(i);
                        #5;
                    end
                end
        end
    
endmodule
