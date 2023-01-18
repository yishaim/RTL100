`timescale 1ns / 1ps

//Day 8 - Parameterized binary to one how converter

module bin2oneHot#(

parameter bin_width = 4,
parameter onehot_width = 16
    )
    (
    input [bin_width:0] bin_i,
    output [onehot_width:0] onehot_o
    );
    
    assign onehot_o = 1'b1<<bin_i;
endmodule
