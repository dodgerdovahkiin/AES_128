`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:38 10/01/2018 
// Design Name: 
// Module Name:    test 
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
module test(out,in);
input [1:0] in;
output reg [1:0] out;

always@(*) begin
	case(in)
	 1: out=1;
	 2: out=2;
	 3: out=3;
	 0: out=0;
	endcase
	end
endmodule
