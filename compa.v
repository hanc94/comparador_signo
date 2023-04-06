`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2021 10:20:00 PM
// Design Name: 
// Module Name: compa
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


module compa(A,B,out);
    input [7:0]A;
    input [7:0]B;
    output [1:0]out;
    reg [1:0]out;
    always @(*)  
    if ( A[6:0]<B[6:0])
       if ( B[7] == 1'b1 & A[7] == 1'b1)
        out = 2'b10;//A mayor B
       else if ( B[7] == 1'b1)
        out = 2'b10;//A mayor B
       else
        out = 2'b01;//B mayor A
    else if ( A[6:0] == B[6:0])
        if ( B[7] == 1'b1 & A[7] == 1'b1)
        out = 2'b00;//A igual B
       else if ( B[7] == 1'b1 & A[7] == 1'b0)
        out = 2'b10;//A mayor B
       else if (B[7] == 1'b0)  
        out = 2'b01;//B mayor A
       else 
        out = 2'b00;//A igual B  
    else if ( A[6:0] > B[6:0])
        if ( B[7] == 1'b1 & A[7] == 1'b1)
        out = 2'b01;//B mayor A
       else if ( B[7] == 1'b1)
        out = 2'b10;//A mayor B
       else
        out = 2'b01;//B mayor A    
    else
        out = 2'bxx;//señales desconocidas.
     
endmodule
