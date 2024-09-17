`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 15:52:36
// Design Name: 
// Module Name: 4bit_alu
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


module ALU_4bit (
    input [3:0] A, B,   // 4-bit inputs
    input [2:0] ALU_Sel, // 3-bit ALU selection input
    output reg [3:0] ALU_Result, // 4-bit ALU result
    output reg CarryOut // Carry out
);
    
    reg [4:0] temp; // Temporary register to store result with carry

    always @(*) begin
        case (ALU_Sel)
            3'b000: temp = A + B;          // Addition
            3'b001: temp = A - B;          // Subtraction
            3'b010: ALU_Result = A & B;    // AND
            3'b011: ALU_Result = A | B;    // OR
            3'b100: ALU_Result = A ^ B;    // XOR
            3'b101: ALU_Result = ~(A | B); // NOR
            3'b110: ALU_Result = A << 1;   // Left shift A
            3'b111: ALU_Result = A >> 1;   // Right shift A
            default: temp = A + B;
        endcase

        // Assign the result and carry for operations that involve addition or subtraction
        if (ALU_Sel == 3'b000 || ALU_Sel == 3'b001) begin
            ALU_Result = temp[3:0];   // Lower 4 bits of the result
            CarryOut = temp[4];       // Carry-out bit
        end else begin
            CarryOut = 0;
        end
    end

endmodule

