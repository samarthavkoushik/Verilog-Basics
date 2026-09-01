`timescale 1ns/1ps

module f_sub_tb;

reg A;
reg B;
reg Bin;
wire Diff;
wire Borrow;

f_sub uut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .Diff(Diff),
    .Borrow(Borrow)
);

initial begin
    $dumpfile("f_sub.vcd");
    $dumpvars(0, f_sub_tb);
    
    $display("A B Bin| Diff Borrow");

    A = 0; B = 0; Bin=0;
    #10;
    $display("%b %b %b| %b %b", A, B, Bin, Diff, Borrow );

    A = 0; B = 0; Bin=1;
    #10;
    $display("%b %b %b| %b %b", A, B, Bin, Diff, Borrow );

    A = 0; B = 1; Bin=0;
    #10;
    $display("%b %b %b| %b %b", A, B, Bin, Diff, Borrow );

    A = 0; B = 1; Bin=1;
    #10;
    $display("%b %b %b| %b %b", A, B, Bin, Diff, Borrow );

    A = 1; B = 0; Bin=0;
    #10;
    $display("%b %b %b| %b %b", A, B, Bin, Diff, Borrow );

    A = 1; B = 0; Bin=1;
    #10;
    $display("%b %b %b| %b %b", A, B, Bin, Diff, Borrow );

    A = 1; B = 1; Bin=0;
    #10;
    $display("%b %b %b| %b %b", A, B, Bin, Diff, Borrow );

    A = 1; B = 1; Bin=1;
    #10;
    $display("%b %b %b| %b %b", A, B, Bin, Diff, Borrow );

    $finish;
end

endmodule