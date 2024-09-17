`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2024 06:57:35
// Design Name: 
// Module Name: control unit
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


module ControlUnit (
    input [3:0] Opcode,
    output reg RegWrite, ALUSrc, MemRead, MemWrite, Branch,
    output reg [2:0] ALUOp
);

always @(*) begin
    case (Opcode)
        4'b0000: begin  // ADD
            RegWrite = 1; ALUSrc = 0; ALUOp = 3'b000;
        end
        4'b0001: begin  // SUB
            RegWrite = 1; ALUSrc = 0; ALUOp = 3'b001;
        end
        4'b0010: begin  // AND
            RegWrite = 1; ALUSrc = 0; ALUOp = 3'b010;
        end
        4'b0011: begin  // OR
            RegWrite = 1; ALUSrc = 0; ALUOp = 3'b011;
        end
        4'b0100: begin  // Load Immediate
            RegWrite = 1; ALUSrc = 1; ALUOp = 3'b000;
        end
        default: begin  // NOP
            RegWrite = 0; ALUSrc = 0; ALUOp = 3'b000;
        end
    endcase
end
endmodule

