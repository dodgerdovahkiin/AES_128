`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:33:57 01/06/2019
// Design Name:   multi_3
// Module Name:   H:/AES/Codes/test_multi_3.v
// Project Name:  AES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multi_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_multi_3;

	// Inputs
	reg [7:0] in;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	multi_3 uut (
		.in(in), 
		.out(out)
	);

	initial begin
		in=8'h2f;

	end
      
endmodule

