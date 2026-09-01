`timescale 1ns/1ps

module comp_2_tb;
    reg A1;
    reg B1;
    reg A0;
    reg B0;
    wire G;
    wire E;
    wire L;

    comp_2 uut (
        .A1(A1),
        .B1(B1),
        .A0(A0),
        .B0(B0),
        .G(G),
        .E(E),
        .L(L)
    );

    initial begin
        
        $dumpfile("comp_2_tb.vcd");
        $dumpvars(0, comp_2_tb);

        $display(" A1 B1 A0 B0 | G E L");
        A1 = 0; B1 = 1; A0 = 0; B0 = 0;
        #10;
        $display(" %b %b %b %b | %b %b %b", A1, B1, A0, B0, G, E, L);

        A1 = 1; B1 = 0; A0 = 0; B0 = 1;
        #10;
        $display(" %b %b %b %b | %b %b %b", A1, B1, A0, B0, G, E, L);

        A1 = 0; B1 = 0; A0 = 1; B0 = 0;
        #10;
        $display(" %b %b %b %b | %b %b %b", A1, B1, A0, B0, G, E, L);

        A1 = 0; B1 = 0; A0 = 1; B0 = 1;
        #10;
        $display(" %b %b %b %b | %b %b %b", A1, B1, A0, B0, G, E, L);

        A1 = 1; B1 = 1; A0 = 0; B0 = 0;
        #10;
        $display(" %b %b %b %b | %b %b %b", A1, B1, A0, B0, G, E, L);

        A1 = 0; B1 = 1; A0 = 0; B0 = 1;
        #10;
        $display(" %b %b %b %b | %b %b %b", A1, B1, A0, B0, G, E, L);

        A1 = 1; B1 = 1; A0 = 1; B0 = 0;
        #10;
        $display(" %b %b %b %b | %b %b %b", A1, B1, A0, B0, G, E, L);

        A1 = 1; B1 = 1; A0 = 1; B0 = 1;
        #10;
        $display(" %b %b %b %b | %b %b %b", A1, B1, A0, B0, G, E, L);

        $finish;
    end
endmodule
