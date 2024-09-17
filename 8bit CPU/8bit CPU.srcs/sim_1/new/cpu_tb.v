`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2024 07:06:44
// Design Name: 
// Module Name: cpu_tb
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


module CPU_tb;

reg clk, reset;
CPU cpu(.clk(clk), .reset(reset));

initial begin
    clk = 0;
    reset = 1;
    #5 reset = 0;
end

always #5 clk = ~clk;  // Generate clock signal

endmodule

