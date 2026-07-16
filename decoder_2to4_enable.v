module decoder_2to4_enable(
    input A,
    input B,
    input E,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);

    assign Y0=(~A & ~B & E)  ;
    assign Y1=(~A &  B & E)  ;
    assign Y2=( A & ~B & E)  ;
    assign Y3=( A &  B & E)  ;

endmodule