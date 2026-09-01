module ripple_adder
(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Carry
);
    wire C1, C2, C3;

    f_adder FA0 (
        .A(A[0]),
        .B(B[0]),
        .Cin(Cin),
        .Sum(Sum[0]),
        .Carry(C1)
    );

    f_adder FA1 (
        .A(A[1]),
        .B(B[1]),
        .Cin(C1),
        .Sum(Sum[1]),
        .Carry(C2)
    );

    f_adder FA2 (
        .A(A[2]),
        .B(B[2]),
        .Cin(C2),
        .Sum(Sum[2]),
        .Carry(C3)
    );

    f_adder FA3 (
        .A(A[3]),
        .B(B[3]),
        .Cin(C3),
        .Sum(Sum[3]),
        .Carry(Carry)
    );
endmodule
