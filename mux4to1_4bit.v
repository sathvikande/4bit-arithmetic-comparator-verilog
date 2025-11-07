`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2025 10:54:25
// Design Name: 
// Module Name: mux4to1_4bit
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


module mux4to1_4bit(
input [3:0] A0,A1,A2,A3,
input [1:0] sel,
output reg [3:0] Y

    );
    
    always @(*) begin
     Y = 4'b0000;
    case(sel) 
    
    2'b00 : Y= A0;//add
    2'b01 : Y= A1;//sub
    2'b10 : Y= A2;//comp
    2'b11 : Y= A3;//reserved 
    default : Y = 4'b0000;
    
    endcase
    end
    
     
endmodule
