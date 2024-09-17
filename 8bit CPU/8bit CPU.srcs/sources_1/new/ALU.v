`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2024 06:55:29
// Design Name: 
// Module Name: ALU
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


module ALU (
    input [7:0] A, B,
    input [2:0] ALUOp,
    output reg [7:0] ALUOut,
    output Zero
);

assign Zero = (ALUOut == 8'b0);

always @(*) begin
    case (ALUOp)
        3'b000: ALUOut = A + B;  // ADD
        3'b001: ALUOut = A - B;  // SUB
        3'b010: ALUOut = A & B;  // AND
        3'b011: ALUOut = A | B;  // OR
        3'b100: ALUOut = ~A;     // NOT
        default: ALUOut = 8'b0;
    endcase
end
endmodule

