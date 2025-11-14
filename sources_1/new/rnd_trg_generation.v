`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 01:47:11 PM
// Design Name: 
// Module Name: rnd_trg_generation
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


module rnd_trg_generation(
 input CLK,
    input RESET,
    input TARGET_ATE,
    output [14:0] RND_ADDR
    );
    wire [6:0] lfsr_7bit;
    wire [7:0] lfsr_8bit;
              
    lfsr #(.NUM_BITS(7)) rng_7bit(
        .CLK(CLK),
        .RESET(RESET),
        .OUT(lfsr_7bit)
        );
    
    lfsr #(.NUM_BITS(8)) rng_8bit(
      .CLK(CLK),
      .RESET(RESET),
      .OUT(lfsr_8bit)
      );       
    
    assign RND_ADDR = (RESET == 1'b1 ) ? 15'd0 : ((TARGET_ATE == 1'b1) ? {lfsr_8bit, lfsr_7bit} : 0);

endmodule  
