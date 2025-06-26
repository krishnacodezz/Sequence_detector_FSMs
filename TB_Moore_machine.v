`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2025 16:22:55
// Design Name: 
// Module Name: TB_Moore_machine
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TB_Moore_machine();
reg in, CLK, RESET;
wire out;

Moore_machine DUT (.x(in), .clk(CLK), .reset(RESET), .z(out));

//generation of the CLK
initial begin
CLK = 0;
forever #10 CLK = ~CLK;
end

//TEST SEQUENCE : 01101100110
initial begin
RESET = 1;
in = 0;
#25;
RESET = 0;
#15;
    in = 0; #20;
    in = 1; #20;
    in = 1; #20;
    in = 0; #20;
    in = 1; #20;
    in = 1; #20;
    in = 0; #20;
    in = 0; #20;
    in = 1; #20;
    in = 1; #20;
    in = 0; #20;
    #40;
    $finish;
end
endmodule
