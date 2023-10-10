`timescale 1ns / 1ps
module ripple_carry_adder (
    output logic [3:0] sum,
    output logic cout,
    input logic [3:0] a,
    b,
    input logic cin
);
  logic [7:0] x;
  full_adder fa1 (
      a[0],
      b[0],
      cin,
      sum[0],
      x[0]
  );
  full_adder fa2 (
      a[1],
      b[1],
      x[0],
      sum[1],
      x[1]
  );
  full_adder fa3 (
      a[2],
      b[2],
      x[1],
      sum[2],
      x[2]
  );
  full_adder fa4 (
      a[3],
      b[3],
      x[2],
      sum[3],
      cout
  );
endmodule
