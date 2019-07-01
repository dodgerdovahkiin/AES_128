`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:39:26 01/17/2019
// Design Name:   MixColumns
// Module Name:   H:/AES/Codes/test_MixColumns.v
// Project Name:  AES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MixColumns
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_MixColumns;

	// Inputs
	reg [127:0] in;

	// Outputs
	wire [127:0] out;

	// Instantiate the Unit Under Test (UUT)
	MixColumns uut (
		.in(in), 
		.out(out)
	);

	initial begin
	in=128'hd4bf5d30e0b452aeb84111f11e2798e5;	
	$monitor("%h",out);
	end

      
endmodule

