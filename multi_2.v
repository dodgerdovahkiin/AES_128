`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:26:23 10/28/2018 
// Design Name: 
// Module Name:    multi_2 
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
module multi_2(in,out
    );
	 input [7:0]in;
	 output reg [7:0] out;
	 
	 always@(in) begin
		case(in)
			8'h 0: out = 8'h 0;
			8'h 1: out = 8'h 2;
			8'h 2: out = 8'h 4;
			8'h 3: out = 8'h 6;
			8'h 4: out = 8'h 8;
			8'h 5: out = 8'h a;
			8'h 6: out = 8'h c;
			8'h 7: out = 8'h e;
			8'h 8: out = 8'h 10;
			8'h 9: out = 8'h 12;
			8'h a: out = 8'h 14;
			8'h b: out = 8'h 16;
			8'h c: out = 8'h 18;
			8'h d: out = 8'h 1a;
			8'h e: out = 8'h 1c;
			8'h f: out = 8'h 1e;
			8'h 10: out = 8'h 20;
			8'h 11: out = 8'h 22;
			8'h 12: out = 8'h 24;
			8'h 13: out = 8'h 26;
			8'h 14: out = 8'h 28;
			8'h 15: out = 8'h 2a;
			8'h 16: out = 8'h 2c;
			8'h 17: out = 8'h 2e;
			8'h 18: out = 8'h 30;
			8'h 19: out = 8'h 32;
			8'h 1a: out = 8'h 34;
			8'h 1b: out = 8'h 36;
			8'h 1c: out = 8'h 38;
			8'h 1d: out = 8'h 3a;
			8'h 1e: out = 8'h 3c;
			8'h 1f: out = 8'h 3e;
			8'h 20: out = 8'h 40;
			8'h 21: out = 8'h 42;
			8'h 22: out = 8'h 44;
			8'h 23: out = 8'h 46;
			8'h 24: out = 8'h 48;
			8'h 25: out = 8'h 4a;
			8'h 26: out = 8'h 4c;
			8'h 27: out = 8'h 4e;
			8'h 28: out = 8'h 50;
			8'h 29: out = 8'h 52;
			8'h 2a: out = 8'h 54;
			8'h 2b: out = 8'h 56;
			8'h 2c: out = 8'h 58;
			8'h 2d: out = 8'h 5a;
			8'h 2e: out = 8'h 5c;
			8'h 2f: out = 8'h 5e;
			8'h 30: out = 8'h 60;
			8'h 31: out = 8'h 62;
			8'h 32: out = 8'h 64;
			8'h 33: out = 8'h 66;
			8'h 34: out = 8'h 68;
			8'h 35: out = 8'h 6a;
			8'h 36: out = 8'h 6c;
			8'h 37: out = 8'h 6e;
			8'h 38: out = 8'h 70;
			8'h 39: out = 8'h 72;
			8'h 3a: out = 8'h 74;
			8'h 3b: out = 8'h 76;
			8'h 3c: out = 8'h 78;
			8'h 3d: out = 8'h 7a;
			8'h 3e: out = 8'h 7c;
			8'h 3f: out = 8'h 7e;
			8'h 40: out = 8'h 80;
			8'h 41: out = 8'h 82;
			8'h 42: out = 8'h 84;
			8'h 43: out = 8'h 86;
			8'h 44: out = 8'h 88;
			8'h 45: out = 8'h 8a;
			8'h 46: out = 8'h 8c;
			8'h 47: out = 8'h 8e;
			8'h 48: out = 8'h 90;
			8'h 49: out = 8'h 92;
			8'h 4a: out = 8'h 94;
			8'h 4b: out = 8'h 96;
			8'h 4c: out = 8'h 98;
			8'h 4d: out = 8'h 9a;
			8'h 4e: out = 8'h 9c;
			8'h 4f: out = 8'h 9e;
			8'h 50: out = 8'h a0;
			8'h 51: out = 8'h a2;
			8'h 52: out = 8'h a4;
			8'h 53: out = 8'h a6;
			8'h 54: out = 8'h a8;
			8'h 55: out = 8'h aa;
			8'h 56: out = 8'h ac;
			8'h 57: out = 8'h ae;
			8'h 58: out = 8'h b0;
			8'h 59: out = 8'h b2;
			8'h 5a: out = 8'h b4;
			8'h 5b: out = 8'h b6;
			8'h 5c: out = 8'h b8;
			8'h 5d: out = 8'h ba;
			8'h 5e: out = 8'h bc;
			8'h 5f: out = 8'h be;
			8'h 60: out = 8'h c0;
			8'h 61: out = 8'h c2;
			8'h 62: out = 8'h c4;
			8'h 63: out = 8'h c6;
			8'h 64: out = 8'h c8;
			8'h 65: out = 8'h ca;
			8'h 66: out = 8'h cc;
			8'h 67: out = 8'h ce;
			8'h 68: out = 8'h d0;
			8'h 69: out = 8'h d2;
			8'h 6a: out = 8'h d4;
			8'h 6b: out = 8'h d6;
			8'h 6c: out = 8'h d8;
			8'h 6d: out = 8'h da;
			8'h 6e: out = 8'h dc;
			8'h 6f: out = 8'h de;
			8'h 70: out = 8'h e0;
			8'h 71: out = 8'h e2;
			8'h 72: out = 8'h e4;
			8'h 73: out = 8'h e6;
			8'h 74: out = 8'h e8;
			8'h 75: out = 8'h ea;
			8'h 76: out = 8'h ec;
			8'h 77: out = 8'h ee;
			8'h 78: out = 8'h f0;
			8'h 79: out = 8'h f2;
			8'h 7a: out = 8'h f4;
			8'h 7b: out = 8'h f6;
			8'h 7c: out = 8'h f8;
			8'h 7d: out = 8'h fa;
			8'h 7e: out = 8'h fc;
			8'h 7f: out = 8'h fe;
			8'h 80: out = 8'h 1b;
			8'h 81: out = 8'h 19;
			8'h 82: out = 8'h 1f;
			8'h 83: out = 8'h 1d;
			8'h 84: out = 8'h 13;
			8'h 85: out = 8'h 11;
			8'h 86: out = 8'h 17;
			8'h 87: out = 8'h 15;
			8'h 88: out = 8'h b;
			8'h 89: out = 8'h 9;
			8'h 8a: out = 8'h f;
			8'h 8b: out = 8'h d;
			8'h 8c: out = 8'h 3;
			8'h 8d: out = 8'h 1;
			8'h 8e: out = 8'h 7;
			8'h 8f: out = 8'h 5;
			8'h 90: out = 8'h 3b;
			8'h 91: out = 8'h 39;
			8'h 92: out = 8'h 3f;
			8'h 93: out = 8'h 3d;
			8'h 94: out = 8'h 33;
			8'h 95: out = 8'h 31;
			8'h 96: out = 8'h 37;
			8'h 97: out = 8'h 35;
			8'h 98: out = 8'h 2b;
			8'h 99: out = 8'h 29;
			8'h 9a: out = 8'h 2f;
			8'h 9b: out = 8'h 2d;
			8'h 9c: out = 8'h 23;
			8'h 9d: out = 8'h 21;
			8'h 9e: out = 8'h 27;
			8'h 9f: out = 8'h 25;
			8'h a0: out = 8'h 5b;
			8'h a1: out = 8'h 59;
			8'h a2: out = 8'h 5f;
			8'h a3: out = 8'h 5d;
			8'h a4: out = 8'h 53;
			8'h a5: out = 8'h 51;
			8'h a6: out = 8'h 57;
			8'h a7: out = 8'h 55;
			8'h a8: out = 8'h 4b;
			8'h a9: out = 8'h 49;
			8'h aa: out = 8'h 4f;
			8'h ab: out = 8'h 4d;
			8'h ac: out = 8'h 43;
			8'h ad: out = 8'h 41;
			8'h ae: out = 8'h 47;
			8'h af: out = 8'h 45;
			8'h b0: out = 8'h 7b;
			8'h b1: out = 8'h 79;
			8'h b2: out = 8'h 7f;
			8'h b3: out = 8'h 7d;
			8'h b4: out = 8'h 73;
			8'h b5: out = 8'h 71;
			8'h b6: out = 8'h 77;
			8'h b7: out = 8'h 75;
			8'h b8: out = 8'h 6b;
			8'h b9: out = 8'h 69;
			8'h ba: out = 8'h 6f;
			8'h bb: out = 8'h 6d;
			8'h bc: out = 8'h 63;
			8'h bd: out = 8'h 61;
			8'h be: out = 8'h 67;
			8'h bf: out = 8'h 65;
			8'h c0: out = 8'h 9b;
			8'h c1: out = 8'h 99;
			8'h c2: out = 8'h 9f;
			8'h c3: out = 8'h 9d;
			8'h c4: out = 8'h 93;
			8'h c5: out = 8'h 91;
			8'h c6: out = 8'h 97;
			8'h c7: out = 8'h 95;
			8'h c8: out = 8'h 8b;
			8'h c9: out = 8'h 89;
			8'h ca: out = 8'h 8f;
			8'h cb: out = 8'h 8d;
			8'h cc: out = 8'h 83;
			8'h cd: out = 8'h 81;
			8'h ce: out = 8'h 87;
			8'h cf: out = 8'h 85;
			8'h d0: out = 8'h bb;
			8'h d1: out = 8'h b9;
			8'h d2: out = 8'h bf;
			8'h d3: out = 8'h bd;
			8'h d4: out = 8'h b3;
			8'h d5: out = 8'h b1;
			8'h d6: out = 8'h b7;
			8'h d7: out = 8'h b5;
			8'h d8: out = 8'h ab;
			8'h d9: out = 8'h a9;
			8'h da: out = 8'h af;
			8'h db: out = 8'h ad;
			8'h dc: out = 8'h a3;
			8'h dd: out = 8'h a1;
			8'h de: out = 8'h a7;
			8'h df: out = 8'h a5;
			8'h e0: out = 8'h db;
			8'h e1: out = 8'h d9;
			8'h e2: out = 8'h df;
			8'h e3: out = 8'h dd;
			8'h e4: out = 8'h d3;
			8'h e5: out = 8'h d1;
			8'h e6: out = 8'h d7;
			8'h e7: out = 8'h d5;
			8'h e8: out = 8'h cb;
			8'h e9: out = 8'h c9;
			8'h ea: out = 8'h cf;
			8'h eb: out = 8'h cd;
			8'h ec: out = 8'h c3;
			8'h ed: out = 8'h c1;
			8'h ee: out = 8'h c7;
			8'h ef: out = 8'h c5;
			8'h f0: out = 8'h fb;
			8'h f1: out = 8'h f9;
			8'h f2: out = 8'h ff;
			8'h f3: out = 8'h fd;
			8'h f4: out = 8'h f3;
			8'h f5: out = 8'h f1;
			8'h f6: out = 8'h f7;
			8'h f7: out = 8'h f5;
			8'h f8: out = 8'h eb;
			8'h f9: out = 8'h e9;
			8'h fa: out = 8'h ef;
			8'h fb: out = 8'h ed;
			8'h fc: out = 8'h e3;
			8'h fd: out = 8'h e1;
			8'h fe: out = 8'h e7;
			8'h ff: out = 8'h e5;

		endcase
    end
endmodule
