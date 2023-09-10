`timescale 1ns / 1ps

module demultiplexer_1_4 (
    input logic [1:0] s,
    input logic y,
    output logic [3:0] a
);

  assign a[0] = ~s[0] & ~s[1] & y;
  assign a[1] = s[0] & ~s[1] & y;
  assign a[2] = ~s[0] & s[1] & y;
  assign a[3] = s[0] & s[1] & y;
endmodule
