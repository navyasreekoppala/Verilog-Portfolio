module t_flipflop (
    input clk,
    input reset,
    input t,
    output reg q
);

always @(posedge clk)
begin
    if (reset)
        q <= 1'b0;
    else if (t)
        q <= ~q;   // Toggle
    else
        q <= q;    // Hold
end

endmodule