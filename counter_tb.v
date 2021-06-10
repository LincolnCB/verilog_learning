`ifndef _COUNTER_TB_
`define _COUNTER_TB_

`include "counter.v"

`timescale 1ns/1ns

module counter_tb;
   /*autoreginput*/
   // Beginning of automatic reg inputs (for undeclared instantiated-module inputs)
   reg			clk;			// To UUT of counter.v
   reg [3:0]		max_cnt_i;		// To UUT of counter.v
   // End of automatics

   /*autowire*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire [3:0]		cnt_o;			// From UUT of counter.v
   // End of automatics

   initial begin
      $dumpfile("icarus_compile/000_counter_tb.lxt");
      $dumpvars(0, counter_tb);

      clk = 1;
      max_cnt_i = 10;

      #200 max_cnt_i = 4;
      #1000 $finish;
   end

   always begin
      #5 clk = !clk;
   end

   counter UUT(/*autoinst*/
	       // Outputs
	       .cnt_o			(cnt_o[3:0]),
	       // Inputs
	       .clk			(clk),
	       .max_cnt_i		(max_cnt_i[3:0]));

endmodule // counter_tb

`endif
