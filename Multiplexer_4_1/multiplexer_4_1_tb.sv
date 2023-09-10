`timescale 1ns / 1ps

module multiplexer_4_1_tb ();
  reg [3:0] a;
  reg [1:0] s;
  wire o;
  multiplexer_4_1 uut (
      .a(a),
      .s(s),
      .o(o)
  );
  initial begin
    #10 a = 4'b1010;
    #10 s = 2'b00;
    #10 s = 2'b01;
    #10 s = 2'b10;
    #10 s = 2'b11;
    #10 $finish;
  end
endmodule
