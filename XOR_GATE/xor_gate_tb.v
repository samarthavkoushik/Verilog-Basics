`timescale 1ns/1ps

module xor_gate_tb;

reg A;
reg B;
wire Y;

xor_gate uut 
(
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    $dumpfile("xor_gate.vcd");
    $dumpvars(0, xor_gate_tb);
    
    $display("A B | Y");

    A = 0; B = 0;
    #10;
    $display("%b %b | %b", A, B, Y);

    A = 0; B = 1;
    #10;
    $display("%b %b | %b", A, B, Y);

    A = 1; B = 0;
    #10;
    $display("%b %b | %b", A, B, Y);

    A = 1; B = 1;
    #10;
    $display("%b %b | %b", A, B, Y);

    $finish;
end

endmodule
