`timescale 1ns / 1ps
module full_adder_half_tb ();
  logic a, b, cin;
  full_adder_half dut (
      .sum(sum),
      .carry(carry),
      .a(a),
      .b(b),
      .cin(cin)
  );
  initial begin
    a   = 0;
    b   = 0;
    cin = 0;
    #10 cin = 1;
    #10 b = 1;
    cin = 0;
    #10 cin = 1;
    #10 a = 1;
    b   = 0;
    cin = 0;
    #10 cin = 1;
    #10 b = 1;
    cin = 0;
    #10 cin = 1;
    $finish;
  end
endmodule
