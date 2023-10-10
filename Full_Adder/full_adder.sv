`timescale 1ns / 1ps
module full_adder (
    a,
    b,
    c,
    sum,
    carry
);
  input logic a, b, c;
  output logic sum, carry;
  logic x[3:0];
  xor x1 (x[0], a, b);
  xor x2 (sum, x[0], c);
  and a1 (x[1], a, b);
  and a2 (x[2], b, c);
  and a3 (x[3], c, a);
  or o1 (carry, x[1], x[2], x[3]);
endmodule
