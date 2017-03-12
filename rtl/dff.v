module dff(input d, output reg q, input clk, reset);
  always @(posedge clk)
    if(reset)
      q <= 1'b0;
    else
      q <= d;
endmodule