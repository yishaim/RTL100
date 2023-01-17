`timescale 1ns / 1ps

//Day 3 - Edge Detector

module top(
    input wire clk,
    input wire rst,
    input wire a_i,
    output wire rising_edge_o,
    output wire falling_edge_o
    );
    
    logic a_ff;
    
    always_ff @(posedge clk or posedge rst)
        begin
            if (rst)
                a_ff <= 1'b0;
            else
                a_ff <= a_i;
        end
    //rising edge -> delayed signal = 0, current signal = 1         
    assign rising_edge_o = ~a_ff & a_i;
    
    //falling edge -> delayed signal = 1, current signal = 1
    assign falling_edge_o = a_ff & ~a_i;
    
endmodule
