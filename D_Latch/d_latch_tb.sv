`timescale 1ns / 1ps
module d_latch_tb ();
  logic d;
  logic clk;
  logic reset;
  logic q;
  d_latch dut (
      .d(d),
      .clk(clk),
      .reset(reset),
      .q(q)
  );
  initial begin

    reset <= 1;
    d <= 0;
    clk <= 0;
    #10 reset <= 1;
    d   <= 0;
    clk <= 1;
    #10 reset <= 1;
    d   <= 1;
    clk <= 0;
    #10 reset <= 1;
    d   <= 1;
    clk <= 1;
    #10 reset <= 0;
    d   <= 0;
    clk <= 0;
    #10 reset <= 0;
    d   <= 0;
    clk <= 1;
    #10 reset <= 0;
    d   <= 1;
    clk <= 0;
    #10 reset <= 0;
    d   <= 1;
    clk <= 1;
    #10;
    $finish;
  end
endmodule
