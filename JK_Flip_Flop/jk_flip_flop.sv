`timescale 1ns / 1ps
module jk_flip_flop (
    input  logic clk,
    j,
    k,
    output logic q,
    qbar
);
  logic clkdiv;
  logic [27:0] cout;
  always_ff @(posedge clk) begin
    cout <= cout + 1;
    if (cout[27] == 1) begin
      cout <= 0;
    end
  end
  always @(posedge cout[27]) begin
    if (j == 0 & k == 1) begin
      q <= 0;
      qbar <= 1;
    end else if (j == 1 & k == 0) begin
      q <= 1;
      qbar <= 0;
    end else if (j == 0 & k == 0) begin
      q <= q;
      qbar <= qbar;
    end else if (j == 1 & k == 1) begin
      q = ~q;
      qbar = ~qbar;
    end
  end
endmodule
