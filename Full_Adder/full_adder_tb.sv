`timescale 1ns / 1ps
module full_adder_tb ();
  logic a, b, c;
  logic sum, carry;
  full_adder uut1 (
      a,
      b,
      c,
      sum,
      carry
  );
  initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    #10;
    a = 1'b0;
    b = 1'b0;
    c = 1'b1;
    #10;
    a = 1'b0;
    b = 1'b1;
    c = 1'b0;
    #10;
    a = 1'b0;
    b = 1'b1;
    c = 1'b1;
    #10;
    a = 1'b1;
    b = 1'b0;
    c = 1'b0;
    #10;
    a = 1'b1;
    b = 1'b0;
    c = 1'b1;
    #10;
    a = 1'b1;
    b = 1'b1;
    c = 1'b0;
    #10;
    a = 1'b1;
    b = 1'b1;
    c = 1'b1;
    #10;
    $finish;
  end
endmodule
