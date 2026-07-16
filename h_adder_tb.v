`timescale 1ns/1ps

module h_adder_tb;

reg A;
reg B;
wire Sum;
wire Carry;

h_adder uut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin
    $dumpfile("h_adder.vcd");
    $dumpvars(0, h_adder_tb);
    
    $display("A B | Sum Carry");

    A = 0; B = 0;
    #10;
    $display("%b %b | %b %b", A, B, Sum, Carry );

    A = 0; B = 1;
    #10;
    $display("%b %b | %b %b", A, B, Sum, Carry );

    A = 1; B = 0;
    #10;
    $display("%b %b | %b %b", A, B, Sum, Carry );

    A = 1; B = 1;
    #10;
    $display("%b %b | %b %b", A, B, Sum, Carry );

    $finish;
end

endmodule