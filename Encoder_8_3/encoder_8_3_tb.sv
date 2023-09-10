`timescale 1ns / 1ps
module encoder_8_3_tb ();
  logic [7:0] A;
  logic [2:0] Y;
  encoder_8_3 u1 (
      .A(A),
      .Y(Y)
  );
  initial begin
    A = 8'b00000001;
    #50;
    A = 8'b00000010;
    #50;
    A = 8'b00000100;
    #50;
    A = 8'b00001000;
    #50;
    A = 8'b00010000;
    #50;
    A = 8'b00100000;
    #50;
    A = 8'b01000000;
    #50;
    A = 8'b10000000;
    #50;
    $finish;
  end
endmodule
