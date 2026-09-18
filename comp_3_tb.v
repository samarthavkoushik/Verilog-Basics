`timescale 1ns/1ps

module comp_3_tb;
    reg A2;
    reg B2;
    reg A1;
    reg B1;
    reg A0;
    reg B0;
    wire G;
    wire E;
    wire L;

    comp_3 uut (
        .A2(A2),
        .B2(B2),
        .A1(A1),
        .B1(B1),
        .A0(A0),
        .B0(B0),
        .G(G),
        .E(E),
        .L(L)
    );

    initial begin
        
        $dumpfile("comp_3_tb.vcd");
        $dumpvars(0, comp_3_tb);

        $display(" A2 B2 A1 B1 A0 B0 | G E L");
        A2 = 0; B2 = 1; A1 = 0; B1 = 1; A0 = 0; B0 = 0;
        #10;
        $display(" %b %b %b %b %b %b | %b %b %b", A2, B2, A1, B1, A0, B0, G, E, L);

        A2 = 1; B2 = 0; A1 = 0; B1 = 0; A0 = 0; B0 = 1;
        #10;
        $display(" %b %b %b %b %b %b | %b %b %b", A2, B2, A1, B1, A0, B0, G, E, L);

        A2 = 0; B2 = 0; A1 = 1; B1 = 0; A0 = 0; B0 = 0;
        #10;
        $display(" %b %b %b %b %b %b | %b %b %b", A2, B2, A1, B1, A0, B0, G, E, L);

        A2 = 0; B2 = 0; A1 = 1; B1 = 1; A0 = 0; B0 = 1;
        #10;
        $display(" %b %b %b %b %b %b | %b %b %b", A2, B2, A1, B1, A0, B0, G, E, L);

        A2 = 1; B2 = 0; A1 = 1; B1 = 1; A0 = 1; B0 = 0;
        #10;
        $display(" %b %b %b %b %b %b | %b %b %b", A2, B2, A1, B1, A0, B0, G, E, L);

        A2 = 0; B2 = 1; A1 = 0; B1 = 1; A0 = 0; B0 = 1;
        #10;
        $display(" %b %b %b %b %b %b | %b %b %b", A2, B2, A1, B1, A0, B0, G, E, L);

        A2 = 1; B2 = 1; A1 = 1; B1 = 1; A0 = 1; B0 = 1;
        #10;
        $display(" %b %b %b %b %b %b | %b %b %b", A2, B2, A1, B1, A0, B0, G, E, L);

        $finish;
    end
endmodule