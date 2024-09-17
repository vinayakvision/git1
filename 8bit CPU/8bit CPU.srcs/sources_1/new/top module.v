`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2024 07:03:30
// Design Name: 
// Module Name: top module
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


module CPU (
    input clk, reset
);

wire [15:0] instruction;
wire [7:0] readData1, readData2, ALUResult, nextPC;
wire [2:0] ALUOp;
wire RegWrite, ALUSrc;

// Program Counter
ProgramCounter pc(
    .clk(clk),
    .reset(reset),
    .nextPC(nextPC),
    .PC(PC)
);

// Instruction Memory
InstructionMemory imem(
    .PC(PC),
    .Instruction(instruction)
);

// Control Unit
ControlUnit control(
    .Opcode(instruction[15:12]),
    .RegWrite(RegWrite),
    .ALUSrc(ALUSrc),
    .ALUOp(ALUOp)
);

// Register File
RegisterFile regfile(
    .clk(clk),
    .ReadReg1(instruction[11:9]),
    .ReadReg2(instruction[8:6]),
    .WriteReg(instruction[5:3]),
    .WriteData(ALUResult),
    .RegWrite(RegWrite),
    .ReadData1(readData1),
    .ReadData2(readData2)
);

// ALU
ALU alu(
    .A(readData1),
    .B(ALUSrc ? instruction[7:0] : readData2),
    .ALUOp(ALUOp),
    .ALUOut(ALUResult)
);

// Program Counter Logic
assign nextPC = PC + 1;

endmodule

