`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2021 11:22:51 PM
// Design Name: 
// Module Name: pri_enc
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


module pri_enc(in, out);
    
    output [1:0] out;
    input [3:0] in;
    reg [1:0] out;
    
    always @(*)
    case (in)
        
        {3'bx,1'b1}: out = 2'b00;    
        {2'bx,1'b1,1'b0}:out = 2'b01;
        {1'bx,1'b1,2'b0}:out = 2'b10;
        {1'b1,3'b0}:out = 2'b11;
        
    endcase
        
endmodule
