`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:01:51 10/07/2018 
// Design Name: 
// Module Name:    basic_multiplier_4x4 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module basic_multiplier_4x4(a,b,s);

input [3:0] a,b;
output [7:0] s;

wire c1,c2,c3,c4,c5,c6,c7,c8,c9;

wire y1,y2,y3,y4;
assign s[0]=a[0]&b[0];
assign a1b0=a[1] & b[0];
assign a2b0=a[2] & b[0];
assign a3b0=a[3] & b[0];
assign a0b1=a[0] & b[1];
assign a1b1=a[1] & b[1];
assign a2b1=a[2] & b[1];
assign a3b1=a[3] & b[1];
assign a0b2=a[0] & b[2];
assign a1b2=a[1] & b[2];
assign a2b2=a[2] & b[2];
assign a3b2=a[3] & b[2];
assign a0b3=a[0] & b[3];
assign a1b3=a[1] & b[3];
assign a2b3=a[2] & b[3];
assign a3b3=a[3] & b[3];
   
half_adder ha(a1b0,a0b1,s[1],c1);
full_adder fa1(a2b0,a1b1,c1,y1,c2);
full_adder fa2(a0b2,y1,c2,s[2],c3);
full_adder fa3(a3b0,a2b1,c3,y2,c4);
full_adder fa4(a1b2,y2,c4,y3,c5);
full_adder fa5(a0b3,y3,c5,s[3],c6);
full_adder fa6(a3b1,a2b2,c6,y4,c7);
full_adder fa7(a1b3,y4,c7,s[4],c8);
full_adder fa8(a3b2,a2b3,c8,s[5],c9);
half_adder ha2(a3b3,c9,s[6],s[7]);

endmodule
