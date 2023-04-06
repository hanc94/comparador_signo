`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2021 10:04:44 PM
// Design Name: 
// Module Name: tow_deco_four
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


module tow_deco_four(A,F);
    input [1:0] A;
    output [3:0] F;
    reg [3:0] F;
    always @(*)
    case (A)
        2'b00: F = 4'b0001;
        2'b01: F = 4'b0010;
        2'b10: F = 4'b0100;
        2'b11: F = 4'b1000;
    endcase
endmodule
