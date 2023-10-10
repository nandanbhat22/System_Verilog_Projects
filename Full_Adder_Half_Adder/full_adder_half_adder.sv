`timescale 1ns / 1ps
module half_adder (
    sum,
    carry,
    a,
    b
);
  input logic a, b;
  output logic sum, carry;
  xor (sum, a, b);
  and (carry, a, b);
endmodule

module full_adder_half (
    sum,
    carry,
    a,
    b,
    cin
);
  input logic a, b, cin;
  output logic sum, carry;
  logic s1, c1;
  half_adder h1 (
      s1,
      c1,
      a,
      b
  );
  half_adder h2 (
      sum,
      c2,
      s1,
      cin
  );
  or o1 (carry, c1, c2);
endmodule
