//KARKALA SRINIVASA VENKATARAMANA
//OM JAI DURGE MAA

module brailleToAscii(I,CLK,R,Y,INV);
    input CLK;
    input R;
    input I;
    
    output [7:0] Y;
    output reg INV;

    reg [4:0] ps;
    reg [4:0] ns;
    reg [7:0] op;

    parameter [4:0] s0 = 0;
    parameter [4:0] s1 = 1;
    parameter [4:0] s2 = 2;
    parameter [4:0] s3 = 3;
    parameter [4:0] s4 = 4;
    parameter [4:0] s5 = 5;
    parameter [4:0] s6 = 6;
    parameter [4:0] s7 = 7;
    parameter [4:0] s8 = 8;
    parameter [4:0] s9 = 9;
    parameter [4:0] s10 = 10;
    parameter [4:0] s11 = 11;
    parameter [4:0] s12 = 12;
    parameter [4:0] s13 = 13;
    parameter [4:0] s14 = 14;
    parameter [4:0] s15 = 15;
    parameter [4:0] s16 = 16;
    parameter [4:0] s17 = 17;
    parameter [4:0] s18 = 18;
    parameter [4:0] s19 = 19;
    parameter [4:0] s20 = 20;
    parameter [4:0] s21 = 21;
    parameter [4:0] s22 = 22;

    always @(posedge CLK, R, I)
    begin
        INV = 0;

        if(R == 0) ps = s0;

        else begin
            case(ps)
                s0: begin
                    if(I) begin
                        ns = s2;
                        op = "";
                    end
                    else begin
                        ns = s1;
                        op = "";
                    end
                end
                s1: begin
                    if(I) begin
                        ns = s3;
                        op = "";
                    end
                    else begin
                        ns = s0;
                        op = "";
                        INV = 1;
                    end
                end
                s2: begin
                    if(I) begin
                        ns = s9;
                        op = "";
                    end
                    else begin
                        ns = s8;
                        op = "";
                    end
                end
                s3: begin
                    if(I) begin
                        ns = s0;
                        op = "";
                        INV = 1;
                    end
                    else begin
                        ns = s4;
                        op = "";
                    end
                end
                s4: begin
                    if(I) begin
                        ns = s5;
                        op = "";
                    end
                    else begin
                        ns = s0;
                        op = "";
                        INV = 1;
                    end
                end
                s5: begin
                    if(I) begin
                        ns = s7;
                        op = "";
                    end
                    else begin
                        ns = s6;
                        op = "";
                    end
                end
                s6: begin
                    if(I) begin
                        ns = s0;
                        op = "";
                        INV = 1;
                    end
                    else begin
                        ns = s0;
                        op = "9";
                    end
                end
                s7: begin
                    if(I) begin
                        ns = s0;
                        op = "";
                        INV = 1;
                    end
                    else begin
                        ns = s0;
                        op = "0";
                    end
                end
                s8: begin
                    if(I) begin
                        ns = s0;
                        op = "";
                        INV = 1;
                    end
                    else begin
                        ns = s10;
                        op = "";
                    end
                end
                s9: begin
                    if(I) begin
                        ns = s0;
                        op = "";
                        INV = 1;
                    end
                    else begin
                        ns = s11;
                        op = "";
                    end
                end
                s10: begin
                    if(I) begin
                        ns = s13;
                        op = "";
                    end
                    else begin
                        ns = s12;
                        op = "";
                    end
                end
                s11: begin
                    if(I) begin
                        ns = s15;
                        op = "";
                    end
                    else begin
                        ns = s14;
                        op = "";
                    end
                end
                s12: begin
                    if(I) begin
                        ns = s0;
                        op = "";
                        INV = 1;
                    end
                    else begin
                        ns = s16;
                        op = "";
                    end
                end
                s13: begin
                    if(I) begin
                        ns = s18;
                        op = "";
                    end
                    else begin
                        ns = s17;
                        op = "";
                    end
                end
                s14: begin
                    if(I) begin
                        ns = s22;
                        op = "";
                    end
                    else begin
                        ns = s21;
                        op = "";
                    end
                end
                s15: begin
                    if(I) begin
                        ns = s20;
                        op = "";
                    end
                    else begin
                        ns = s19;
                        op = "";
                    end
                end
                s16: begin
                    if(I) begin
                        ns = s0;
                        op = "5";
                    end
                    else begin
                        ns = s0;
                        op = "1";
                    end
                end
                s17: begin
                    if(I) begin
                        ns = s0;
                        op = "";
                        INV = 1;
                    end
                    else begin
                        ns = s0;
                        op = "3";
                    end
                end
                s18: begin
                    if(I) begin
                        ns = s0;
                        op = "";
                        INV = 1;
                    end
                    else begin
                        ns = s0;
                        op = "4";
                    end
                end
                s19: begin
                    if(I) begin
                        ns = s0;
                        op = "";
                        INV = 1;
                    end
                    else begin
                        ns = s0;
                        op = "6";
                    end
                end
                s20: begin
                    if(I) begin
                        ns = s0;
                        op = "";
                        INV = 1;
                    end
                    else begin
                        ns = s0;
                        op = "7";
                    end
                end
                s21: begin
                    if(I) begin
                        ns = s0;
                        op = "";
                        INV = 1;
                    end
                    else begin
                        ns = s0;
                        op = "2";
                    end
                end
                s22: begin
                    if(I) begin
                        ns = s0;
                        op = "";
                        INV = 1;
                    end
                    else begin
                        ns = s0;
                        op = "8";
                    end
                end
            endcase

            ps = ns;
        end
    end

    assign Y = op;
endmodule