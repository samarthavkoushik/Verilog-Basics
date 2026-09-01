module f_sub
(
    input A,
    input B,
    input Bin,
    output Diff,
    output Borrow
);
    assign Diff = A ^ B ^ Bin; 
    assign Borrow = ( ~A & B )| (Bin & (~A | B)); 
endmodule
