module keyboard(freq, title_display, note_display, disp_speed, light_level, light_switch, reset, PS2Data, PS2Clk, clk);
    
    output [1:0] freq;
    output [31:0] title_display;
    output [31:0] note_display;
    input [6:0] light_level;
    input light_switch, disp_speed, reset, PS2Data, PS2Clk, clk;
    
    wire [7:0] wd00, wd01, wd02, wd03, wd04, wd05, wd06, wd07, wd08, wd09, wd10, wd11;   
    wire [6:0] note1, note2;
    
    reg start=0;
    reg CLK50MHZ=0;
    wire [15:0] keycode;
    reg [15:0] keycodev=0;
    reg [2:0] bcount=0;
    wire flag;
    reg cn=0;
    
    always @(posedge(clk))begin
        CLK50MHZ<=~CLK50MHZ;
    end
    
    PS2Receiver uut (
        .clk(CLK50MHZ),
        .kclk(PS2Clk),
        .kdata(PS2Data),
        .keycode(keycode),
        .oflag(flag)
    );
    
    always@(keycode)
        if (keycode[7:0] == 8'hf0) begin
            cn <= 1'b0;
            bcount <= 3'd0;
        end else if (keycode[15:8] == 8'hf0) begin
            cn <= keycode != keycodev;
            bcount <= 3'd5;
        end else begin
            cn <= keycode[7:0] != keycodev[7:0] || keycodev[15:8] == 8'hf0;
            bcount <= 3'd2;
        end
    
    always@(posedge clk)
        if (flag == 1'b1 && cn == 1'b1) begin
            start <= 1'b1;
            keycodev <= keycode;
        end else
            start <= 1'b0;
    
    piano p0(note1, note2, keycode, light_level, light_switch, clk);
    tones t0 (freq[1], note_display[31:24], note_display[23:16], note1, clk);
    tones t1 (freq[0], note_display[15:8], note_display[7:0], note2, clk);
    
    register #(8, `OFF) d00(wd00, wd11, disp_speed, 1, reset);
    register #(8, `OFF) d01(wd01, wd00, disp_speed, 1, reset);
    register #(8, `OFF) d02(wd02, wd01, disp_speed, 1, reset);
    register #(8, `OFF) d03(wd03, wd02, disp_speed, 1, reset);
    register #(8, `D) d04(wd04, wd03, disp_speed, 1, reset);
    register #(8, `R) d05(wd05, wd04, disp_speed, 1, reset);
    register #(8, `A) d06(wd06, wd05, disp_speed, 1, reset);
    register #(8, `O) d07(wd07, wd06, disp_speed, 1, reset);
    register #(8, `B) d08(wd08, wd07, disp_speed, 1, reset);
    register #(8, `Y) d09(wd09, wd08, disp_speed, 1, reset);
    register #(8, `E) d10(wd10, wd09, disp_speed, 1, reset);
    register #(8, `K) d11(wd11, wd10, disp_speed, 1, reset);
    
    assign title_display = {wd00, wd11, wd10, wd09};
    
endmodule //keyboard