`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:07:09 01/06/2019
// Design Name:   substitute
// Module Name:   H:/AES/Codes/test_substitute.v
// Project Name:  AES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: substitute
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_substitute;

	// Inputs
	reg [127:0] a;

	// Outputs
	wire [127:0] out;

	// Instantiate the Unit Under Test (UUT)
	substitute uut (
		.a(a), 
		.out(out)
	);
	//integer i,n;
	initial begin
		a=128'h19a09ae93df4c6f8e3e28d48be2b2a08;
		//i=out;
		//n=0;
		//$write("%h",out[0:8]);
		
	end
      
endmodule

