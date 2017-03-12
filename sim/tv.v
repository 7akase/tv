module generate_pulse #(parameter from = 1, to = 2) (output reg out);
  initial begin
            out <= 0;
    #(from) out <= 1;
    #(to  ) out <= 0;
  end
endmodule

module generate_pulses #(parameter period = 2) (output reg out);
  initial begin
    out <= 1'b0;
  end
  always #(period/2) out <= ~out;
endmodule

//`define rise (2'b01)
//`define fall (2'b10)
//module find_edge #(type = `rise) (input in, output out, `sync);
//  reg [1:0] seq;
//  always @(clk)
//    if(reset)
//      seq <= 2'b00;
//    else
//      seq <= {seq[0], in};
//  assign out = seq == tpe;
//endmodule
