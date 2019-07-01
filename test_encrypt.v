`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:08:03 02/09/2019
// Design Name:   encrypt
// Module Name:   H:/AES/Codes/test_encrypt.v
// Project Name:  AES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encrypt
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_encrypt;

	// Inputs
	reg [127:0] text;
	reg [127:0] key;

	// Outputs
	wire [127:0] citxt;
	
	// Instantiate the Unit Under Test (UUT)
	encrypt uut (
		.text(text), 
		.key(key), 
		.citxt(citxt)
	);

	initial begin
		// Initialize Inputs
		text=128'hA34FD673569F636D9E5512114232D11E;								
		key=128'h2B7E151628AED2A6ABF7158809CF4F3C;							
	end
	initial begin :da
//			reg [127:0] citxt;
//      $monitor("r1sb %h",uut.r1sb);
//		$monitor("r1sr %h",uut.r1sr);
		$monitor(" %h",citxt);
	end
endmodule

