`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2024 06:59:54
// Design Name: 
// Module Name: program counter
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


module ProgramCounter (
    input clk, reset,
    input [7:0] nextPC,
    output reg [7:0] PC
);

always @(posedge clk or posedge reset) begin
    if (reset)
        PC <= 8'b0;
    else
        PC <= nextPC;
end
endmodule

