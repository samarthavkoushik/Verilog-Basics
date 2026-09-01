`timescale 1ns/1ps

module half_sub_tb;

reg A;
reg B;
wire Diff;
wire Borrow;

half_sub uut (
    .A(A),
    .B(B),
    .Diff(Diff),
    .Borrow(Borrow)
);

initial begin
    $dumpfile("half_sub.vcd");
    $dumpvars(0, half_sub_tb);
    
    $display("A B | Diff Borrow");

    A = 0; B = 0;
    #10;
    $display("%b %b | %b %b", A, B, Diff, Borrow );

    A = 0; B = 1;
    #10;
    $display("%b %b | %b %b", A, B, Diff, Borrow);

    A = 1; B = 0;
    #10;
    $display("%b %b | %b %b", A, B, Diff, Borrow);

    A = 1; B = 1;
    #10;
    $display("%b %b | %b %b", A, B, Diff, Borrow);

    $finish;
end

endmodule
