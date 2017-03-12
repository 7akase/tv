`timescale 1ns / 1ps

module dut(input a, output z, input clk, reset);
  dff dff1(~a, z, clk, reset);
endmodule

