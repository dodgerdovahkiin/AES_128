`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:29:55 10/28/2018 
// Design Name: 
// Module Name:    mc_step1 
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
module mc_step1(in,const,out);
input [31:0] in,const;
output [7:0] out;
reg [7:0] reg2,reg3;
wire [7:0] term3,term2;
integer i;
reg [7:0] temp;
always@(*) begin:label
	//reg [7:0] reg2,reg3;
	temp=0;
	for(i=0;i<32;i=i+8) begin: test
		case(const[i+:8])
			8'h01: temp=temp^in[i+:8];
			8'h02: reg2=in[i+:8];
			8'h03: reg3=in[i+:8];
		endcase
	end
end
multi_2 M2(reg2,term2);
multi_3 M3(reg3,term3);
assign out = temp ^ term2 ^ term3;

endmodule
