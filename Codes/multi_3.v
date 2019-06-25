`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:35:59 10/28/2018 
// Design Name: 
// Module Name:    multi_3 
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
module multi_3(in,out
    );
	 input [7:0] in;
	 output [7:0] out;
	 wire [7:0] res1;
	 multi_2 A1(in,res1);
	 assign out=res1^in;
endmodule
