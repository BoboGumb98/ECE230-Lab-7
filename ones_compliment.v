module ones_compliment(
    input A,B, Cin,
    output Y, Cout
);

assign Y = ~A&B&~Cin | A&B&Cin | A&~B&~Cin | ~A&~B&Cin;
assign Cout = Cin&(A | B) | A&B;

endmodule 