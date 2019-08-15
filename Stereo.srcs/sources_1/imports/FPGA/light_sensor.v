module light_sensor(clock, reset, chip_select, serial_clock, miso, light_level);

    input clock, reset;
    output chip_select, serial_clock;
    input miso;
    output [7:0] light_level;
    
    reg [21:0] counter;
    reg [15:0] shift;
    reg [15:0] value;
    
    assign light_level = value[11:4];
    
    always @ (posedge clock or posedge reset)
    begin
        if(reset)
            counter <= 22'b100;
        else
            counter <= counter + 22'b1;
    end
    
    assign serial_clock = ~counter[3];
    assign chip_select = counter[8];
    
    wire sample_bit = (chip_select == 1'b0 && counter[3:0] == 4'b1111);
    wire value_done = (counter[21:0] == 22'b0);
    
    always @ (posedge clock or posedge reset)
    begin
        if(reset)
        begin
            shift <= 16'h0000;
            value <= 16'h0000;
        end
        else if (sample_bit)
        begin
            shift <= (shift << 1) | miso;
        end
        else if (value_done)
        begin
            value <= shift;
        end
    end
    
endmodule //light_sensor