module tb();

reg clk;
reg rst;

wire ov,init;
wire [7:0] cntr;

localparam COUNTER_SIZE=8;

  timer_counter #(
    .COUNTER_SIZE (COUNTER_SIZE)               
  )                                            
  timer_counter(                               
    .clk(clk),
    .en(1'b1),
    .rst(rst),
    .cnt_mode (1'b1),                             
    .value(counter_value),
    .min (1'b0),
    .max (1'b1),
    .init (init),
    .free (free_mode),
    .init_cnt(1'b0),
    .overflow_set(ov)                     
  );


initial
begin

$dumpfile("test.vcd");
$dumpvars;
$display("running simulation");
clk =0;
rst=1;
#100 rst =0;

#2000 $display("simulation ends");
$finish;
end

always
begin
#5 clk = ~clk;
end

endmodule