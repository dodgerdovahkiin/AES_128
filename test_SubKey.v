`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:27:32 02/09/2019
// Design Name:   SubKey
// Module Name:   H:/AES/Codes/test_SubKey.v
// Project Name:  AES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SubKey
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_SubKey;

	// Inputs
	reg [127:0] keyin;
	reg [7:0] rcon;

	// Outputs
	wire [127:0] keyout;

	// Instantiate the Unit Under Test (UUT)
	SubKey uut (
		.keyin(keyin), 
		.keyout(keyout), 
		.rcon(rcon)
	);

	initial begin
		keyin=128'hf2c295f27a96b9435935807a7359f67f;								
		rcon=8'h04;
		$monitor("%h",keyout);
	end
      
endmodule

