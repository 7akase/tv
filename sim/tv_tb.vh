`define t_stop(t) initial begin #(t) $stop(); end

`define assert(condition) \
  generate if(1) begin \
    wire cond = condition; \
    always @(posedge clk) \
      if(cond) begin \
        $display("ASSERETION FAILED in %m at %d", $time); \
        $finish(1); \
      end \
  end endgenerate
