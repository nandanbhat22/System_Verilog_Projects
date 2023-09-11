`timescale 1ns / 1ps
module priority_encoder_8_3 (
    input [7:0] Y,
    input EN,
    output reg [2:0] A
);

  always @(*) begin
    if (EN)
      case (Y)
        8'b00000001: A = 3'd0;
        8'b00000010: A = 3'd1;
        8'b00000100: A = 3'd2;
        8'b00001000: A = 3'd3;
        8'b00010000: A = 3'd4;
        8'b00100000: A = 3'd5;
        8'b01000000: A = 3'd6;
        8'b10000000: A = 3'd7;
      endcase
  end
endmodule
