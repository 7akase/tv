`include "tv_time.vh"
`include "tv_tb.vh"

`define DEBUG
  
module dut_tb();
  generate_pulses #(20) pulses_clk (clk);    
  generate_pulse #(10,30) pulse_reset(reset);
  
  dut dut_u(1'b0, out, clk, reset);
  
  // simulation configuration  
  `t_stop(200)

  `ifdef DEBUG
    `assert(out === 1'b1)
  `endif
endmodule



