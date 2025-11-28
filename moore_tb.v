`timescale 1ns / 1ps
module moore_tb;
    reg clk, reset, x;
    wire z;
    moore uut (
        .clk(clk),
        .reset(reset),
        .x(x),
        .z(z)
    );
    initial begin
        clk = 1;
        forever #5 clk = ~clk;   
    end
    initial begin
        reset = 1; x = 0;
        #10 reset = 0;        
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;
        #10 x = 1;
        #20 $finish;             
    end
    initial begin
        $monitor("Time=%0t | clk=%b | reset=%b | x=%b | z=%b | state=%b", 
                  $time, clk, reset, x, z, uut.state);
    end
endmodule
