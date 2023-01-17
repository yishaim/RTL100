`timescale 1ns / 1ps

//Day 5 - Counter by odd numbers, reset to 1

module top(
    input wire clk,
    input wire rst,
    output logic [7:0] cnt_o
    );
    
    logic [7:0] next_num;
    
    always_ff@(posedge clk or posedge rst)
        begin
        if (rst)
            begin
                cnt_o <= 8'h1;
            end
        else
            begin
                cnt_o <= next_num;
            end
        end
        assign next_num = cnt_o + 8'h2;
endmodule
    