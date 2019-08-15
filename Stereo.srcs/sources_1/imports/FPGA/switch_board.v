module switch_board(freq, title_display, note_display, note_input, disp_speed, reset, clock);
    
    output [1:0] freq;
    output [31:0] title_display, note_display;
    input [15:0] note_input;
    input disp_speed, reset, clock;
    
    wire [31:0] walu0, walu1;
    wire [7:0] wallace0, wallace1, wd00, wd01, wd02, wd03, wd04, wd05, wd06, wd07, wd08, wd09, wd10, wd11, wd12, wd13, wd14, wd15;
    
    wallace w0(wallace0, 4'd12, note_input[11:8]);
    wallace w1(wallace1, 4'd12, note_input[3:0]);
    alu32 a0(walu0, , , , {28'd0, note_input[15:12]}, {24'b0, wallace0}, `ALU_ADD);
    alu32 a1(walu1, , , , {28'd0, note_input[7:4]}, {24'b0, wallace1}, `ALU_ADD);
    
    tones t0(freq[1], note_display[31:24], note_display[23:16], {7{(note_input[15:12] != 4'b0000) & (note_input[15:12] <= 4'b1100) & (note_input[11:8] <= 4'b1000)}} & walu0[6:0], clock);
    tones t1(freq[0], note_display[15:8], note_display[7:0], {7{(note_input[7:4] != 4'b0000) & (note_input[7:4] <= 4'b1100) & (note_input[3:0] <= 4'b1000)}} & walu1[6:0], clock);
    
    //Display
    register #(8, `OFF) d00(wd00, wd15, disp_speed, 1, reset);
    register #(8, `OFF) d01(wd01, wd00, disp_speed, 1, reset);
    register #(8, `OFF) d02(wd02, wd01, disp_speed, 1, reset);
    register #(8, `OFF) d03(wd03, wd02, disp_speed, 1, reset);
    register #(8, `D) d04(wd04, wd03, disp_speed, 1, reset);
    register #(8, `R) d05(wd05, wd04, disp_speed, 1, reset);
    register #(8, `A) d06(wd06, wd05, disp_speed, 1, reset);
    register #(8, `O) d07(wd07, wd06, disp_speed, 1, reset);
    register #(8, `B) d08(wd08, wd07, disp_speed, 1, reset);
    register #(8, `OFF) d09(wd09, wd08, disp_speed, 1, reset);
    register #(8, `H) d10(wd10, wd09, disp_speed, 1, reset);
    register #(8, `C) d11(wd11, wd10, disp_speed, 1, reset);
    register #(8, `T) d12(wd12, wd11, disp_speed, 1, reset);
    register #(8, `I) d13(wd13, wd12, disp_speed, 1, reset);
    register #(8, `W) d14(wd14, wd13, disp_speed, 1, reset);
    register #(8, `S) d15(wd15, wd14, disp_speed, 1, reset);
    
    assign title_display = {wd00, wd15, wd14, wd13};
    
endmodule //switch_board