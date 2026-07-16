`timescale 1ns/1ps
module mux_4_tb;
    reg I0;
    reg I1;
    reg I2;
    reg I3;
    reg S0;
    reg S1;
    wire Y;


mux_4 uut( 
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .S0(S0),
    .S1(S1),
    .Y(Y)
);

initial begin
    $dumpfile("mux_4_tb.vcd");
    $dumpvars(0,mux_4_tb);

    $display("S1 S0 I0 I1 I2 I3 | Y ");

    I0=1; I1=0; I2=0; I3=0; S1=0; S0=0;
    #10;
    $display("%b  %b  %b  %b  %b  %b  |  %b ", S1, S0, I0, I1, I2, I3, Y );

    I0=0; I1=1; I2=0; I3=0; S1=0; S0=1;
    #10;
    $display("%b  %b  %b  %b  %b  %b  |  %b ", S1, S0, I0, I1, I2, I3, Y );

    I0=0; I1=0; I2=1; I3=0; S1=1; S0=0;
    #10;
    $display("%b  %b  %b  %b  %b  %b  |  %b ", S1, S0, I0, I1, I2, I3, Y);

    I0=0; I1=0; I2=0; I3=1; S1=1; S0=1;
    #10;
    $display("%b  %b  %b  %b  %b  %b  |  %b ", S1, S0, I0, I1, I2, I3, Y);

    

    $finish;

end

endmodule