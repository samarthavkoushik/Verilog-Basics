module demux_4(
    input I,
    input S0,
    input S1,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);

    assign Y0 = ~S1 & ~S0 & I;
    assign Y1 = ~S1 & S0 & I;
    assign Y2 = S1 & ~S0 & I;
    assign Y3 = S1 & S0 & I;

endmodule