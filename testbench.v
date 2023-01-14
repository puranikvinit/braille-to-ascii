//KARKALA SRINIVASA VENKATARAMANA
//OM JAI DURGE MAA

`timescale 1ns/1ns
`include "braille_to_ascii.v"

module brailleToAsciiTb();
    reg CLK;
    reg R;
    reg I;

    wire [7:0] Y;
    wire INV;

    brailleToAscii BTA (I,CLK,R,Y,INV);

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

        R = 0; I = 1; #10;

        //Input Stream for 9 (57)
        R = 1; I = 0; #10;
        R = 1; I = 1; #10;
        R = 1; I = 0; #10;
        R = 1; I = 1; #10;
        R = 1; I = 0; #10;
        R = 1; I = 0; #10;

        //Input Stream for INV = 1
        R = 1; I = 1; #10;
        R = 1; I = 0; #10;
        R = 1; I = 1; #10;
        R = 1; I = 1; #10;
        R = 1; I = 1; #10;
        R = 1; I = 0; #10;
    end

    initial
    begin
        $display("Test Completed!!");
        #150 $finish;
    end
endmodule