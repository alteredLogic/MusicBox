module piano(note1_out, note2_out, keycode, light_level, light_switch, clk);
    
    output [6:0] note1_out, note2_out;
    input [15:0] keycode;
    input [6:0] light_level;
    input light_switch, clk;
    wire [31:0] octave_alu1_out, octave_alu2_out;
    wire [6:0] octave_reg_out, octave_mux_out, choice_mux_out;
    wire [3:0] note1_in, note2_in, note1_reg_out, note2_reg_out, octave_sel;
    
    assign note1_in[3] = (keycode[7:0] == 8'h35) | (keycode[7:0] == 8'h3d) | (keycode[7:0] == 8'h3c) | (keycode[7:0] == 8'h3e) | (keycode[7:0] == 8'h43); 
    assign note1_in[2] = (keycode[7:0] == 8'h25) | (keycode[7:0] == 8'h2d) | (keycode[7:0] == 8'h2c) | (keycode[7:0] == 8'h36) | (keycode[7:0] == 8'h43);
    assign note1_in[1] = (keycode[7:0] == 8'h26) | (keycode[7:0] == 8'h24) | (keycode[7:0] == 8'h2c) | (keycode[7:0] == 8'h36) | (keycode[7:0] == 8'h3c) | (keycode[7:0] == 8'h3e);
    assign note1_in[0] = (keycode[7:0] == 8'h1d) | (keycode[7:0] == 8'h24) | (keycode[7:0] == 8'h2d) | (keycode[7:0] == 8'h36) | (keycode[7:0] == 8'h3d) | (keycode[7:0] == 8'h3e);
    
    assign note2_in[3] = (keycode[7:0] == 8'h3a) | (keycode[7:0] == 8'h42) | (keycode[7:0] == 8'h41) | (keycode[7:0] == 8'h4b) | (keycode[7:0] == 8'h49); 
    assign note2_in[2] = (keycode[7:0] == 8'h34) | (keycode[7:0] == 8'h32) | (keycode[7:0] == 8'h31) | (keycode[7:0] == 8'h3b) | (keycode[7:0] == 8'h49); 
    assign note2_in[1] = (keycode[7:0] == 8'h2b) | (keycode[7:0] == 8'h2a) | (keycode[7:0] == 8'h31) | (keycode[7:0] == 8'h3b) | (keycode[7:0] == 8'h41) | (keycode[7:0] == 8'h4b); 
    assign note2_in[0] = (keycode[7:0] == 8'h21) | (keycode[7:0] == 8'h2a) | (keycode[7:0] == 8'h32) | (keycode[7:0] == 8'h3b) | (keycode[7:0] == 8'h42) | (keycode[7:0] == 8'h4b);
    
    assign octave_sel[3] = (keycode[7:0] == 8'h0a) | (keycode[7:0] == 8'h01);
    assign octave_sel[2] = (keycode[7:0] == 8'h0c) | (keycode[7:0] == 8'h03) | (keycode[7:0] == 8'h0b) | (keycode[7:0] == 8'h83);
    assign octave_sel[1] = (keycode[7:0] == 8'h06) | (keycode[7:0] == 8'h04) | (keycode[7:0] == 8'h0b) | (keycode[7:0] == 8'h83);
    assign octave_sel[0] = (keycode[7:0] == 8'h05) | (keycode[7:0] == 8'h04) | (keycode[7:0] == 8'h03) | (keycode[7:0] == 8'h83) | (keycode[7:0] == 8'h01);
    
    assign note1_out = octave_alu1_out[6:0] & {7{octave_sel == 4'b0}} & {7{note1_reg_out != 4'b0}};
    assign note2_out = choice_mux_out & {7{octave_sel == 4'b0}} & {7{(note2_reg_out != 4'b0) | (light_switch == 1)}};
    
    register #(4, 4'd0) note1(note1_reg_out, note1_in, clk, 1, keycode[15:8] == 8'hf0);
    register #(4, 4'd0) note2(note2_reg_out, note2_in, clk, 1, keycode[15:8] == 8'hf0);
    register #(7, 7'd0) octave(octave_reg_out, octave_mux_out, clk, 1, 0);
    mux2v #(7) choice_mux(choice_mux_out, octave_alu2_out[6:0], light_level, light_switch);
    mux16v #(7) octave_mux(octave_mux_out, octave_reg_out, 7'd0, 7'd12, 7'd24, 7'd36, 7'd48, 7'd60, 7'd72, 7'd84, 7'd96,
    octave_reg_out, octave_reg_out, octave_reg_out, octave_reg_out, octave_reg_out, octave_reg_out, octave_sel);
    alu32 octave_adder1(octave_alu1_out, , , , {28'b0, note1_reg_out}, {25'b0, octave_reg_out}, `ALU_ADD);
    alu32 octave_adder2(octave_alu2_out, , , , {28'b0, note2_reg_out}, {25'b0, octave_reg_out}, `ALU_ADD);
    
endmodule //piano