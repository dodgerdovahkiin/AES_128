`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:30:20 10/06/2018 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(a,b,cin,s,cout);

input a,b,cin;
output s,cout;
wire z1,z2,z3;
xor(z1,a,b);
xor(s,z1,cin);
and(z2,z1,cin);
and(z3,a,b);
or(cout,z2,z3);

endmodule
