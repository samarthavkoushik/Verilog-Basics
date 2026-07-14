`timescale 1ns/1ps

module f_adder_tb;

reg A;
reg B;
reg Cin;
wire Sum;
wire Carry;

f_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin
    $dumpfile("f_adder.vcd");
    $dumpvars(0, f_adder_tb);
    
    $display("A B Cin| Sum Carry");

    A = 0; B = 0; Cin=0;
    #10;
    $display("%b %b %b| %b %b", A, B, Cin, Sum, Carry );

    A = 0; B = 0; Cin=1;
    #10;
    $display("%b %b %b| %b %b", A, B, Cin, Sum, Carry );

    A = 0; B = 1; Cin=0;
    #10;
    $display("%b %b %b| %b %b", A, B, Cin, Sum, Carry );

    A = 0; B = 1; Cin=1;
    #10;
    $display("%b %b %b| %b %b", A, B, Cin, Sum, Carry );

    A = 1; B = 0; Cin=0;
    #10;
    $display("%b %b %b| %b %b", A, B, Cin, Sum, Carry );

    A = 1; B = 0; Cin=1;
    #10;
    $display("%b %b %b| %b %b", A, B, Cin, Sum, Carry );

    A = 1; B = 1; Cin=0;
    #10;
    $display("%b %b %b| %b %b", A, B, Cin, Sum, Carry );

    A = 1; B = 1; Cin=1;
    #10;
    $display("%b %b %b| %b %b", A, B, Cin, Sum, Carry );

    $finish;
end

endmodule
