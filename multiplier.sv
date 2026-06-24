module multiplier(
    input  logic [3:0] A,
    input  logic [3:0] B,
    output logic [7:0] P
);

    logic p00,p01,p02,p03;
    logic p10,p11,p12,p13;
    logic p20,p21,p22,p23;
    logic p30,p31,p32,p33;

    logic s1,s2,s3,s4,s5,s6,s7,s8;
    logic c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12;

    // Partial products
    and_gate g00(A[0],B[0],p00);
    and_gate g01(A[0],B[1],p01);
    and_gate g02(A[0],B[2],p02);
    and_gate g03(A[0],B[3],p03);

    and_gate g10(A[1],B[0],p10);
    and_gate g11(A[1],B[1],p11);
    and_gate g12(A[1],B[2],p12);
    and_gate g13(A[1],B[3],p13);

    and_gate g20(A[2],B[0],p20);
    and_gate g21(A[2],B[1],p21);
    and_gate g22(A[2],B[2],p22);
    and_gate g23(A[2],B[3],p23);

    and_gate g30(A[3],B[0],p30);
    and_gate g31(A[3],B[1],p31);
    and_gate g32(A[3],B[2],p32);
    and_gate g33(A[3],B[3],p33);

    assign P[0] = p00;

    fulladder fa1(p01,p10,1'b0,P[1],c1);
    fulladder fa2(p02,p11,c1,s1,c2);
    fulladder fa3(p03,p12,c2,s2,c3);
    fulladder fa4(1'b0,p13,c3,s3,c4);

    fulladder fa5(s1,p20,1'b0,P[2],c5);
    fulladder fa6(s2,p21,c5,s4,c6);
    fulladder fa7(s3,p22,c6,s5,c7);
    fulladder fa8(c4,p23,c7,s6,c8);

    fulladder fa9(s4,p30,1'b0,P[3],c9);
    fulladder fa10(s5,p31,c9,P[4],c10);
    fulladder fa11(s6,p32,c10,P[5],c11);
    fulladder fa12(c8,p33,c11,P[6],c12);

    assign P[7] = c12;

endmodule