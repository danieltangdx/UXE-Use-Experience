
module Q_RBUFZN ( Z, A, OE);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output Z;
input A;
input OE;
wire strn_1;
X_STR0WE1 strnp_2 ( Z, strn_1);
X_STR0WE0 strnp_1 ( Z, strn_1);
Q_BUFZN i0 ( .OE(OE), .A(A), .Z(strn_1));
endmodule
