module scanner2(led_out, sounds, mode, master, reset);
    
    output [15:0] led_out;
    input [1:0] sounds;
    input mode;
    input [31:0] master;
    input reset;
    
    wire [31:0] led_alu_out0, led_alu_out1;
    wire [3:0] led_reg_out0, led_reg_out1;
    wire [2:0] led_mux_out0, led_mux_out1;
    wire led_in0, led_in1;
    
    clock_divider_org #(2) c0(led_in0, sounds[1]);
    register #(4, 4'd0) led_reg0(led_reg_out0, led_alu_out0[3:0], led_in0, (master[31:24] != `OFF) & (master[23:16] != `OFF), reset);
    alu32 led_add0(led_alu_out0, , , , {28'd0, led_reg_out0}, 32'd1, `ALU_ADD);
    mux2v #(3) muxer0(led_mux_out0, led_reg_out0[2:0], {!led_reg_out0[2], !led_reg_out0[1], !led_reg_out0[0]}, led_reg_out0[3]);
    decoder8 led_decoder0(led_out[15:8], led_mux_out0, mode & (master[31:24] != `OFF) & (master[23:16] != `OFF));
    
    clock_divider_org #(2) c1(led_in1, sounds[0]);
    register #(4, 4'd0) led_reg1(led_reg_out1, led_alu_out1[3:0], led_in1, (master[15:8] != `OFF) & (master[7:0] != `OFF), reset);
    alu32 led_add1(led_alu_out1, , , , {28'd0, led_reg_out1}, 32'd1, `ALU_ADD);
    mux2v #(3) muxer1(led_mux_out1, led_reg_out1[2:0], {!led_reg_out1[2], !led_reg_out1[1], !led_reg_out1[0]}, led_reg_out1[3]);
    decoder8 led_decoder1(led_out[7:0], led_mux_out1, mode & (master[15:8] != `OFF) & (master[7:0] != `OFF));
    
endmodule //scanner2

module scanner4(led_out, sounds, keys, mode, master, reset);
    
    output [15:0] led_out;
    input [3:0] sounds;
    input [13:0] keys;
    input mode;
    input [63:0] master;
    input reset;
    
    wire [31:0] led_alu_out0, led_alu_out1, led_alu_out2, led_alu_out3;
    wire [2:0] led_reg_out0, led_reg_out1, led_reg_out2, led_reg_out3;
    wire [1:0] led_mux_out0, led_mux_out1, led_mux_out2, led_mux_out3;
    wire led_in0, led_in1, led_in2, led_in3;
    
    clock_divider_org #(4) c0(led_in0, sounds[3]);
    register #(3, 3'd0) led_reg0(led_reg_out0, led_alu_out0[2:0], led_in0, !keys[0], reset);
    alu32 led_alu0(led_alu_out0, , , , {29'd0, led_reg_out0}, 32'd1, `ALU_ADD);
    mux2v #(2) led_mux0(led_mux_out0, led_reg_out0[1:0], {!led_reg_out0[1], !led_reg_out0[0]}, led_reg_out0[2]);
    decoder4 led_decoder0(led_out[15:12], led_mux_out0, mode & (keys[13:1] != 13'b0) & (master[31:24] != `OFF & master[23:16] != `OFF));
    
    clock_divider_org #(4) c1(led_in1, sounds[2]);
    register #(3, 3'd0) led_reg1(led_reg_out1, led_alu_out1[2:0], led_in1, !keys[0], reset);
    alu32 led_alu1(led_alu_out1, , , , {29'd0, led_reg_out1}, 32'd1, `ALU_ADD);
    mux2v #(2) led_mux1(led_mux_out1, led_reg_out1[1:0], {!led_reg_out1[1], !led_reg_out1[0]}, led_reg_out1[2]);
    decoder4 led_decoder1(led_out[11:8], led_mux_out1, mode & (keys[13:1] != 13'b0) & (master[63:56] != `OFF & master[55:48] != `OFF));
    
    clock_divider_org #(4) c2(led_in2, sounds[1]);
    register #(3, 3'd0) led_reg2(led_reg_out2, led_alu_out2[2:0], led_in2, !keys[0], reset);
    alu32 led_alu2(led_alu_out2, , , , {29'd0, led_reg_out2}, 32'd1, `ALU_ADD);
    mux2v #(2) led_mux2(led_mux_out2, led_reg_out2[1:0], {!led_reg_out2[1], !led_reg_out2[0]}, led_reg_out2[2]);
    decoder4 led_decoder2(led_out[7:4], led_mux_out2, mode & (keys[13:1] != 13'b0) & (master[15:8] != `OFF & master[7:0] != `OFF));
    
    clock_divider_org #(4) c3(led_in3, sounds[0]);
    register #(3, 3'd0) led_reg3(led_reg_out3, led_alu_out3[2:0], led_in3, !keys[0], reset);
    alu32 led_alu3(led_alu_out3, , , , {29'd0, led_reg_out3}, 32'd1, `ALU_ADD);
    mux2v #(2) led_mux3(led_mux_out3, led_reg_out3[1:0], {!led_reg_out3[1], !led_reg_out3[0]}, led_reg_out3[2]);
    decoder4 led_decoder3(led_out[3:0], led_mux_out3, mode & (keys[13:1] != 13'b0) & (master[47:40] != `OFF & master[39:32] != `OFF));
    
endmodule //scanner4