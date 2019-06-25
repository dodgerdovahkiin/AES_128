`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:44:42 10/28/2018
// Design Name:   mc_step1
// Module Name:   H:/AES/Codes/test_mc_step1.v
// Project Name:  AES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mc_step1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mc_step1;

	// Inputs
	reg [31:0] in;
	reg [31:0] const;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	mc_step1 uut (
		.in(in), 
		.const(const), 
		.out(out)
	);

	initial begin
		in=32'h1e2798e5;const=32'h01020301;
		$monitor("%h",out);
	end
      
endmodule

