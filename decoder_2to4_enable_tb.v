`timescale 1ns/1ps
module decoder_2to4_enable_tb;
    reg A;
    reg B;
    reg E;
    wire Y0;
    wire Y1;
    wire Y2;
    wire Y3;

decoder_2to4_enable uut( 
    .A(A),
    .B(B),
    .E(E),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin
    $dumpfile("decoder_2to4_enable_tb.vcd");
    $dumpvars(0,decoder_2to4_enable_tb);

    $display("E  A  B  | Y0  Y1  Y2  Y3  ");

    A=0; B=0; E=0;
    #10;
    $display("%b  %b  %b  |  %b  %b  %b  %b  ", E, A, B, Y0, Y1, Y2, Y3 );

    A=0; B=1; E=0;
    #10;
    $display("%b  %b  %b  |  %b  %b  %b  %b  ", E, A, B, Y0, Y1, Y2, Y3 );

    A=1; B=0; E=0;
    #10;
    $display("%b  %b  %b  |  %b  %b  %b  %b  ", E, A, B, Y0, Y1, Y2, Y3 );

    A=1; B=1; E=0;
    #10;
    $display("%b  %b  %b  |  %b  %b  %b  %b  ", E, A, B, Y0, Y1, Y2, Y3 );
    
     A=0; B=0; E=1;
    #10;
    $display("%b  %b  %b  |  %b  %b  %b  %b  ", E, A, B, Y0, Y1, Y2, Y3 );

    A=0; B=1; E=1;
    #10;
    $display("%b  %b  %b  |  %b  %b  %b  %b  ", E, A, B, Y0, Y1, Y2, Y3 );

    A=1; B=0; E=1;
    #10;
    $display("%b  %b  %b  |  %b  %b  %b  %b  ", E, A, B, Y0, Y1, Y2, Y3 );

    A=1; B=1; E=1;
    #10;
    $display("%b  %b  %b  |  %b  %b  %b  %b  ", E, A, B, Y0, Y1, Y2, Y3 );

    $finish;

end

endmodule