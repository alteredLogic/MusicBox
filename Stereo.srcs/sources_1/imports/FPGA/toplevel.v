module toplevel(led, seg, dp, an, L_IN, L_GAIN, L_TOGGLE, R_IN, R_GAIN, R_TOGGLE, clk, sw, btnC, btnU, btnL, btnR, btnD, CS, SCLK, MISO, PS2Data, PS2Clk);
    
    output [15:0] led;
    output [6:0] seg;
    output dp, CS, SCLK;
    output [3:0] an;
    output L_IN, L_GAIN, L_TOGGLE, R_IN, R_GAIN, R_TOGGLE;
    input clk, MISO, PS2Data, PS2Clk;
    input [15:0] sw;
    input btnC, btnU, btnL, btnR, btnD;
    
    wire [63:0] master_note_display, l_note_display, z_note_display;
    wire [31:0] led_alu0, led_alu1, mode_alu, disp_choice_out, b_note_display, k_note_display,
                master_title_display, b_title_display, k_title_display, l_title_display, z_title_display;
    wire [15:0] led0, led1, led2, led3;
    wire [7:0] light_level, display_out;
    wire [3:0] l_sounds, z_sounds;
    wire [2:0] led_mux0, led_mux1, mode_mux;
    wire [1:0] w_mode, freq_out, freq0, freq1, freq2, freq3;
    wire clk0, clk1, lclk, song_speed, scroll_speed;
    
    //Clocks
    clock_divider_org #(100000) display0(clk0, clk);
    clock_divider_org #(200000) display1(clk1, clk);
    clock_divider song(song_speed, {5'b0, sw[13:1], 14'b1}, clk);
    clock_divider_org #(10000000) scroll(scroll_speed, clk);
    clk_wiz light_clock(lclk, clk);
    light_sensor ls0(lclk, 0, CS, SCLK, MISO, light_level);
    
    //Mode Selection
    register #(2, 2'd0) mode(w_mode, mode_alu[1:0], btnL | btnR, 1, 0);
    alu32 add(mode_alu, , , , {30'b0, w_mode}, 32'd1, mode_mux);
    mux4v #(3) m0(mode_mux, 3'd0, `ALU_ADD, `ALU_SUB, 3'd0, {btnL, btnR});
    
    //Audio Mode Modules
    switch_board b0(freq0, b_title_display, b_note_display, sw, scroll_speed, btnD | (w_mode != 0), clk);
    keyboard k0(freq1, k_title_display, k_note_display, scroll_speed, light_level[7:1], sw[0], btnD | (w_mode != 1), PS2Data, PS2Clk, clk);
    lost_woods l0(freq2, l_title_display, l_note_display, l_sounds, song_speed, scroll_speed, (sw[13:1] == 13'b0) | sw[0], btnD | (w_mode != 2), clk);
    zelda_theme z0(freq3, z_title_display, z_note_display, z_sounds, song_speed, scroll_speed, (sw[13:1] == 13'b0) | sw[0], btnD | (w_mode != 3), clk);
    mux4v #(2) freq_mux(freq_out, freq0, freq1, freq2, freq3, w_mode);
    
    //Display Muxes
    mux4v #(32) note_mux(master_note_display[31:0], b_note_display, k_note_display, l_note_display[31:0], z_note_display[31:0], w_mode);
    mux4v #(32) chord_mux(master_note_display[63:32], {4{`OFF}}, {4{`OFF}}, l_note_display[63:32], z_note_display[63:32], w_mode);
    mux4v #(32) title_mux(master_title_display, b_title_display, k_title_display, l_title_display, z_title_display, w_mode);
    mux2v #(32) disp_choice_mux(disp_choice_out, master_note_display[31:0], master_title_display, (((w_mode == 0) | (w_mode == 1)) & (master_note_display[31:0] == {4{`OFF}})) | (((w_mode == 2) | (w_mode == 3)) & (sw[13:1] == 13'b0)) | btnU);
    mux4v #(8) display_mux(display_out, disp_choice_out[7:0], disp_choice_out[15:8], disp_choice_out[23:16], disp_choice_out[31:24], {clk0, clk1});
    
    //Left Audio Control
    assign L_TOGGLE = !btnC & ((master_note_display[31:24] != `OFF) & (master_note_display[23:16] != `OFF)) & (((w_mode == 0) | (w_mode == 1)) | (((w_mode == 2) | (w_mode == 3)) & !sw[15] & (sw[13:1] != 13'b0) & !sw[0] & !btnD));
    assign L_GAIN = 0;
    assign L_IN = freq_out[1];
    
    //Right Audio Control
    assign R_TOGGLE = !btnC & ((master_note_display[15:8] != `OFF) & (master_note_display[7:0] != `OFF)) & (((w_mode == 0) | (w_mode == 1)) | (((w_mode == 2) | (w_mode == 3)) & !sw[14] & (sw[13:1] != 13'b0) & !sw[0] & !btnD));
    assign R_GAIN = 0;
    assign R_IN = freq_out[0];
    
    //Display Clocking
    assign an[3] = !clk0 | !clk1;
    assign an[2] = !clk0 | clk1;
    assign an[1] = clk0 | !clk1;
    assign an[0] = clk0 | clk1;
    
    //LED Scanners
    scanner2 scan0(led0, freq0,  w_mode == 0, master_note_display[31:0], (w_mode != 0) | btnD);
    scanner2 scan1(led1, freq1,  w_mode == 1, master_note_display[31:0], (w_mode != 1) | btnD);
    scanner4 scan2(led2, l_sounds, sw[13:0], w_mode == 2, master_note_display, (w_mode != 2) | btnD);
    scanner4 scan3(led3, z_sounds, sw[13:0], w_mode == 3, master_note_display, (w_mode != 3) | btnD);
    mux4v #(16) led_mux(led, led0, led1, led2, led3, w_mode);
    
    //Display Data
    assign seg = display_out[6:0];
    assign dp = display_out[7];
    
endmodule //toplevel