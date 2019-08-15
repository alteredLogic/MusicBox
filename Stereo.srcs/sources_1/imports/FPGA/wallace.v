module wallace(p, a, b);
    output [7:0] p;
    input  [3:0] a, b;
    wire h1s, h3s, h4s, h5s, h0c, h1c, h2c, h3c, h4c, h5c, h6c,
         f0s, f1s, f2s, f3s, f0c, f1c, f2c, f3c, f4c, f5c, f6c;

    assign p[0] = a[0] & b[0];

    halfadder h0(p[1], h0c, a[0] & b[1], a[1] & b[0]);
    halfadder h1(h1s,  h1c, a[2] & b[3], a[3] & b[2]);
    halfadder h2(p[2], h2c, f0s, h0c);
    halfadder h3(h3s,  h3c, f2s, f1c);
    halfadder h4(h4s,  h4c, h1s, f2c);
    halfadder h5(h5s,  h5c, a[3] & b[3], h1c);
    halfadder h6(p[3], h6c, f3s, h2c);
    halfadder h7(p[7],/**/, h5c, f6c);

    fulladder f0(f0s,  f0c, a[0] & b[2], a[1] & b[1], a[2] & b[0]);
    fulladder f1(f1s,  f1c, a[1] & b[2], a[2] & b[1], a[3] & b[0]);
    fulladder f2(f2s,  f2c, a[1] & b[3], a[2] & b[2], a[3] & b[1]);
    fulladder f3(f3s,  f3c, a[0] & b[3], f1s, f0c);
    fulladder f4(p[4], f4c, h3s, f3c, h6c);
    fulladder f5(p[5], f5c, h4s, h3c, f4c);
    fulladder f6(p[6], f6c, h5s, h4c, f5c);
endmodule //wallace
