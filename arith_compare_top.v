`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2025 10:26:12
// Design Name: 
// Module Name: arith_compare_top
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


module arith_compare_top(

input [3:0] A,B,
input [1:0] ctrl,
output [3:0] result,
output [2:0] flag  // [2]greater,[0]less,[1]equal 

    );
    
    wire [3:0] sum,diff;
    wire gt,eq,lt;
    
    //sub modules 
    adder_4bit ADD (
    .A(A),.B(B),.SUM(sum)
    );
    subtractor_4bit SUB(
    .A(A),.B(B),.Diff(diff)
    );
    comparator_4bit COMP(
    .A(A),.B(B),
    .GREATER(gt), .EQUAL(eq),.SMALLER(lt)
    );
    
    
        // Combine comparator flags into a 4-bit form for MUX input

    wire [3:0] com_result = {1'b0,gt,eq,lt};
    
    mux4to1_4bit MUX (
    .A0(sum),
    .A1(diff),
    .A2(com_result),
    .A3(4'b0000),
    .sel(ctrl),
    .Y(result)
    );
    
    assign  flag = {gt,eq,lt};
    
    
endmodule
