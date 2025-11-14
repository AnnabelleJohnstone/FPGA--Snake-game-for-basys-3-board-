`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2025 02:15:52 PM
// Design Name: 
// Module Name: VGA_Interface
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


module vga640x480(

 input CLK,
    input RESET,
    input [11:0] COLOUR_IN,
    output [9:0] ADDRH,       // pixel x
    output [9:0] ADDRV,       // pixel y
    output [11:0] COLOUR_OUT,
    output HS,
    output VS
);

    //------------------------------------------------------------
    // VGA timing parameters (640x480 @ 60Hz, 25MHz pixel clock)
    //------------------------------------------------------------
    parameter H_PULSE  = 96;
    parameter H_BACK   = 48;
    parameter H_DISPLAY= 640;
    parameter H_FRONT  = 16;
    parameter H_TOTAL  = H_PULSE + H_BACK + H_DISPLAY + H_FRONT; // 800

    parameter V_PULSE  = 2;
    parameter V_BACK   = 33;
    parameter V_DISPLAY= 480;
    parameter V_FRONT  = 10;
    parameter V_TOTAL  = V_PULSE + V_BACK + V_DISPLAY + V_FRONT; // 525

    //------------------------------------------------------------
    // Horizontal Counter
    //------------------------------------------------------------
    wire h_trig;
    wire [9:0] h_count;

    Generic_counter #(
        .COUNTER_WIDTH(10),
        .COUNTER_MAX(H_TOTAL-1)
    ) HorizontalCounter (
        .CLK(CLK),
        .RESET(RESET),
        .ENABLE(1'b1),
        .COUNT(h_count),
        .TRIG_OUT(h_trig)
    );

    //------------------------------------------------------------
    // Vertical Counter
    //------------------------------------------------------------
    wire [9:0] v_count;

    Generic_counter #(
        .COUNTER_WIDTH(10),
        .COUNTER_MAX(V_TOTAL-1)
    ) VerticalCounter (
        .CLK(CLK),
        .RESET(RESET),
        .ENABLE(h_trig),
        .COUNT(v_count),
        .TRIG_OUT()
    );

    //------------------------------------------------------------
    // Sync Signals (active low)
    //------------------------------------------------------------
    assign HS = (h_count < H_PULSE) ? 1'b0 : 1'b1;
    assign VS = (v_count < V_PULSE) ? 1'b0 : 1'b1;

    //------------------------------------------------------------
    // Active Video Region
    //------------------------------------------------------------
    wire display_active =
        (h_count >= (H_PULSE + H_BACK)) && (h_count < (H_PULSE + H_BACK + H_DISPLAY)) &&
        (v_count >= (V_PULSE + V_BACK)) && (v_count < (V_PULSE + V_BACK + V_DISPLAY));

    //------------------------------------------------------------
    // Output Logic
    //------------------------------------------------------------
    assign COLOUR_OUT = display_active ? COLOUR_IN : 12'b0;
    assign ADDRH = display_active ? (h_count - (H_PULSE + H_BACK)) : 10'b0;
    assign ADDRV = display_active ? (v_count - (V_PULSE + V_BACK)) : 10'b0;

endmodule

