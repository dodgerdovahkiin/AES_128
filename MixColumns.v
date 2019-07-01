`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:38:59 01/06/2019 
// Design Name: 
// Module Name:    MixColumns 
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
module MixColumns(in,out);
input [127:0] in;
output [127:0] out;
integer i;

mc_step1 m11(in[127:96],32'h02030101,out[127:120]);
mc_step1 m12(in[127:96],32'h01020301,out[119:112]);
mc_step1 m13(in[127:96],32'h01010203,out[111:104]);
mc_step1 m14(in[127:96],32'h03010102,out[103:96]);

mc_step1 m21(in[95:64],32'h02030101,out[95:88]);
mc_step1 m22(in[95:64],32'h01020301,out[87:80]);
mc_step1 m23(in[95:64],32'h01010203,out[79:72]);
mc_step1 m24(in[95:64],32'h03010102,out[71:64]);

mc_step1 m31(in[63:32],32'h02030101,out[63:56]);
mc_step1 m32(in[63:32],32'h01020301,out[55:48]);
mc_step1 m33(in[63:32],32'h01010203,out[47:40]);
mc_step1 m34(in[63:32],32'h03010102,out[39:32]);

mc_step1 m41(in[31:0],32'h02030101,out[31:24]);
mc_step1 m42(in[31:0],32'h01020301,out[23:16]);
mc_step1 m43(in[31:0],32'h01010203,out[15:8]);
mc_step1 m44(in[31:0],32'h03010102,out[7:0]);

endmodule
