// starter.v (Rename to <RNumber>.v
//
//  Implement an 8-bit ripple-carry adder.
//
module top(Cin, A, B, Cout, S);

// Verilog code goes here.
input Cin; 
input [7:0] A, B;

output [7:0] S; 
output Cout;

MEGAADDER u0(Cin, A, B, Cout, S);

endmodule

// Additional modules go here (if necessary).
module MEGAADDER (Cin, A, B, Cout, S);
input Cin; 
input [7:0] A, B;

output [7:0] S; 
output Cout;

wire w0, w1, w2, w3, w4, w5, w6;
fullAdder u0(.Cin(Cin), .A(A[0]), .B(B[0]), .Cout(w0), .S(S[0]));
fullAdder u1(.Cin(w0), .A(A[1]), .B(B[1]), .Cout(w1), .S(S[1]));
fullAdder u2(.Cin(w1), .A(A[2]), .B(B[2]), .Cout(w2), .S(S[2]));
fullAdder u3(.Cin(w2), .A(A[3]), .B(B[3]), .Cout(w3), .S(S[3]));
fullAdder u4(.Cin(w3), .A(A[4]), .B(B[4]), .Cout(w4), .S(S[4]));
fullAdder u5(.Cin(w4), .A(A[5]), .B(B[5]), .Cout(w5), .S(S[5]));
fullAdder u6(.Cin(w5), .A(A[6]), .B(B[6]), .Cout(w6), .S(S[6]));
fullAdder u7(.Cin(w6), .A(A[7]), .B(B[7]), .Cout(Cout), .S(S[7]));

endmodule

module fullAdder (Cin, A, B, Cout, S);
input Cin; //Carry in
input A, B; // Inputs A and B respectively

output Cout;
output S;
//Assignment gates
assign S = Cin ^ A ^ B; //Sum - Learned that ^ is xor.
assign Cout = A & B | Cin & A | Cin & B; //Cout

endmodule
