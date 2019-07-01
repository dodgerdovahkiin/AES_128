`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:21:17 01/17/2019 
// Design Name: 
// Module Name:    AddRoundKey 
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
module AddRoundKey(in,key,out);

	input [127:0] in,key;
	output [127:0] out;

	assign out=in^key;

endmodule
