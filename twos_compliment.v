module twos_compliment (
    input [7:0] A,
    output [7:0] Y
    
);

    wire [7:0] carries;
    
//    assign Y[7:0] = ~A[7:0];
    
ones_compliment column_one (
    .A(~A[0]),
    .B(1'b1),
    .Y(Y[0]),
    .Cin(1'b0),
    .Cout(carries[0])
);

ones_compliment column_two (
    .A(~A[1]),
    .B(1'b0),
    .Y(Y[1]),
    .Cin(carries[0]),
    .Cout(carries[1])
);

ones_compliment column_three (
    .A(~A[2]),
    .B(1'b0),
    .Y(Y[2]),
    .Cin(carries[1]),
    .Cout(carries[2])
);

ones_compliment column_four (
    .A(~A[3]),
    .B(1'b0),
    .Y(Y[3]),
    .Cin(carries[2]),
    .Cout(carries[3])
);

ones_compliment column_five (
    .A(~A[4]),
    .B(1'b0),
    .Y(Y[4]),
    .Cin(carries[3]),
    .Cout(carries[4])
);

ones_compliment column_six (
    .A(~A[5]),
    .B(1'b0),
    .Y(Y[5]),
    .Cin(carries[4]),
    .Cout(carries[5])
);

ones_compliment column_seven (
    .A(~A[6]),
    .B(1'b0),
    .Y(Y[6]),
    .Cin(carries[5]),
    .Cout(carries[6])
);
ones_compliment column_eight (
    .A(~A[7]),
    .B(1'b0),
    .Y(Y[7]),
    .Cin(carries[6]),
    .Cout(carries[7])
);


endmodule;