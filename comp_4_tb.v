`timescale 1ns / 1ps

module comp_4_tb;
   reg [3:0] A;
   reg [3:0] B;
   wire G;
   wire E;
   wire L;

   comp_4 uut (
      .A(A),
      .B(B),
      .G(G),
      .E(E),
      .L(L)
   );

    initial begin

        $dumpfile("comp_4_tb.vcd");
        $dumpvars(0, comp_4_tb);

        // Test case 1: A > B
        A = 4'b1010; // 10
        B = 4'b0110; // 6
        #10;
        $display("Test case 1: A = %b, B = %b, G = %b, E = %b, L = %b", A, B, G, E, L);
    
        // Test case 2: A < B
        A = 4'b0011; // 3
        B = 4'b0101; // 5
        #10;
        $display("Test case 2: A = %b, B = %b, G = %b, E = %b, L = %b", A, B, G, E, L);
    
        // Test case 3: A == B
        A = 4'b1100; // 12
        B = 4'b1100; // 12
        #10;
        $display("Test case 3: A = %b, B = %b, G = %b, E = %b, L = %b", A, B, G, E, L);
    
        // Test case 4: Random values
        A = 4'b0111; // 7
        B = 4'b1000; // 8
        #10;
        $display("Test case 4: A = %b, B = %b, G = %b, E = %b, L = %b", A, B, G, E, L);
    
        $finish;
    end
endmodule
