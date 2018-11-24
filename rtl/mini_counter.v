module mini_counter(
input clk,
input rst,
output reg [31:0] cnt
);

always @(posedge clk or posedge rst)
begin
if (rst)
  cnt = 0;
else 
  cnt = cnt + 1;
end


endmodule
