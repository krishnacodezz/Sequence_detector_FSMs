`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2025 16:14:08
// Design Name: 
// Module Name: Moore_machine
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


module Moore_machine(input x, input clk, input reset, output reg z);
    parameter s0 = 0, s1 = 1, s2 = 2, s3 = 3, s4 = 4;
reg[1:0] ps, ns;  //ps : present state, ns : next state

    always@(posedge clk or posedge reset) begin
        if(reset) ps <= s0;
        else ps <= ns;
    end

    always@(*) begin
        case(ps)
            s0 : ns = x ? s0 : s1;
            s1 : ns = x ? s2 : s1;
            s2 : ns = x ? s3 : s1;
            s3 : ns = x ? s0 : s4;
            s4 : ns = x ? s2 : s1;
        endcase
    end
    
    always@(ps) begin
        case(ps)
            s0 : z = 0;
            s1 : z = 0;
            s2 : z = 0;
            s3 : z = 0;
            s4 : z = 0;
         endcase
     end
endmodule
