`timescale 1ns / 1ps

//Day 6 - Shift Register

module top(
    input wire clk,
    input wire rst,
    input wire x_i,
    output wire [3:0] sr_o
    );
    
    logic [3:0] sr_ff;
    logic [3:0] sr_nxt;
    
    always_ff@(posedge clk or rst)
    begin
        if (rst)
            sr_ff <= 4'h0;
        else
            sr_ff <= sr_nxt;
    end
    
    assign sr_nxt = {sr_ff[2:0], x_i};
    assign sr_o = sr_ff;
endmodule
