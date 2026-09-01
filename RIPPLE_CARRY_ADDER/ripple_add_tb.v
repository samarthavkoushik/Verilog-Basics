`timescale 1ns/1ps

module ripple_add_tb;

reg [3:0] A;
reg [3:0] B;
reg Cin;
wire [3:0] Sum;
wire Carry;

ripple_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin
    $dumpfile("ripple_adder.vcd");
    $dumpvars(0, ripple_add_tb);
    
    $display("A B Cin  | Sum Carry");

    A = 0000; B = 0000; Cin=0;
    #10;
    $display("%b %b %b| %b %b", A, B, Cin, Sum, Carry );

    A = 0001; B = 0001; Cin=0;
    #10;
    $display("%b %b %b| %b %b", A, B, Cin, Sum, Carry );

    A = 0011; B = 0101; Cin=0;
    #10;
    $display("%b %b %b| %b %b", A, B, Cin, Sum, Carry );

    A = 1111; B = 0001; Cin=0;
    #10;
    $display("%b %b %b| %b %b", A, B, Cin, Sum, Carry );

    A = 1010; B = 0101; Cin=0;
    #10;
    $display("%b %b %b| %b %b", A, B, Cin, Sum, Carry );

    A = 1111; B = 1111; Cin=1;
    #10;
    $display("%b %b %b| %b %b", A, B, Cin, Sum, Carry );

    A = 1111; B = 1111; Cin=1;
    #10;
    $display("%b %b %b| %b %b", A, B, Cin, Sum, Carry );

    A = 1000; B = 1000; Cin=0;
    #10;
    $display("%b %b %b| %b %b", A, B, Cin, Sum, Carry );

    $finish;
end

endmodule
