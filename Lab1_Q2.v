`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2024 12:23:50 PM
// Design Name: 
// Module Name: Multiplexer
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


module Lab1_Q2(

    input [1:0] i0,
    input [1:0] i1,
    input [1:0] i2,
    input [1:0] i3,
    input s0,
    input s1,
    output [1:0] y
);
// need 2 or gates 9for all the 0,s all the 1's)
    wire n0, n1, y0, y1, y2, y3, y4, y5, y6, y7;
    
    not (n0, s0);
    not (n1, s1);
   
    and (y0, n0, n1, i0[0]);
    and (y1, n0, n1, i0[1]);
    
    and (y2, n0, s1, i1[0]);
    and (y3, n0, s1, i1[1]);
    
    and (y4, s0, n1, i2[0]);
    and (y5, s0, n1, i2[1]);
    
    and (y6, s0, s1, i3[0]);
    and (y7, s0, s1, i3[0]);
   
   
    or (y[0], y0,y2,y4,y6);
    or (y[1], y1,y3,y5,y7);

endmodule
