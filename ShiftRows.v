`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:57:23 01/17/2019 
// Design Name: 
// Module Name:    ShiftRows 
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
module ShiftRows(in,out);
input [127:0] in;
output [127:0] out;

wire [31:0] row2,row3,row4;

assign row2={in[87:80],in[55:48],in[23:16],in[119:112]};
assign row3={in[47:40],in[15:8],in[111:104],in[79:72]};
assign row4={in[7:0],in[103:96],in[71:64],in[39:32]};

assign out[127:0]={in[127:120],row2[31:24],row3[31:24],row4[31:24],
				   in[95:88],row2[23:16],row3[23:16],row4[23:16],
				   in[63:56],row2[15:8],row3[15:8],row4[15:8],
				   in[31:24],row2[7:0],row3[7:0],row4[7:0]};
endmodule
