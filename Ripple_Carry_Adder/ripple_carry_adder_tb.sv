`timescale 1ns / 1ps
module ripple_carry_adder_tb ();
  logic [3:0] a;
  logic [3:0] b;
  logic cin;
  logic [3:0] sum;
  logic cout;

  ripple_carry_adder uut1 (
      .a(a),
      .b(b),
      .cin(cin),
      .sum(sum),
      .cout(cout)
  );
  initial begin
    a   = 4'b0001;
    b   = 4'b0101;
    cin = 1'b0;
    #10 a = 4'b1110;
    b   = 4'b1001;
    cin = 1'b1;
    #10 a = 4'b0111;
    b   = 4'b1101;
    cin = 1'b0;
    #10 a = 4'b1001;
    b   = 4'b0101;
    cin = 1'b1;
    #10 $finish;
  end
endmodule
