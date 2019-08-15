module tones(freq, letter, number, select, clk);

    output       freq;
    output [7:0] letter, number;
    input [6:0]  select;
    input        clk;

    wire [31:0] note;

    clock_divider cd0(freq, note, clk);

    mux128v #(32) note_mux(note, 0, `_C0, `_Db0, `_D0, `_Eb0, `_E0, `_F0, `_Gb0, `_G0, `_Ab0, `_A0, `_Bb0, `_B0,
                                    `_C1, `_Db1, `_D1, `_Eb1, `_E1, `_F1, `_Gb1, `_G1, `_Ab1, `_A1, `_Bb1, `_B1,
                                    `_C2, `_Db2, `_D2, `_Eb2, `_E2, `_F2, `_Gb2, `_G2, `_Ab2, `_A2, `_Bb2, `_B2,
                                    `_C3, `_Db3, `_D3, `_Eb3, `_E3, `_F3, `_Gb3, `_G3, `_Ab3, `_A3, `_Bb3, `_B3,
                                    `_C4, `_Db4, `_D4, `_Eb4, `_E4, `_F4, `_Gb4, `_G4, `_Ab4, `_A4, `_Bb4, `_B4,
                                    `_C5, `_Db5, `_D5, `_Eb5, `_E5, `_F5, `_Gb5, `_G5, `_Ab5, `_A5, `_Bb5, `_B5,
                                    `_C6, `_Db6, `_D6, `_Eb6, `_E6, `_F6, `_Gb6, `_G6, `_Ab6, `_A6, `_Bb6, `_B6,
                                    `_C7, `_Db7, `_D7, `_Eb7, `_E7, `_F7, `_Gb7, `_G7, `_Ab7, `_A7, `_Bb7, `_B7,
                                    `_C8, `_Db8, `_D8, `_Eb8, `_E8, `_F8, `_Gb8, `_G8, `_Ab8, `_A8, `_Bb8, `_B8,
                                    32'd0, 32'd0, 32'd0, 32'd0, 32'd0, 32'd0, 32'd0, 32'd0, 32'd0, 32'd0, 32'd0,
                                    32'd0, 32'd0, 32'd0, 32'd0, 32'd0, 32'd0, 32'd0, 32'd0, select);

    mux128v #(8) letter_mux(letter, `OFF, `C, `Db, `D, `Eb, `E, `F, `Gb, `G, `Ab, `A, `Bb, `B,
                                          `C, `Db, `D, `Eb, `E, `F, `Gb, `G, `Ab, `A, `Bb, `B,
                                          `C, `Db, `D, `Eb, `E, `F, `Gb, `G, `Ab, `A, `Bb, `B,
                                          `C, `Db, `D, `Eb, `E, `F, `Gb, `G, `Ab, `A, `Bb, `B,
                                          `C, `Db, `D, `Eb, `E, `F, `Gb, `G, `Ab, `A, `Bb, `B,
                                          `C, `Db, `D, `Eb, `E, `F, `Gb, `G, `Ab, `A, `Bb, `B,
                                          `C, `Db, `D, `Eb, `E, `F, `Gb, `G, `Ab, `A, `Bb, `B,
                                          `C, `Db, `D, `Eb, `E, `F, `Gb, `G, `Ab, `A, `Bb, `B,
                                          `C, `Db, `D, `Eb, `E, `F, `Gb, `G, `Ab, `A, `Bb, `B,
                                          `OFF, `OFF, `OFF, `OFF, `OFF, `OFF, `OFF, `OFF, `OFF, `OFF,
                                          `OFF, `OFF, `OFF, `OFF, `OFF, `OFF, `OFF, `OFF, `OFF, select);

   mux128v #(8) number_mux(number, `OFF, `N0, `N0, `N0, `N0, `N0, `N0, `N0, `N0, `N0, `N0, `N0, `N0,
                                         `N1, `N1, `N1, `N1, `N1, `N1, `N1, `N1, `N1, `N1, `N1, `N1,
                                         `N2, `N2, `N2, `N2, `N2, `N2, `N2, `N2, `N2, `N2, `N2, `N2,
                                         `N3, `N3, `N3, `N3, `N3, `N3, `N3, `N3, `N3, `N3, `N3, `N3,
                                         `N4, `N4, `N4, `N4, `N4, `N4, `N4, `N4, `N4, `N4, `N4, `N4,
                                         `N5, `N5, `N5, `N5, `N5, `N5, `N5, `N5, `N5, `N5, `N5, `N5,
                                         `N6, `N6, `N6, `N6, `N6, `N6, `N6, `N6, `N6, `N6, `N6, `N6,
                                         `N7, `N7, `N7, `N7, `N7, `N7, `N7, `N7, `N7, `N7, `N7, `N7,
                                         `N8, `N8, `N8, `N8, `N8, `N8, `N8, `N8, `N8, `N8, `N8, `N8,
                                         `OFF, `OFF, `OFF, `OFF, `OFF, `OFF, `OFF, `OFF, `OFF, `OFF,
                                         `OFF, `OFF, `OFF, `OFF, `OFF, `OFF, `OFF, `OFF, `OFF, select);

endmodule //tones