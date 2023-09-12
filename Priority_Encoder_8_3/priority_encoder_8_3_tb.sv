`timescale 1ns / 1ps
module priority_encoder_8_3_tb ();
  reg [7:0] Y;
  reg EN;
  wire [2:0] A;
  priority_encoder_8_3 uut (
      .Y (Y),
      .EN(EN),
      .A (A)
  );
  initial begin
    EN = 1;
    Y  = 8'h01;
    #30;
    Y = 8'h02;
    #30;
    Y = 8'h04;
    #30;
    Y = 8'h08;
    #30;
    Y = 8'h10;
    #30;
    Y = 8'h20;
    #30;
    Y = 8'h40;
    #30;
    Y = 8'h80;
    #30;
    $finish;
  end
endmodule