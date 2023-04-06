`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2021 08:28:45 AM
// Design Name: 
// Module Name: four_to_tow_encoder
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


module four_to_tow_encoder(F,A);
    input [3:0] A;
    output [1:0] F;
    reg [1:0] F;
    always @(*)
        if (A == 4'b1000)
            F = 2'b11;
        else if (A == 4'b0100)
            F = 2'b10;
        else if (A == 4'b0010)
            F = 2'b01;
        else if (A == 4'b0001)
            F = 2'b00;
        
endmodule
