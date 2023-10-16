`timescale 1ns / 1ps
module d_latch (
    input  logic reset,
    input  logic clk,
    input  logic d,
    output logic q
);
  always_latch begin
    if (reset == 1) q <= 0;
    else if (clk == 1) q <= d;
  end
endmodule
