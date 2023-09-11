`timescale 1ns / 1ps
module decoder_3_8_tb ();
  logic [2:0] A;
  logic [7:0] Y;
  decoder_3_8 dut (
      .A(A),
      .Y(Y)
  );
  initial begin
    A = 3'b000;
    #10;
    A = 3'b001;
    #10;
    A = 3'b010;
    #10;
    A = 3'b011;
    #10;
    A = 3'b100;
    #10;
    A = 3'b101;
    #10;
    A = 3'b110;
    #10;
    A = 3'b111;
    $finish;
  end
endmodule