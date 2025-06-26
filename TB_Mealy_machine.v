`timescale 1ns / 0.1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2025 15:50:29
// Design Name: 
// Module Name: TB_Mealy_machine
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


module TB_Mealy_machine();
reg in, CLK, RESET;
wire out;

Mealy_machine DUT (.x(in), .clk(CLK), .reset(RESET), .z(out));

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
