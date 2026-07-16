`timescale 1ns/1ps
module mux_2_tb;
    reg I0;
    reg I1;
    reg S;
    wire Y;


mux_2 uut( 
    .I0(I0),
    .I1(I1),
    .S(S),
    .Y(Y)
);

initial begin
    $dumpfile("mux_2_tb.vcd");
    $dumpvars(0,mux_2_tb);

    $display("S  I0  I1 | Y ");

    I0=0; I1=0; S=0;
    #10;
    $display("%b %b %b | %b", S ,I0, I1 ,Y );

    I0=0; I1=0; S=1;
    #10;
    $display("%b %b %b | %b", S ,I0, I1 ,Y );

    I0=0; I1=1; S=0;
    #10;
    $display("%b %b %b | %b", S ,I0, I1 ,Y);

    I0=0; I1=1; S=1;
    #10;
    $display("%b %b %b | %b", S ,I0, I1 ,Y);

    I0=1; I1=0; S=0;
    #10;
    $display("%b %b %b | %b", S ,I0, I1 ,Y);

    I0=1; I1=0; S=1;
    #10;
    $display("%b %b %b | %b", S ,I0, I1 ,Y);

    I0=1; I1=1; S=0;
    #10;
    $display("%b %b %b | %b", S ,I0, I1 ,Y);

    I0=1; I1=1; S=1;
    #10;
    $display("%b %b %b | %b", S ,I0, I1 ,Y);

    $finish;

end

endmodule