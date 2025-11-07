`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2025 10:59:22
// Design Name: 
// Module Name: tb_arith_compare_top
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


module tb_arith_compare_top();
reg [3:0] A,B;
reg [1:0] ctrl;
wire [3:0] result;
wire [2:0] flag;

arith_compare_top uut (
.A(A),
.B(B),
.ctrl(ctrl),
.result(result),
.flag(flag)
);

initial begin
   $display("A\tB\tctrl\tResult\tFlags(GEQ)\tOperation");
A=4'b0101;B=4'b0011; ctrl =2'b00; #10;
 $display("%b\t%b\t%02b\t%b\t%b\tADD", A, B, ctrl, result, flag);
A=4'b1001;B=4'b0010; ctrl =2'b01; #10;
 $display("%b\t%b\t%02b\t%b\t%b\tSUB", A, B, ctrl, result, flag);
A=4'b1010;B=4'b0111; ctrl =2'b10; #10;
 $display("%b\t%b\t%02b\t%b\t%b\tCOM", A, B, ctrl, result, flag);
A=4'b0010;B=4'b1111; ctrl =2'b10; #10;
 $display("%b\t%b\t%02b\t%b\t%b\tCOM", A, B, ctrl, result, flag);
A=4'b0101;B=4'b0101; ctrl =2'b10; #10;
 $display("%b\t%b\t%02b\t%b\t%b\tCOM", A, B, ctrl, result, flag);
 
 $display("Simulation complete ");
$finish;


end
 endmodule
