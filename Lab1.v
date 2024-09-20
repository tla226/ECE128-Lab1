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

// 8-to-1 mux using structural modeling
module Lab1(
    input a,
    input b,
    input c,
    input d,
    input e,
    input f,
    input g,
    input h,
    input s0,
    input s1,
    input s2,
    output y
);

    wire n0, n1, n2, y0, y1, y2, y3, y4, y5, y6, y7;
    
    not (n0, s0);
    not (n1, s1);
    not (n2, s2);
    
    and (y0, n0, n1, n2, a);
    and (y1, n0, n1, s2, b);
    and (y2, n0, s1, n2, c);
    and (y3, n0, s1, s2, d);
    and (y4, s0, n1, n2, e);
    and (y5, s0, n1, s2, f);
    and (y6, s0, s1, n2, g);
    and (y7, s0, s1, s2, h);
   
    or (y,y0,y1,y2,y3,y4,y5,y6,y7);

endmodule
