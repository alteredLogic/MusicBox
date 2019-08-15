module decoder2(out, in, enable);
    
    output [1:0] out;    
    input in;
    input enable;
    
    and a0(out[0], enable, !in);
    and a1(out[1], enable, in);
    
endmodule //decoder2

module decoder4(out, in, enable);
    
    output [3:0] out;
    input [1:0] in;
    input enable;
    wire [1:0] w_enable;
    
    decoder2 d0(w_enable, in[1], enable);
    decoder2 d1(out[1:0], in[0], w_enable[0]);
    decoder2 d2(out[3:2], in[0], w_enable[1]);
    
endmodule //decoder4

module decoder8(out, in, enable);
    
    output [7:0] out;
    input [2:0] in;
    input enable;
    wire [1:0] w_enable;
    
    decoder2 d0(w_enable, in[2], enable);
    decoder4 d1(out[3:0], in[1:0], w_enable[0]);
    decoder4 d2(out[7:4], in[1:0], w_enable[1]);
    
endmodule //decoder8

module decoder16(out, in, enable);
    
    output [15:0] out;
    input [3:0] in;
    input enable;
    wire [1:0] w_enable;
    
    decoder2 d0(w_enable, in[3], enable);
    decoder8 d1(out[7:0], in[2:0], w_enable[0]);
    decoder8 d2(out[15:8], in[2:0], w_enable[1]);
    
endmodule //decoder16