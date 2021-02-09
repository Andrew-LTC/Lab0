`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2021 03:44:10 PM
// Design Name: 
// Module Name: mux_4x1_3bit
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


module mux_4x1_3bit(
    input [2:0] X,
    input [2:0] Y,
    input [2:0] Z,
    input [2:0] W,
    input S1,S0,
    output [2:0] M,
    output S1flag, S0flag
    );
    assign S1flag = S1;
    assign S0flag = S0;
    
    wire [2:0]g0; 
    wire [2:0]g1;
    
    mux_2x1_3bit H0 (X[2:0],Y[2:0],S1,g0[2:0],S1flag);
    mux_2x1_3bit H1 (Z[2:0],W[2:0],S1,g1[2:0],S1flag);
    mux_2x1_3bit H2 (g0[2:0],g1[2:0],S0,M[2:0],S0flag);
    
endmodule
