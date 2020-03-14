
module ixc_assign_32 ( L, R);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [31:0] L;
input [31:0] R;
Q_ASSIGN U0 ( .B(R[0]), .A(L[0]));
Q_ASSIGN U1 ( .B(R[1]), .A(L[1]));
Q_ASSIGN U2 ( .B(R[2]), .A(L[2]));
Q_ASSIGN U3 ( .B(R[3]), .A(L[3]));
Q_ASSIGN U4 ( .B(R[4]), .A(L[4]));
Q_ASSIGN U5 ( .B(R[5]), .A(L[5]));
Q_ASSIGN U6 ( .B(R[6]), .A(L[6]));
Q_ASSIGN U7 ( .B(R[7]), .A(L[7]));
Q_ASSIGN U8 ( .B(R[8]), .A(L[8]));
Q_ASSIGN U9 ( .B(R[9]), .A(L[9]));
Q_ASSIGN U10 ( .B(R[10]), .A(L[10]));
Q_ASSIGN U11 ( .B(R[11]), .A(L[11]));
Q_ASSIGN U12 ( .B(R[12]), .A(L[12]));
Q_ASSIGN U13 ( .B(R[13]), .A(L[13]));
Q_ASSIGN U14 ( .B(R[14]), .A(L[14]));
Q_ASSIGN U15 ( .B(R[15]), .A(L[15]));
Q_ASSIGN U16 ( .B(R[16]), .A(L[16]));
Q_ASSIGN U17 ( .B(R[17]), .A(L[17]));
Q_ASSIGN U18 ( .B(R[18]), .A(L[18]));
Q_ASSIGN U19 ( .B(R[19]), .A(L[19]));
Q_ASSIGN U20 ( .B(R[20]), .A(L[20]));
Q_ASSIGN U21 ( .B(R[21]), .A(L[21]));
Q_ASSIGN U22 ( .B(R[22]), .A(L[22]));
Q_ASSIGN U23 ( .B(R[23]), .A(L[23]));
Q_ASSIGN U24 ( .B(R[24]), .A(L[24]));
Q_ASSIGN U25 ( .B(R[25]), .A(L[25]));
Q_ASSIGN U26 ( .B(R[26]), .A(L[26]));
Q_ASSIGN U27 ( .B(R[27]), .A(L[27]));
Q_ASSIGN U28 ( .B(R[28]), .A(L[28]));
Q_ASSIGN U29 ( .B(R[29]), .A(L[29]));
Q_ASSIGN U30 ( .B(R[30]), .A(L[30]));
Q_ASSIGN U31 ( .B(R[31]), .A(L[31]));
endmodule
