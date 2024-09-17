`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2024 06:56:38
// Design Name: 
// Module Name: register file
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
module RegisterFile (
    input clk,
    input [2:0] ReadReg1, ReadReg2, WriteReg,
    input [7:0] WriteData,
    input RegWrite,
    output [7:0] ReadData1, ReadData2
);

reg [7:0] registers [7:0];

assign ReadData1 = registers[ReadReg1];
assign ReadData2 = registers[ReadReg2];

always @(posedge clk) begin
    if (RegWrite) 
        registers[WriteReg] <= WriteData;
end
endmodule

