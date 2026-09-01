`timescale 1ns/1ps

module comp_1_tb;
    reg A;
    reg B;
    wire G;
    wire E;
    wire L;

    comp_1 uut (
        .A(A),
        .B(B),
        .G(G),
        .E(E),
        .L(L)
    );

    initial begin
        
        $dumpfile("comp_1_tb.vcd");
        $dumpvars(0, comp_1_tb);

        $display(" A B | G E L");
        A = 0; B = 0; 
        #10;
        $display(" %b %b | %b %b %b", A, B, G, E, L);
        
        A = 0; B = 1; 
        #10;
        $display(" %b %b | %b %b %b", A, B, G, E, L);
        
        A = 1; B = 0; 
        #10;
        $display(" %b %b | %b %b %b", A, B, G, E, L);
        
        A = 1; B = 1; 
        #10;
        $display(" %b %b | %b %b %b", A, B, G, E, L);

        $finish;
    end
endmodule