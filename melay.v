module mealy_fsm_1011(
input clk,rst,xin,
output reg zout);
parameter [2:0] s1 = 3'b000,
                s2 = 3'b001,
                s3 = 3'b010,
                s4 = 3'b011;
reg [2:0] ps,ns;
always@(posedge clk)
begin
if(rst)
ps <= s1;
else
ps <= ns;
end      
always@(xin or ps)
begin 
case(ps)
s1 : if(xin) begin
ns = s2;
zout = 0;
end             
else  
begin
ns = s1;
zout = 0;
end 
s2 : if(xin) begin
ns = s2;
zout = 0;
end             
else  begin
ns = s3;
zout = 0;
end             
s3 : if(xin) begin
ns = s4;
zout = 0;
end             
else  begin
ns = s1;
zout = 0;
end              
s4 : if(xin) begin
ns = s1;
zout = 1;
end             
else  
begin
ns = s3;
zout = 0;
end              
endcase
end
endmodule
