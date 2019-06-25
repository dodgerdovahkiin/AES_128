`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:49:49 02/09/2019 
// Design Name: 
// Module Name:    SBox4 
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
module SBox4(in,out);
input [31:0] in;
output [31:0] out;

SBox S1(in[31:24],out[31:24]);
SBox S2(in[23:16],out[23:16]);
SBox S3(in[15:8],out[15:8]);
SBox S4(in[7:0],out[7:0]);

endmodule
