module half_sub (
    input A,B,
    output Y, BR
);

assign Y = A ^ B;
assign BR = ~A & B;

endmodule