module mux64v(out, S00, S01, S02, S03, S04, S05, S06, S07,
                   S08, S09, S10, S11, S12, S13, S14, S15,
                   S16, S17, S18, S19, S20, S21, S22, S23,
                   S24, S25, S26, S27, S28, S29, S30, S31,
                   S32, S33, S34, S35, S36, S37, S38, S39,
                   S40, S41, S42, S43, S44, S45, S46, S47,
                   S48, S49, S50, S51, S52, S53, S54, S55,
                   S56, S57, S58, S59, S60, S61, S62, S63, sel);

    parameter
        width = 32;
    
    output [width-1:0] out;
    
    input  [width-1:0] S00, S01, S02, S03, S04, S05, S06, S07,
                         S08, S09, S10, S11, S12, S13, S14, S15,
                         S16, S17, S18, S19, S20, S21, S22, S23,
                         S24, S25, S26, S27, S28, S29, S30, S31,
                         S32, S33, S34, S35, S36, S37, S38, S39,
                         S40, S41, S42, S43, S44, S45, S46, S47,
                         S48, S49, S50, S51, S52, S53, S54, S55,
                         S56, S57, S58, S59, S60, S61, S62, S63;

    input  [5:0]         sel;
    
    wire   [width-1:0] wUPPER, wLOWER;

    mux32v #(width) m0(wLOWER, S00, S01, S02, S03, S04, S05, S06, S07,
                               S08, S09, S10, S11, S12, S13, S14, S15,
                               S16, S17, S18, S19, S20, S21, S22, S23,
                               S24, S25, S26, S27, S28, S29, S30, S31, sel[4:0]);
                               
    mux32v #(width) m1(wUPPER, S32, S33, S34, S35, S36, S37, S38, S39,
                               S40, S41, S42, S43, S44, S45, S46, S47,
                               S48, S49, S50, S51, S52, S53, S54, S55,
                               S56, S57, S58, S59, S60, S61, S62, S63, sel[4:0]);
                               
    mux2v  #(width) m2(out, wLOWER, wUPPER, sel[5]);

endmodule //mux64v