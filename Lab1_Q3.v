`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2024 03:25:07 PM
// Design Name: 
// Module Name: Lab1_Q3
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


module Lab1_Q3(
    input [1:0] i0,
    input [1:0] i1,
    input [1:0] i2,
    input [1:0] i3,
    input [1:0] s,
    output reg [1:0] y
    );
    
    always @(i0 or i1 or i2 or i3 or s)
    begin
        case (s)
            2'b00: y = i0;
            2'b01: y = i1;
            2'b10: y = i2;
            2'b11: y = i3;
            default: y=1'bx;
            endcase
          
    end
endmodule
