`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2021 11:48:43 AM
// Design Name: 
// Module Name: modul_top
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


module modul_top(clk, reset, load, a, b, c, d, e, f);
input clk;
input reset;
input load;
input a;
input b;
input c;
input d;
input e;
output f;
wire [4:0] reg1; //= {a,b,c,d,e};
wire [4:0] reg2;
wire [4:0] reg3;
wire [4:0] reg4;
wire inmultire1,inmultire2, suma, diferenta;

//regD(clk, reset, load a, b, c, d, e, o_1, o_2, o_3, O_4, o_5);

RegD modul1(clk, reset, load,{a,b,c,d,e},reg1);

modul_inmultire in1(reg1[4], reg1[3], inmultire1);
modul_inmultire in2(reg1[1], reg1[0], inmultire2);

RegD modul2(clk, reset, load, {inmultire1, reg1[2],inmultire2, 1'b0, 1'b0}, reg2);

modul_adunare in3(reg2[4],reg2[3],suma);

RegD modul3(clk, reset, load, {suma, reg2[2], 1'b0, 1'b0, 1'b0}, reg3);

modul_diferenta in4(reg3[4],reg3[3],diferenta);

RegD modul4(clk, reset, load, {diferenta, 1'b0, 1'b0, 1'b0, 1'b0}, reg4);

assign f = reg4[4];


endmodule
