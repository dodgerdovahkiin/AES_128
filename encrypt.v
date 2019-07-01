`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:57:15 02/09/2019 
// Design Name: 
// Module Name:    encrypt 
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
module encrypt(text,key,citxt);
input [127:0] text,key;
output [127:0] citxt;

//Round 0
wire [127:0] r0;
AddRoundKey A0(text,key,r0);

//Round 1
wire [127:0] key1,r1sb,r1sr,r1mx,r1a;
SubKey K1(key,key1,8'h01);
substitute SB1(r0,r1sb);
ShiftRows SR1(r1sb,r1sr);
MixColumns MX1(r1sr,r1mx);
AddRoundKey A1(r1mx,key1,r1a);

//Round 2
wire [127:0] key2,r2sb,r2sr,r2mx,r2a;
SubKey K2(key1,key2,8'h02);
substitute SB2(r1a,r2sb);
ShiftRows SR2(r2sb,r2sr);
MixColumns MX2(r2sr,r2mx);
AddRoundKey A2(r2mx,key2,r2a);

//Round 3
wire [127:0] key3,r3sb,r3sr,r3mx,r3a;
SubKey K3(key2,key3,8'h04);
substitute SB3(r2a,r3sb);
ShiftRows SR3(r3sb,r3sr);
MixColumns MX3(r3sr,r3mx);
AddRoundKey A3(r3mx,key3,r3a);

//Round 4
wire [127:0] key4,r4sb,r4sr,r4mx,r4a;
SubKey K4(key3,key4,8'h08);
substitute SB4(r3a,r4sb);
ShiftRows SR4(r4sb,r4sr);
MixColumns MX4(r4sr,r4mx);
AddRoundKey A4(r4mx,key4,r4a);

//Round 5
wire [127:0] key5,r5sb,r5sr,r5mx,r5a;
SubKey K5(key4,key5,8'h10);
substitute SB5(r4a,r5sb);
ShiftRows SR5(r5sb,r5sr);
MixColumns MX5(r5sr,r5mx);
AddRoundKey A5(r5mx,key5,r5a);

//Round 6
wire [127:0] key6,r6sb,r6sr,r6mx,r6a;
SubKey K6(key5,key6,8'h20);
substitute SB6(r5a,r6sb);
ShiftRows SR6(r6sb,r6sr);
MixColumns MX6(r6sr,r6mx);
AddRoundKey A6(r6mx,key6,r6a);

//Round 7
wire [127:0] key7,r7sb,r7sr,r7mx,r7a;
SubKey K7(key6,key7,8'h40);
substitute SB7(r6a,r7sb);
ShiftRows SR7(r7sb,r7sr);
MixColumns MX7(r7sr,r7mx);
AddRoundKey A7(r7mx,key7,r7a);

//Round 8
wire [127:0] key8,r8sb,r8sr,r8mx,r8a;
SubKey K8(key7,key8,8'h80);
substitute SB8(r7a,r8sb);
ShiftRows SR8(r8sb,r8sr);
MixColumns MX8(r8sr,r8mx);
AddRoundKey A8(r8mx,key8,r8a);

//Round 9
wire [127:0] key9,r9sb,r9sr,r9mx,r9a;
SubKey K9(key8,key9,8'h1b);
substitute SB9(r8a,r9sb);
ShiftRows SR9(r9sb,r9sr);
MixColumns MX9(r9sr,r9mx);
AddRoundKey A9(r9mx,key9,r9a);

//Round 10
wire [127:0] key10,r10sb,r10sr,r10a;
SubKey K10(key9,key10,8'h36);
substitute SB10(r9a,r10sb);
ShiftRows SR10(r10sb,r10sr);
AddRoundKey A10(r10sr,key10,r10a);

assign citxt=r10a;
endmodule
