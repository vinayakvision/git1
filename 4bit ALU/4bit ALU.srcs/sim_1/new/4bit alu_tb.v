`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 15:53:40
// Design Name: 
// Module Name: 4bit alu_tb
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


module tb_ALU_4bit;

    // Inputs
    reg [3:0] A, B;
    reg [2:0] ALU_Sel;

    // Outputs
    wire [3:0] ALU_Result;
    wire CarryOut;

    // Instantiate the ALU module
    ALU_4bit uut (
        .A(A), 
        .B(B), 
        .ALU_Sel(ALU_Sel), 
        .ALU_Result(ALU_Result), 
        .CarryOut(CarryOut)
    );

    initial begin
        // Test addition
        A = 4'b0011; B = 4'b0101; ALU_Sel = 3'b000;
        #10;
        
        // Test subtraction
        A = 4'b1010; B = 4'b0011; ALU_Sel = 3'b001;
        #10;

        // Test AND
        A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b010;
        #10;

        // Test OR
        A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b011;
        #10;

        // Test XOR
        A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b100;
        #10;

        // Test NOR
        A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b101;
        #10;

        // Test left shift
        A = 4'b0011; ALU_Sel = 3'b110;
        #10;

        // Test right shift
        A = 4'b0011; ALU_Sel = 3'b111;
        #10;

        // End simulation
        $finish;
    end

    initial begin
        // Monitor values
        $monitor("Time = %0d, A = %b, B = %b, ALU_Sel = %b, ALU_Result = %b, CarryOut = %b", $time, A, B, ALU_Sel, ALU_Result, CarryOut);
    end

endmodule

