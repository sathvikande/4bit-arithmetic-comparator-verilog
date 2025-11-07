`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2025 10:50:53
// Design Name: 
// Module Name: comparator_4bit
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


module comparator_4bit(
input A,B,
output  GREATER ,EQUAL,SMALLER
    );
    assign GREATER = (A>B);
    assign EQUAL = (A==B);
    assign SMALLER = (A<B);
    
endmodule
