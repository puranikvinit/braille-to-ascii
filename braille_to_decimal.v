//KARKALA SRINIVASA VENKATARAMANA
//OM JAI DURGE MAA

module brailleToAscii(I,CLK,R,Y);
    input CLK;
    input R;
    input I;
    
    output [8:1] Y;

    reg [3:0] ps;
    reg [3:0] ns;
    reg [8:1] op;
    // string op;

    parameter [3:0] s0 = 0;
    parameter [3:0] s1 = 1;
    parameter [3:0] s2 = 2;
    parameter [3:0] s3 = 3;
    parameter [3:0] s4 = 4;
    parameter [3:0] s5 = 5;
    parameter [3:0] s6 = 6;
    parameter [3:0] s7 = 7;
    parameter [3:0] s8 = 8;
    parameter [3:0] s9 = 9;
    parameter [3:0] s10 = 10;
    parameter [3:0] s11 = 11;
    parameter [3:0] s12 = 12;

    always @(posedge CLK, R, I)
    begin
        if(~R) ps <= s0;
        else ps <= ns; //TODO: Check which one of blocking and non-blocking is more apt here
    end

    always @(ps, I)
    begin
        case(ps)
            s0: begin
                if(I) begin
                    ns = s0;
                    op = "";
                end
                else begin
                    ns = s1;
                    op = "";
                end
            end
            s1: begin
                if(I) begin
                    ns = s0;
                    op = "";
                end
                else begin
                    ns = s2;
                    op = "";
                end
            end
            s2: begin
                if(I) begin
                    ns = s3;
                    op = "";
                end
                else begin
                    ns = s4;
                    op = "";
                end
            end
            s3: begin
                if(I) begin
                    ns = s7;
                    op = "";
                end
                else begin
                    ns = s8;
                    op = null;
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
                end
            end
            s5: begin
                if(I) begin
                    ns = s6;
                    op = "";
                end
                else begin
                    ns = s0;
                    op = "";
                end
            end
            s6: begin
                if(I) begin
                    ns = s0;
                    op = "0";
                end
                else begin
                    ns = s0;
                    op = "9";
                end
            end
            s7: begin
                if(I) begin
                    ns = s9;
                    op = "";
                end
                else begin
                    ns = s10;
                    op = "";
                end
            end
            s8: begin
                if(I) begin
                    ns = s12;
                    op = "";
                end
                else begin
                    ns = s11;
                    op = "";
                end
            end
            s9: begin
                if(I) begin
                    ns = s0;
                    op = "7";
                end
                else begin
                    ns = s0;
                    op = "6";
                end
            end
            s10: begin
                if(I) begin
                    ns = s0;
                    op = "4";
                end
                else begin
                    ns = s0;
                    op = "3";
                end
            end
            s11: begin
                if(I) begin
                    ns = s0;
                    op = "5";
                end
                else begin
                    ns = s0;
                    op = "1";
                end
            end
            s12: begin
                if(I) begin
                    ns = s0;
                    op = "8";
                end
                else begin
                    ns = s0;
                    op = "2";
                end
            end
        endcase
    end

    assign Y = op;
endmodule