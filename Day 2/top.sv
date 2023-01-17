`timescale 1ns / 1ps

//Day 2 - D FFs
// 1. Non resetable
// 2. Asynchronus 
// 3. Synchronus

module top(
    input logic clk,
    input logic rst,
    input logic d_i,
    output logic q_norst_o,
    output logic q_asyncrst_o,
    output logic q_syncrst_o
    );
    
    //Non-resetable
    always_ff @(posedge clk)
        q_norst_o <= d_i;
        
    //Synchronus rst
    always_ff @(posedge clk)
        begin
            if (rst)
              q_syncrst_o <= 1'b0;
            else
              q_syncrst_o <= d_i;
        end 
        
       
    //asynchronus rst
    always_ff @(posedge clk or posedge rst)
        begin
            if (rst)
                q_asyncrst_o <= 1'b0;
            else
                q_asyncrst_o <= d_i;
        end        
endmodule
