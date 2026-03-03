module top (
    input [9:0] sw,
    output [13:0] led
);

half_sub hs (
    .A(sw[0]),
    .B(sw[1]),
    .Y(led[0]),
    .BR(led[1])
);

// 4 bit first addition sum
wire [3:0] firstAdd;
// standard carry
wire [7:0] carry;

// First Addition
// Bit 0 Column
ones_compliment first_bits (
    .A(sw[2]),
    .B(sw[6]),
    .Y(firstAdd[0]),
    .Cin(1'b0),
    .Cout(carry[0])
);

// Bit 1 Column
ones_compliment second_bits (
    .A(sw[3]),
    .B(sw[7]),
    .Y(firstAdd[1]),
    .Cin(carry[0]),
    .Cout(carry[1])
);

// Bit 2 Column
ones_compliment third_bits (
    .A(sw[4]),
    .B(sw[8]),
    .Y(firstAdd[2]),
    .Cin(carry[1]),
    .Cout(carry[2])
);

// Bit 3 Column
ones_compliment fourth_bits (
    .A(sw[5]),
    .B(sw[9]),
    .Y(firstAdd[3]),
    .Cin(carry[2]),
    .Cout(carry[3]) // end around carry
);

// Second carry around addition
// Bit 0 Column
ones_compliment carry_first_bits (
    .A(firstAdd[0]),
    .B(1'b0),
    .Y(led[2]),
    .Cin(carry[3]),
    .Cout(carry[4])
);

// Bit 1 Column
ones_compliment carry_second_bits (
    .A(firstAdd[1]),
    .B(1'b0),
    .Y(led[3]),
    .Cin(carry[4]),
    .Cout(carry[5])
);

// Bit 2 Column
ones_compliment carry_third_bits (
    .A(firstAdd[2]),
    .B(1'b0),
    .Y(led[4]),
    .Cin(carry[5]),
    .Cout(carry[6])
);

// Bit 3 Column
ones_compliment carry_fourth_bits (
    .A(firstAdd[3]),
    .B(1'b0),
    .Y(led[5]),
    .Cin(carry[6]),
    .Cout(carry[7])
);

twos_compliment two (
    .A(sw[9:2]),
    .Y(led[13:6])    
);

endmodule