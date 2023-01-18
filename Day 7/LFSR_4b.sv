`timescale 1ns / 1ps

//Day 7 - 4 bit LFSR, x_i = lfsr_o[1] ^ lfsr_o[3]

module top(
    input wire clk,
    input wire rst,
    output wire [3:0] lfsr_o
    );

logic [3:0] lfsr_nxt;
logic [3:0] lfsr_ff;

always_ff @(posedge clk or posedge rst)
    begin
        if (rst)
            lfsr_ff <= 4'he;
        else
            lfsr_ff <= lfsr_nxt;     
    end   
            
    assign lfsr_nxt = {lfsr_ff[2:0], lfsr_ff[1] ^ lfsr_ff[3]};
    assign lfsr_o = lfsr_ff;    
endmodule
