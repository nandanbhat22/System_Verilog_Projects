`timescale 1ns / 1ps

module demultiplexer_1_4_tb ();
  reg [1:0] s;
  reg y;
  wire [3:0] a;
  demultiplexer_1_4 dut (
      .s(s),
      .y(y),
      .a(a)
  );
  initial begin
    #10 y = 1'b0;
    s = 2'b00;
    #10 y = 1'b1;
    s = 2'b01;
    #10 y = 1'b0;
    s = 2'b10;
    #10 y = 1'b1;
    s = 2'b11;
    #10 $finish;
  end
endmodule
