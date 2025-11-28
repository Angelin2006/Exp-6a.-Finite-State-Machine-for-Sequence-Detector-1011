module mealy_fsm_1011_tb;
reg clk_t,rst_t,xin_t;
wire zout_t;
mealy_fsm_1011 dut(.clk(clk_t),.rst(rst_t),.xin(xin_t),.zout(zout_t));
initial
begin
clk_t = 1'b1;
rst_t = 1'b1;
#100
rst_t = 1'b0;
xin_t = 1'b1;
#100
xin_t = 1'b0;
#100
xin_t = 1'b1;
#100
xin_t = 1'b1;
#100
xin_t = 1'b1;
#100
xin_t = 1'b0;
#100
xin_t = 1'b1; 
#100
xin_t = 1'b1;              
end
always #50  clk_t = ~clk_t;                 
endmodule
