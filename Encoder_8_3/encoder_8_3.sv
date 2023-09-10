`timescale 1ns / 1ps
module encoder_8_3 (
    input  logic [7:0] A,
    output logic [2:0] Y
);
  always @(A) begin
    case (A)
      8'b00000001: Y = 3'b000;
      8'b00000010: Y = 3'b001;
      8'b00000100: Y = 3'b010;
      8'b00001000: Y = 3'b011;
      8'b00010000: Y = 3'b100;
      8'b00100000: Y = 3'b101;
      8'b01000000: Y = 3'b110;
      default: Y = 3'b111;
    endcase
  end
endmodule
