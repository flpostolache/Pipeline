`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2021 02:02:02 PM
// Design Name: 
// Module Name: simulare
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


module simulare();
reg a, b, c, d, e, clk, clr, load;
wire f;

modul_top i1(clk, clr, load, a, b, c, d, e, f);

always #10 clk = ~clk;

initial begin
clk = 1; clr = 0; load = 1;
#20 a = 1; b = 1; c = 0; d = 1; e = 0;
#20 a = 1; b = 1; c = 0; d = 1; e = 1;
#20 a = 0; b = 1; c = 1; d = 1; e = 0;
#100 $finish;
end
endmodule
