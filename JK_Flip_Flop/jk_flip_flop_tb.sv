`timescale 1ns / 1ps
module jk_flip_flop_tb ();
  logic j, k, clk, q, qbar;
  jk_flip_flop dut (
      .j(j),
      .k(k),
      .clk(clk),
      .q(q),
      .qbar(qbar)
  );
  initial begin
    clk = 0;
    forever #10 clk = ~clk;
  end
  initial begin
    j = 1;
    k = 0;
    #100 j = 0;
    k = 1;
    #100 j = 0;
    k = 0;
    #100 j = 1;
    k = 1;
  end
endmodule
