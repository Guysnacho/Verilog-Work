module top(A, B, F);

input [1:0] A, B;
output F;

// YOUR VERILOG CODE BELOW

//assign F = A > B;

assign F = A[0] & B[0] | A[1] & B[1] & B[0] | A[1] & A[0] & ~B[1] | ~A[1] & ~A[0] & 
~B[1] & ~B[0] | ~A[1] & A[0] & B[1];

endmodule
