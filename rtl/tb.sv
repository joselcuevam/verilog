module tb();

wire [31:0] cnt;
reg clk;
reg rst;

mini_counter mini_counter(
.clk(clk),
.rst(rst),
.cnt(cnt)
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
