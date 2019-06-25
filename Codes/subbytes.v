`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:41:48 10/28/2018 
// Design Name: 
// Module Name:    subbytes 
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
module subbytes(a,res);
input [127:0] a;
output reg [127:0] res;


reg [7:0] temp;
reg [7:0] term;
integer i;
always@(*) begin
	for(i=0;i<32;i=i+8) begin
		temp=a[i+:8];
		#10 res[i+:8]=term;
	end
end
substitute S(temp,term);
endmodule
