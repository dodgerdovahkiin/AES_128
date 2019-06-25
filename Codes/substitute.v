`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:06 10/28/2018 
// Design Name: 
// Module Name:    substitute 
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
module substitute(a,out);
input [127:0] a;
output reg [127:0] out;
integer i;
always@(*) begin
	for(i=0;i<128;i=i+8) begin
	
		case(a[i+:8])
				8'h0	:out[i+:8]=8'h63	;
				8'h1	:out[i+:8]=8'h7c	;
				8'h2	:out[i+:8]=8'h77	;
				8'h3	:out[i+:8]=8'h7b	;
				8'h4	:out[i+:8]=8'hf2	;
				8'h5	:out[i+:8]=8'h6b	;
				8'h6	:out[i+:8]=8'h6f	;
				8'h7	:out[i+:8]=8'hc5	;
				8'h8	:out[i+:8]=8'h30	;
				8'h9	:out[i+:8]=8'h1	;
				8'ha	:out[i+:8]=8'h67	;
				8'hb	:out[i+:8]=8'h2b	;
				8'hc	:out[i+:8]=8'hfe	;
				8'hd	:out[i+:8]=8'hd7	;
				8'he	:out[i+:8]=8'hab	;
				8'hf	:out[i+:8]=8'h76	;
				8'h10	:out[i+:8]=8'hca	;
				8'h11	:out[i+:8]=8'h82	;
				8'h12	:out[i+:8]=8'hc9	;
				8'h13	:out[i+:8]=8'h7d	;
				8'h14	:out[i+:8]=8'hfa	;
				8'h15	:out[i+:8]=8'h59	;
				8'h16	:out[i+:8]=8'h47	;
				8'h17	:out[i+:8]=8'hf0	;
				8'h18	:out[i+:8]=8'had	;
				8'h19	:out[i+:8]=8'hd4	;
				8'h1a	:out[i+:8]=8'ha2	;
				8'h1b	:out[i+:8]=8'haf	;
				8'h1c	:out[i+:8]=8'h9c	;
				8'h1d	:out[i+:8]=8'ha4	;
				8'h1e	:out[i+:8]=8'h72	;
				8'h1f	:out[i+:8]=8'hc0	;
				8'h20	:out[i+:8]=8'hb7	;
				8'h21	:out[i+:8]=8'hfd	;
				8'h22	:out[i+:8]=8'h93	;
				8'h23	:out[i+:8]=8'h26	;
				8'h24	:out[i+:8]=8'h36	;
				8'h25	:out[i+:8]=8'h3f	;
				8'h26	:out[i+:8]=8'hf7	;
				8'h27	:out[i+:8]=8'hcc	;
				8'h28	:out[i+:8]=8'h34	;
				8'h29	:out[i+:8]=8'ha5	;
				8'h2a	:out[i+:8]=8'he5	;
				8'h2b	:out[i+:8]=8'hf1	;
				8'h2c	:out[i+:8]=8'h71	;
				8'h2d	:out[i+:8]=8'hd8	;
				8'h2e	:out[i+:8]=8'h31	;
				8'h2f	:out[i+:8]=8'h5	;
				8'h30	:out[i+:8]=8'h4	;
				8'h31	:out[i+:8]=8'hc7	;
				8'h32	:out[i+:8]=8'h23	;
				8'h33	:out[i+:8]=8'hc3	;
				8'h34	:out[i+:8]=8'h18	;
				8'h35	:out[i+:8]=8'h96	;
				8'h36	:out[i+:8]=8'h5	;
				8'h37	:out[i+:8]=8'h9a	;
				8'h38	:out[i+:8]=8'h7	;
				8'h39	:out[i+:8]=8'h12	;
				8'h3a	:out[i+:8]=8'h80	;
				8'h3b	:out[i+:8]=8'he2	;
				8'h3c	:out[i+:8]=8'heb	;
				8'h3d	:out[i+:8]=8'h27	;
				8'h3e	:out[i+:8]=8'hb2	;
				8'h3f	:out[i+:8]=8'h75	;
				8'h40	:out[i+:8]=8'h9	;
				8'h41	:out[i+:8]=8'h83	;
				8'h42	:out[i+:8]=8'h2c	;
				8'h43	:out[i+:8]=8'h1a	;
				8'h44	:out[i+:8]=8'h1b	;
				8'h45	:out[i+:8]=8'h6e	;
				8'h46	:out[i+:8]=8'h5a	;
				8'h47	:out[i+:8]=8'ha0	;
				8'h48	:out[i+:8]=8'h52	;
				8'h49	:out[i+:8]=8'h3b	;
				8'h4a	:out[i+:8]=8'hd6	;
				8'h4b	:out[i+:8]=8'hb3	;
				8'h4c	:out[i+:8]=8'h29	;
				8'h4d	:out[i+:8]=8'he3	;
				8'h4e	:out[i+:8]=8'h2f	;
				8'h4f	:out[i+:8]=8'h84	;
				8'h50	:out[i+:8]=8'h53	;
				8'h51	:out[i+:8]=8'hd1	;
				8'h52	:out[i+:8]=8'h0	;
				8'h53	:out[i+:8]=8'hed	;
				8'h54	:out[i+:8]=8'h20	;
				8'h55	:out[i+:8]=8'hfc	;
				8'h56	:out[i+:8]=8'hb1	;
				8'h57	:out[i+:8]=8'h5b	;
				8'h58	:out[i+:8]=8'h6a	;
				8'h59	:out[i+:8]=8'hcb	;
				8'h5a	:out[i+:8]=8'hbe	;
				8'h5b	:out[i+:8]=8'h39	;
				8'h5c	:out[i+:8]=8'h4a	;
				8'h5d	:out[i+:8]=8'h4c	;
				8'h5e	:out[i+:8]=8'h58	;
				8'h5f	:out[i+:8]=8'hcf	;
				8'h60	:out[i+:8]=8'hd0	;
				8'h61	:out[i+:8]=8'hef	;
				8'h62	:out[i+:8]=8'haa	;
				8'h63	:out[i+:8]=8'hfb	;
				8'h64	:out[i+:8]=8'h43	;
				8'h65	:out[i+:8]=8'h4d	;
				8'h66	:out[i+:8]=8'h33	;
				8'h67	:out[i+:8]=8'h85	;
				8'h68	:out[i+:8]=8'h45	;
				8'h69	:out[i+:8]=8'hf9	;
				8'h6a	:out[i+:8]=8'h2	;
				8'h6b	:out[i+:8]=8'h7f	;
				8'h6c	:out[i+:8]=8'h50	;
				8'h6d	:out[i+:8]=8'h3c	;
				8'h6e	:out[i+:8]=8'h9f	;
				8'h6f	:out[i+:8]=8'ha8	;
				8'h70	:out[i+:8]=8'h51	;
				8'h71	:out[i+:8]=8'ha3	;
				8'h72	:out[i+:8]=8'h40	;
				8'h73	:out[i+:8]=8'h85	;
				8'h74	:out[i+:8]=8'h92	;
				8'h75	:out[i+:8]=8'h9d	;
				8'h76	:out[i+:8]=8'h38	;
				8'h77	:out[i+:8]=8'hf5	;
				8'h78	:out[i+:8]=8'hbc	;
				8'h79	:out[i+:8]=8'hb6	;
				8'h7a	:out[i+:8]=8'hda	;
				8'h7b	:out[i+:8]=8'h21	;
				8'h7c	:out[i+:8]=8'h10	;
				8'h7d	:out[i+:8]=8'hff	;
				8'h7e	:out[i+:8]=8'hf3	;
				8'h7f	:out[i+:8]=8'hd2	;
				8'h80	:out[i+:8]=8'hcd	;
				8'h81	:out[i+:8]=8'h0c	;
				8'h82	:out[i+:8]=8'h13	;
				8'h83	:out[i+:8]=8'hec	;
				8'h84	:out[i+:8]=8'h5f	;
				8'h85	:out[i+:8]=8'h97	;
				8'h86	:out[i+:8]=8'h44	;
				8'h87	:out[i+:8]=8'h17	;
				8'h88	:out[i+:8]=8'hc4	;
				8'h89	:out[i+:8]=8'ha7	;
				8'h8a	:out[i+:8]=8'h7e	;
				8'h8b	:out[i+:8]=8'h3d	;
				8'h8c	:out[i+:8]=8'h64	;
				8'h8d	:out[i+:8]=8'h5d	;
				8'h8e	:out[i+:8]=8'h19	;
				8'h8f	:out[i+:8]=8'h73	;
				8'h90	:out[i+:8]=8'h60	;
				8'h91	:out[i+:8]=8'h81	;
				8'h92	:out[i+:8]=8'h4f	;
				8'h93	:out[i+:8]=8'hdc	;
				8'h94	:out[i+:8]=8'h22	;
				8'h95	:out[i+:8]=8'h2a	;
				8'h96	:out[i+:8]=8'h90	;
				8'h97	:out[i+:8]=8'h88	;
				8'h98	:out[i+:8]=8'h46	;
				8'h99	:out[i+:8]=8'hee	;
				8'h9a	:out[i+:8]=8'hb8	;
				8'h9b	:out[i+:8]=8'h14	;
				8'h9c	:out[i+:8]=8'hde	;
				8'h9d	:out[i+:8]=8'h5e	;
				8'h9e	:out[i+:8]=8'h0b	;
				8'h9f	:out[i+:8]=8'hdb	;
				8'ha0	:out[i+:8]=8'he0	;
				8'ha1	:out[i+:8]=8'h32	;
				8'ha2	:out[i+:8]=8'h3a	;
				8'ha3	:out[i+:8]=8'h0a	;
				8'ha4	:out[i+:8]=8'h49	;
				8'ha5	:out[i+:8]=8'h6	;
				8'ha6	:out[i+:8]=8'h24	;
				8'ha7	:out[i+:8]=8'h5c	;
				8'ha8	:out[i+:8]=8'hc2	;
				8'ha9	:out[i+:8]=8'hd3	;
				8'haa	:out[i+:8]=8'hac	;
				8'hab	:out[i+:8]=8'h62	;
				8'hac	:out[i+:8]=8'h91	;
				8'had	:out[i+:8]=8'h95	;
				8'hae	:out[i+:8]=8'he4	;
				8'haf	:out[i+:8]=8'h79	;
				8'hb0	:out[i+:8]=8'he7	;
				8'hb1	:out[i+:8]=8'hc8	;
				8'hb2	:out[i+:8]=8'h37	;
				8'hb3	:out[i+:8]=8'h6d	;
				8'hb4	:out[i+:8]=8'h8d	;
				8'hb5	:out[i+:8]=8'hd5	;
				8'hb6	:out[i+:8]=8'h4e	;
				8'hb7	:out[i+:8]=8'ha9	;
				8'hb8	:out[i+:8]=8'h6c	;
				8'hb9	:out[i+:8]=8'h5f	;
				8'hba	:out[i+:8]=8'hf4	;
				8'hbb	:out[i+:8]=8'hea	;
				8'hbc	:out[i+:8]=8'h65	;
				8'hbd	:out[i+:8]=8'h7a	;
				8'hbe	:out[i+:8]=8'hae	;
				8'hbf	:out[i+:8]=8'h8	;
				8'hc0	:out[i+:8]=8'hba	;
				8'hc1	:out[i+:8]=8'h78	;
				8'hc2	:out[i+:8]=8'h25	;
				8'hc3	:out[i+:8]=8'h2e	;
				8'hc4	:out[i+:8]=8'h1c	;
				8'hc5	:out[i+:8]=8'ha6	;
				8'hc6	:out[i+:8]=8'hb4	;
				8'hc7	:out[i+:8]=8'hc6	;
				8'hc8	:out[i+:8]=8'he8	;
				8'hc9	:out[i+:8]=8'hdd	;
				8'hca	:out[i+:8]=8'h74	;
				8'hcb	:out[i+:8]=8'h1f	;
				8'hcc	:out[i+:8]=8'h4b	;
				8'hcd	:out[i+:8]=8'h	bd	;
				8'hce	:out[i+:8]=8'h8b	;
				8'hcf	:out[i+:8]=8'h8a	;
				8'hd0	:out[i+:8]=8'h70	;
				8'hd1	:out[i+:8]=8'h3e	;
				8'hd2	:out[i+:8]=8'hb5	;
				8'hd3	:out[i+:8]=8'h66	;
				8'hd4	:out[i+:8]=8'h48	;
				8'hd5	:out[i+:8]=8'h3	;
				8'hd6	:out[i+:8]=8'hf6	;
				8'hd7	:out[i+:8]=8'h0e	;
				8'hd8	:out[i+:8]=8'h61	;
				8'hd9	:out[i+:8]=8'h35	;
				8'hda	:out[i+:8]=8'h57	;
				8'hdb	:out[i+:8]=8'h	b9	;
				8'hdc	:out[i+:8]=8'h86	;
				8'hdd	:out[i+:8]=8'hc1	;
				8'hde	:out[i+:8]=8'h1d	;
				8'hdf	:out[i+:8]=8'h9e	;
				8'he0	:out[i+:8]=8'he1	;
				8'he1	:out[i+:8]=8'hf8	;
				8'he2	:out[i+:8]=8'h98	;
				8'he3	:out[i+:8]=8'h11	;
				8'he4	:out[i+:8]=8'h69	;
				8'he5	:out[i+:8]=8'hd9	;
				8'he6	:out[i+:8]=8'h8e	;
				8'he7	:out[i+:8]=8'h94	;
				8'he8	:out[i+:8]=8'h9b	;
				8'he9	:out[i+:8]=8'h1e	;
				8'hea	:out[i+:8]=8'h87	;
				8'heb	:out[i+:8]=8'he9	;
				8'hec	:out[i+:8]=8'hce	;
				8'hed	:out[i+:8]=8'h55	;
				8'hee	:out[i+:8]=8'h28	;
				8'hef	:out[i+:8]=8'hdf	;
				8'hf0	:out[i+:8]=8'h8c	;
				8'hf1	:out[i+:8]=8'ha1	;
				8'hf2	:out[i+:8]=8'h89	;
				8'hf3	:out[i+:8]=8'h0d	;
				8'hf4	:out[i+:8]=8'hbf	;
				8'hf5	:out[i+:8]=8'he6	;
				8'hf6	:out[i+:8]=8'h42	;
				8'hf7	:out[i+:8]=8'h68	;
				8'hf8	:out[i+:8]=8'h41	;
				8'hf9	:out[i+:8]=8'h99	;
				8'hfa	:out[i+:8]=8'h28	;
				8'hfb	:out[i+:8]=8'h0f	;
				8'hfc	:out[i+:8]=8'hb0	;
				8'hfd	:out[i+:8]=8'h54	;
				8'hfe	:out[i+:8]=8'hbb	;
				8'hff	:out[i+:8]=8'h16	;
			endcase
	end	
end	
endmodule
