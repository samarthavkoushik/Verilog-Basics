module comp_3 (
    input A2,
    input B2,
    input A1,
    input B1,
    input A0,
    input B0,
    output G,
    output E,
    output L
);

    assign G = (A2 & ~B2) |
           (~(A2 ^ B2) & A1 & ~B1) |
           (~(A2 ^ B2) & ~(A1 ^ B1) & A0 & ~B0);

    assign E = ~(A2 ^ B2) &
           ~(A1 ^ B1) &
           ~(A0 ^ B0);

    assign L = (~A2 & B2) |
           (~(A2 ^ B2) & ~A1 & B1) |
           (~(A2 ^ B2) & ~(A1 ^ B1) & ~A0 & B0);

endmodule