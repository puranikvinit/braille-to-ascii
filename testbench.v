//KARKALA SRINIVASA VENKATARAMANA
//OM JAI DURGE MAA

`timescale 1ns/1ns
`include "braille_to_decimal.v"

module brailleToBinaryTb();
    reg CLK;
    reg R;
    reg I;

    wire [8:1] Y;

    brailleToAscii BTA (I,CLK,R,Y);

    initial
    begin
        $dumpfile("braille_to_ascii.vcd");
        $dumpvars();
    end

    always
        #5 CLK = ~CLK;

    initial
    begin
        CLK = 1;

        R = 0; I = 0; #10;

        R = 1;
        I = 0; #10;
        I = 0; #10;
        I = 0; #10;
        I = 1; #10;
        I = 1; #10;
        I = 1; #10;
        I = 0; #10;
        I = 0; #10;
        I = 1; #10;
        I = 1; #10;
        I = 0; #10;
        I = 1; #10;
    end

    initial
    begin
        $display("Test Completed!!");
        #300 $finish;
    end
endmodule