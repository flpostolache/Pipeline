`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2021 11:38:40 AM
// Design Name: 
// Module Name: RegD
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


module RegD(clk, reset, load, rez, out);
input clk;
input reset;
input load;
input [4:0] rez;
output [4:0] out;
reg [4:0] out;
always @(posedge clk)
begin
    if(reset == 0 && load == 1)
       out = rez;
    else
    begin
    if(reset == 1)
        out = 0;
    end
end
endmodule
