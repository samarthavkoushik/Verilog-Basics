module comp_2 (
    input A1,
    input B1,
    input A0,
    input B0,
    output G,
    output E,
    output L
);

   assign G = A1 & ~B1 | ~ ( A1 ^ B1 ) & A0 & ~B0 ;
   assign E = ~ ( A1 ^ B1 ) & ~ ( A0 ^ B0 );
   assign L = ~A1 & B1 | ~ ( A1 ^ B1 ) & ~A0 & B0 ;
    
endmodule
