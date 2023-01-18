`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2023 10:33:54 PM
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

localparam width = 3;

logic [width:0] bin_i;
logic [width:0] gray_o;

bin2gray #(width) dut (.*);

initial
begin
    for (int i = 0; i < 16; i++)
    begin
        bin_i <= i;
        #5;
    end
    $finish();
end
endmodule
