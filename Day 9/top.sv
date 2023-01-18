`timescale 1ns / 1ps

//Day 9 - Parameterized binary to gray code converter

module bin2gray#(
parameter width = 4
    )
    (
    input [width:0] bin_i,
    output [width:0] gray_o
    );
    
    assign gray_o = bin_i ^ (bin_i >> 1);
    
endmodule
