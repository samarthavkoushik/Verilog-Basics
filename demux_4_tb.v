`timescale 1ns/1ps
module demux_4_tb;
    reg I;
    reg S0;
    reg S1;
    wire Y0;
    wire Y1;
    wire Y2;
    wire Y3;


demux_4 uut( 
    .I(I),
    .S0(S0),
    .S1(S1),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin
    $dumpfile("demux_4_tb.vcd");
    $dumpvars(0,demux_4_tb);

    $display("S1 S0 I | Y0 Y1 Y2 Y3");

    I=1; S1=0; S0=0;
    #10;
    $display("%b  %b  %b  |  %b %b %b %b ", S1, S0, I, Y0, Y1, Y2, Y3 );

    I=1; S1=0; S0=1;
    #10;
    $display("%b  %b  %b  |  %b %b %b %b ", S1, S0, I, Y0, Y1, Y2, Y3 );

    I=1; S1=1; S0=0;
    #10;
    $display("%b  %b  %b  |  %b %b %b %b ", S1, S0, I, Y0, Y1, Y2, Y3 );

    I=1; S1=1; S0=1;
    #10;
    $display("%b  %b  %b  |  %b %b %b %b ", S1, S0, I, Y0, Y1, Y2, Y3 );

    $finish;

end

endmodule