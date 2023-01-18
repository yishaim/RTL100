`timescale 1ns / 1ps

module tb();

localparam bin_width = 4;
localparam onehot_width = 16;

logic [bin_width:0] bin_i;
logic [onehot_width:0] onehot_o;

bin2oneHot #(bin_width, onehot_width) dut (.*);

initial
begin
    for (int i = 0; i < 32; i++)
    begin
        bin_i = $urandom_range(0,4'hf);
        #5;     
    end
    $finish();
end
endmodule
