`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2025 10:45:06 PM
// Design Name: 
// Module Name: Master_SM
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


module Master_SM(
  input CLK,
    input RESET,
    input LEFT,
    input RIGHT,
    input UP,
    input DOWN,
    input [3:0] SCORE_COUNT,
    output [1:0] STATE  // Enable for each subsystem
    );
reg [1:0] Curr_state;
reg [1:0] Next_state;

// Master States
localparam [1:0] IDLE = 2'd0;
        localparam [1:0] PLAY = 2'd1;
        localparam [1:0] WIN  = 2'd2;

// Sequential block
        always@ (posedge CLK)
            begin: seq_pros
                if (RESET == 1'b1)
                    Curr_state <= IDLE;
                else    
                    Curr_state <= Next_state; 
            end
            
    // Combinatorial block
        always@*
            begin: logic_pros
                
                case(Curr_state)
                    
                    IDLE:    
                    Next_state = (LEFT == 1'b1 || RIGHT == 1'b1 ||
                                 UP   == 1'b1 || DOWN  == 1'b1)
                                 ? PLAY : IDLE;
                                        
                    PLAY:    
                    Next_state = (SCORE_COUNT == 4'b1010) ? WIN : PLAY;
                    
                    WIN:     
                    Next_state = WIN;
                    
                    default: 
                    Next_state = IDLE;
                
                endcase
                
            end
            
        assign STATE = Curr_state;
    
endmodule
