`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:45:31 02/09/2019
// Design Name:   SBox
// Module Name:   H:/AES/Codes/test_SBox.v
// Project Name:  AES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SBox
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_SBox;

	// Inputs
	reg [7:0] in;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	SBox uut (
		.in(in), 
		.out(out)
	);

	initial begin
	in=8'h8f;
	
	end
   initial begin :das
//	reg [7:0] x=out;
	$monitor("%h",out);
	end
endmodule

