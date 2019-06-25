`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:12:11 10/28/2018
// Design Name:   subbytes
// Module Name:   H:/AES/Codes/test_subbytes.v
// Project Name:  AES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: subbytes
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_subbytes;

	// Inputs
	reg [127:0] a;

	// Outputs
	wire [127:0] res;

	// Instantiate the Unit Under Test (UUT)
	subbytes uut (
		.a(a), 
		.res(res)
	);
	integer i;
	initial begin
		// Initialize Inputs
		//a = 0;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		a=128'h19a09ae93df4c6f8e3e28d48be2b2a08;
		i=res;
		$display("%h",i);
	end
      
endmodule

