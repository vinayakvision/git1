`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2024 06:58:38
// Design Name: 
// Module Name: Instruction Memory
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


module InstructionMemory (
    input [7:0] PC,
    output [15:0] Instruction
);

reg [15:0] memory [0:255];

initial begin
    // Load instructions into memory (opcode + operands)
    memory[0] = 16'b0000000000000000;  // Example instruction
    // Add more instructions here
end

assign Instruction = memory[PC];
endmodule

