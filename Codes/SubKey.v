`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:26:54 02/09/2019 
// Design Name: 
// Module Name:    KeySchedule 
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
module SubKey(keyin,keyout,rcon);

	input [127:0] keyin;
	input [7:0] rcon;
	output [127:0] keyout;

	wire [31:0] temp0;

	wire [31:0] temp,temp2;

	assign temp0[31:0]={keyin[23:16],keyin[15:8],keyin[7:0],keyin[31:24]};
	//assign i=32'h7E15162B;
	SBox4 s1(temp0,temp);
	assign temp2=temp^keyin[127:96];
	assign keyout[127:120]=temp2[31:24]^rcon;
	assign keyout[119:96]=temp2[23:0];
	assign keyout[95:64]=keyout[127:96]^keyin[95:64];
	assign keyout[63:32]=keyout[95:64]^keyin[63:32];
	assign keyout[31:0]=keyout[63:32]^keyin[31:0];

endmodule
