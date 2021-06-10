`ifndef _COUNTER_
 `define _COUNTER_

 `timescale 1ns/1ns

module counter(
	       input 	    clk,
	       input [3:0]  max_cnt_i,
	       output reg [3:0] cnt_o
	       );

   initial cnt_o = 0;

   always @(posedge clk) begin
      if (cnt_o >= max_cnt_i) begin
	 cnt_o <= 0;
      end else begin
	 cnt_o <= cnt_o + 1;
      end
   end

endmodule // counter

`endif
