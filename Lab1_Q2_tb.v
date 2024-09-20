`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2024 01:19:05 PM
// Design Name: 
// Module Name: multiplexer_tb
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

`timescale 1ns/1ps
module Lab1_Q2_tb;
wire y; //output 
reg i0,i1,i2,i3,s0,s1; //input
 
// Instantiate original module (named DUT {device under test}) 
Lab1_Q2 uut (i0,i1,i2,i3,s0,s1,y);

initial begin 
    #10 i0=2'b11;i1=2'b00;i2=2'b00;i3=2'b00;s0=1'b0;s1=1'b0;
	#10 i0=2'b00;i1=2'b11;i2=2'b00;i3=2'b00;s0=1'b0;s1=1'b1;
	#10 i0=2'b00;i1=2'b00;i2=2'b11;i3=2'b00;s0=1'b1;s1=1'b0;
	#10 i0=2'b00;i1=2'b00;i2=2'b00;i3=2'b11;s0=1'b1;s1=1'b1;

	#10 $stop;

end 
endmodule
