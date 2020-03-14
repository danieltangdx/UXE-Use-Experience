`qtcell
module Q_BDIZNTNPG ( PAD,Z,PO,A,OE,PI,T );
input A,OE,PI,T;
output Z,PO;
inout PAD;
endmodule

module Q_MX03I ( Z,A0,A1,A2,S0,S1 );
input A0,A1,A2,S0,S1;
output Z;
endmodule

module Q_ND02 ( Z,A0,A1 );
input A0,A1;
output Z;
endmodule

module Q_ND03 ( Z,A0,A1,A2 );
input A0,A1,A2;
output Z;
endmodule

module Q_FDP2ZP ( Q,QT,CK,D,OE,S );
input CK,D,OE,S;
output Q,QT;
endmodule

module Q_ND04 ( Z,A0,A1,A2,A3 );
input A0,A1,A2,A3;
output Z;
endmodule

module Q_ND05 ( Z,A0,A1,A2,A3,A4 );
input A0,A1,A2,A3,A4;
output Z;
endmodule

module DFF_RS_BS ( Q,QN,D,C,CLR,PRE );
input D,C,CLR,PRE;
output Q,QN;
endmodule

module Q_ND06 ( Z,A0,A1,A2,A3,A4,A5 );
input A0,A1,A2,A3,A4,A5;
output Z;
endmodule

module Q_ND07 ( Z,A0,A1,A2,A3,A4,A5,A6 );
input A0,A1,A2,A3,A4,A5,A6;
output Z;
endmodule

module Q_ND08 ( Z,A0,A1,A2,A3,A4,A5,A6,A7 );
input A0,A1,A2,A3,A4,A5,A6,A7;
output Z;
endmodule

module Q_ND09 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8;
output Z;
endmodule

module Q_OR10 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9;
output Z;
endmodule

module Q_OR11 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10;
output Z;
endmodule

module Q_OR12 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11;
output Z;
endmodule

module Q_OR13 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12;
output Z;
endmodule

module Q_OR14 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13;
output Z;
endmodule

module Q_FDP31XP ( Q,QN,CK,D,R,S,TE,TI );
input CK,D,R,S,TE,TI;
output Q,QN;
endmodule

module Q_LDP3S ( Q,QN,D,G,R,S );
input D,G,R,S;
output Q,QN;
endmodule

module Q_FDP30ZP ( Q,QT,CK,D,OE,R,S );
input CK,D,OE,R,S;
output Q,QT;
endmodule

module Q_OR15 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14;
output Z;
endmodule

module Q_OR16 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15;
output Z;
endmodule

module Q_SUPPLY_ON ( OE,A31,A30,A29,A28,A27,A26,A25,A24,A23,A22,A21,A20,A19,A18,A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0,S,V31,V30,V29,V28,V27,V26,V25,V24,V23,V22,V21,V20,V19,V18,V17,V16,V15,V14,V13,V12,V11,V10,V9,V8,V7,V6,V5,V4,V3,V2,V1,V0 );
input OE,A31,A30,A29,A28,A27,A26,A25,A24,A23,A22,A21,A20,A19,A18,A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0;
output S,V31,V30,V29,V28,V27,V26,V25,V24,V23,V22,V21,V20,V19,V18,V17,V16,V15,V14,V13,V12,V11,V10,V9,V8,V7,V6,V5,V4,V3,V2,V1,V0;
endmodule

module Q_OAI211 ( Z,A0,A1,B0,C0 );
input A0,A1,B0,C0;
output Z;
endmodule

module Q_IBD ( Z,PAD );
input PAD;
output Z;
endmodule

module Q_UCCLK ( clk );
input clk;
endmodule

module Q_MX04I ( Z,A0,A1,A2,A3,S0,S1 );
input A0,A1,A2,A3,S0,S1;
output Z;
endmodule

module Q_ND10 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9;
output Z;
endmodule

module Q_IBI ( Z,PAD );
input PAD;
output Z;
endmodule

module Q_ND11 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10;
output Z;
endmodule

module Q_TRAN ( A,B );
inout A,B;
endmodule

module Q_PEDECT ( Q,A,OE );
input A,OE;
output Q;
endmodule

module Q_ND12 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11;
output Z;
endmodule

module Q_EXPORT_INIT ( I,F,R,S,E,Q,N );
input I,F,R,S;
output E,Q,N;
endmodule

module Q_ND13 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12;
output Z;
endmodule

module Q_ND14 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13;
output Z;
endmodule

module Q_DC08I ( Z0,Z1,Z2,Z3,Z4,Z5,Z6,Z7,A0,A1,A2 );
input A0,A1,A2;
output Z0,Z1,Z2,Z3,Z4,Z5,Z6,Z7;
endmodule

module Q_ND15 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14;
output Z;
endmodule

module Q_ND16 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15;
output Z;
endmodule

module Q_CMG04 ( ZE,ZG,ZL,A0,A1,A2,A3,B0,B1,B2,B3,EQ,GT,LT );
input A0,A1,A2,A3,B0,B1,B2,B3,EQ,GT,LT;
output ZE,ZG,ZL;
endmodule

module Q_MX04EN ( Z,A0,A1,A2,A3,S0,S1,E );
input A0,A1,A2,A3,S0,S1,E;
output Z;
endmodule

module Q_IBU ( Z,PAD );
input PAD;
output Z;
endmodule

module Q_MULTIFLOP_SMARTRESET ( Q,D,CK,CE,R,S );
input D,CK,CE,R,S;
output Q;
endmodule

module Q_LDN0I0 ( Q,QN,D,G );
input D,G;
output Q,QN;
endmodule

module axis_behctrl ( behClk,behStart,behEnd,behWait,behReq );
input behWait,behReq;
output behClk,behStart,behEnd;
endmodule

module Q_LDN0I1 ( Q,QN,D,G );
input D,G;
output Q,QN;
endmodule

module Q_OAI221 ( Z,A0,A1,B0,B1,C0 );
input A0,A1,B0,B1,C0;
output Z;
endmodule

module Q_OAI222 ( Z,A0,A1,B0,B1,C0,C1 );
input A0,A1,B0,B1,C0,C1;
output Z;
endmodule

module Q_BDIZNTNPGD ( PAD,Z,PO,A,OE,PI,T );
input A,OE,PI,T;
output Z,PO;
inout PAD;
endmodule

module Q_SRP4_4 ( Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3,D,CK,R );
input D,CK,R;
output Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3;
endmodule

module Q_ATB_ENABLE ( Z,A );
input A;
output Z;
endmodule

module Q_LOAD ( A );
input A;
endmodule

module Q_CSP1LN_4 ( Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3,CO,CK,D0,D1,D2,D3,EP,ET,LD,R );
input CK,D0,D1,D2,D3,EP,ET,LD,R;
output Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3,CO;
endmodule

module Q_BDIZNTNPGU ( PAD,Z,PO,A,OE,PI,T );
input A,OE,PI,T;
output Z,PO;
inout PAD;
endmodule

module Q_IBPGD ( Z,PO,PAD,PI );
input PAD,PI;
output Z,PO;
endmodule

module Q_SA_TIMESTAMP ( Z,A63,A62,A61,A60,A59,A58,A57,A56,A55,A54,A53,A52,A51,A50,A49,A48,A47,A46,A45,A44,A43,A42,A41,A40,A39,A38,A37,A36,A35,A34,A33,A32,A31,A30,A29,A28,A27,A26,A25,A24,A23,A22,A21,A20,A19,A18,A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0 );
input A63;
input A62;
input A61;
input A60;
input A59;
input A58;
input A57;
input A56;
input A55;
input A54;
input A53;
input A52;
input A51;
input A50;
input A49;
input A48;
input A47;
input A46;
input A45;
input A44;
input A43;
input A42;
input A41;
input A40;
input A39;
input A38;
input A37;
input A36;
input A35;
input A34;
input A33;
input A32;
input A31;
input A30;
input A29;
input A28;
input A27;
input A26;
input A25;
input A24;
input A23;
input A22;
input A21;
input A20;
input A19;
input A18;
input A17;
input A16;
input A15;
input A14;
input A13;
input A12;
input A11;
input A10;
input A9;
input A8;
input A7;
input A6;
input A5;
input A4;
input A3;
input A2;
input A1;
input A0;
output [63:0] Z;
endmodule

module Q_MULTILATCH_SYNCDATA_ASYNCRESET ( Q,D,CK,CE,R,S );
input D,CK,CE,R,S;
output Q;
endmodule

module NA4 ( O,I3,I2,I1,I0 );
input I3,I2,I1,I0;
output O;
endmodule

module NA5 ( O,I4,I3,I2,I1,I0 );
input I4,I3,I2,I1,I0;
output O;
endmodule

module Q_FTP1EPV1 ( Q,QN,CO,CK,CE,R );
input CK,CE,R;
output Q,QN,CO;
endmodule

module Q_IBPGU ( Z,PO,PAD,PI );
input PAD,PI;
output Z,PO;
endmodule

module Q_BDODZNTNPG ( PAD,Z,PO,OE,PI,T );
input OE,PI,T;
output Z,PO;
inout PAD;
endmodule

module Q_FDN30 ( Q,QN,CK,D,R,S );
input CK,D,R,S;
output Q,QN;
endmodule

module Q_FDP0BP ( Q,D,C,E );
input D,C,E;
output Q;
endmodule

module Q_FDN31 ( Q,QN,CK,D,R,S );
input CK,D,R,S;
output Q,QN;
endmodule

module Q_HDL_BREAK ( A,Z );
input A;
output Z;
endmodule

module Q_FCLK ( fClk,level );
input level;
output fClk;
endmodule

module DFF_S_DLAT_MUX_BS ( Q,CK,D,G,S,SI );
input CK,D,G,S,SI;
output Q;
endmodule

module Q_FDP0XNEN ( Q,QN,CE,CK,D,TE,TI );
input CE,CK,D,TE,TI;
output Q,QN;
endmodule

module Q_BRP ( Z );
output Z;
endmodule

module Q_QN60 ( QN,Q,R,S );
input Q,R,S;
output QN;
endmodule

module DFF_R_BS ( Q,D,C,CE,CLR );
input D,C,CE,CLR;
output Q;
endmodule

module Q_WIREFORCE ( Q,A,E );
input Q,A,E;
endmodule

module Q_SDLY_ENABLED ( Q,D,T );
input D;
output Q,T;
endmodule

module Q_ALU_I ( DI31,DI30,DI29,DI28,DI27,DI26,DI25,DI24,DI23,DI22,DI21,DI20,DI19,DI18,DI17,DI16,DI15,DI14,DI13,DI12,DI11,DI10,DI9,DI8,DI7,DI6,DI5,DI4,DI3,DI2,DI1,DI0,CIN,EN,SYNC_IN,DO31,DO30,DO29,DO28,DO27,DO26,DO25,DO24,DO23,DO22,DO21,DO20,DO19,DO18,DO17,DO16,DO15,DO14,DO13,DO12,DO11,DO10,DO9,DO8,DO7,DO6,DO5,DO4,DO3,DO2,DO1,DO0,COUT,EQZ,GTZ,GEZ,SYNC_OUT );
input DI31,DI30,DI29,DI28,DI27,DI26,DI25,DI24,DI23,DI22,DI21,DI20,DI19,DI18,DI17,DI16,DI15,DI14,DI13,DI12,DI11,DI10,DI9,DI8,DI7,DI6,DI5,DI4,DI3,DI2,DI1,DI0,CIN,EN,SYNC_IN;
output DO31,DO30,DO29,DO28,DO27,DO26,DO25,DO24,DO23,DO22,DO21,DO20,DO19,DO18,DO17,DO16,DO15,DO14,DO13,DO12,DO11,DO10,DO9,DO8,DO7,DO6,DO5,DO4,DO3,DO2,DO1,DO0,COUT,EQZ,GTZ,GEZ,SYNC_OUT;
endmodule

module Q_IB ( Z,PAD );
input PAD;
output Z;
endmodule

module Q_LDN3SZP ( Q,QT,D,G,R,S,OE );
input D,G,R,S,OE;
output Q,QT;
endmodule

module Q_XNR2V1 ( Z,A0,A1,B0,B1 );
input A0,A1,B0,B1;
output Z;
endmodule

module Q_BUFP16 ( Z0,Z1,Z2,Z3,Z4,Z5,Z6,Z7,Z8,Z9,Z10,Z11,Z12,Z13,Z14,Z15,A );
input A;
output Z0,Z1,Z2,Z3,Z4,Z5,Z6,Z7,Z8,Z9,Z10,Z11,Z12,Z13,Z14,Z15;
endmodule

module Q_NORMALDRIVER ( Q,A,E );
input Q,A,E;
endmodule

module Q_MULTIDRV ( Q,D );
input D;
output Q;
endmodule

module Q_DELAY_BY_0 ( E,Z,Q );
input E;
output Z,Q;
endmodule

module Q_COSIMEXPORT ( E,S,Q,N );
input E,S;
output Q,N;
endmodule

module Q_BDODIZNTNPG ( PAD,Z,PO,OE,PI,T );
input OE,PI,T;
output Z,PO;
inout PAD;
endmodule

module A5 ( O,I0,I1,I2,I3,I4 );
input I0,I1,I2,I3,I4;
output O;
endmodule

module Q_MX02M4 ( Z0,Z1,Z2,Z3,A0,A1,B0,B1,C0,C1,D0,D1,S );
input A0,A1,B0,B1,C0,C1,D0,D1,S;
output Z0,Z1,Z2,Z3;
endmodule

module Q_FDP0A ( D,Q );
input D;
output Q;
endmodule

module Q_JK2D ( D,J,K,Q );
input J,K,Q;
output D;
endmodule

module Q_FDP0B ( D,QTFCLK,Q );
input D,QTFCLK;
output Q;
endmodule

module Q_FDP0D ( D,E,Q );
input D,E;
output Q;
endmodule

module Q_FDP0E ( D,E,Q );
input D,E;
output Q;
endmodule

module Q_FDP0F ( D,QTFCLK,Q );
input D,QTFCLK;
output Q;
endmodule

module Q_OAI333 ( Z,A0,A1,A2,B0,B1,B2,C0,C1,C2 );
input A0,A1,A2,B0,B1,B2,C0,C1,C2;
output Z;
endmodule

module Q_FDP0I ( D,QTFCLK,Q );
input D,QTFCLK;
output Q;
endmodule

module Q_PASS ( Z,A );
input A;
output Z;
endmodule

module Q_LSN31V1 ( Q,QN,R0,R1,R2,S0,S1,S2 );
input R0,R1,R2,S0,S1,S2;
output Q,QN;
endmodule

module Q_FDP61XPEN ( Q,QN,CE,CK,D,R,S,TE,TI );
input CE,CK,D,R,S,TE,TI;
output Q,QN;
endmodule

module Q_AOI21 ( Z,A0,A1,B0 );
input A0,A1,B0;
output Z;
endmodule

module Q_AOI22 ( Z,A0,A1,B0,B1 );
input A0,A1,B0,B1;
output Z;
endmodule

module Q_FDP0S ( D,Q,E );
input D,E;
output Q;
endmodule

module Q_INIT0 ( Z );
output Z;
endmodule

module Q_INIT1 ( Z );
output Z;
endmodule

module Q_MX02 ( Z,A0,A1,S );
input A0,A1,S;
output Z;
endmodule

module Q_MX03 ( Z,A0,A1,A2,S0,S1 );
input A0,A1,A2,S0,S1;
output Z;
endmodule

module Q_MX04 ( Z,A0,A1,A2,A3,S0,S1 );
input A0,A1,A2,A3,S0,S1;
output Z;
endmodule

module Q_MX05 ( Z,A0,A1,A2,A3,A4,S0,S1,S2 );
input A0,A1,A2,A3,A4,S0,S1,S2;
output Z;
endmodule

module Q_BDOSZPTNPG ( PAD,Z,PO,OE,PI,T );
input OE,PI,T;
output Z,PO;
inout PAD;
endmodule

module Q_MX08 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,S0,S1,S2 );
input A0,A1,A2,A3,A4,A5,A6,A7,S0,S1,S2;
output Z;
endmodule

module Q_LSN00 ( Q,QN,R,S );
input R,S;
output Q,QN;
endmodule

module Q_LSN01 ( Q,QN,R,S );
input R,S;
output Q,QN;
endmodule

module Q_DEASSIGN ( Q,E );
input Q,E;
endmodule

module Q_LDN0M4 ( Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3,D0,D1,D2,D3,G );
input D0,D1,D2,D3,G;
output Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3;
endmodule

module Q_AED_PHASE ( Q,D,E );
input D,E;
output Q;
endmodule

module DLAT_R_BS ( Q,D,C,CLR );
input D,C,CLR;
output Q;
endmodule

module Q_BUF ( Z,A );
input A;
output Z;
endmodule

module Q_AOI31 ( Z,A0,A1,A2,B0 );
input A0,A1,A2,B0;
output Z;
endmodule

module Q_AOI33 ( Z,A0,A1,A2,B0,B1,B2 );
input A0,A1,A2,B0,B1,B2;
output Z;
endmodule

module Q_FDP1Y ( Q,QN,CK,D,R );
input CK,D,R;
output Q,QN;
endmodule

module Q_FORCECTRL ( Q,E );
input Q,E;
endmodule

module Q_FTP61EP ( Q,QN,CK,R,S,CE );
input CK,R,S,CE;
output Q,QN;
endmodule

module DFF_S_BS ( Q,D,C,CE,PRE );
input D,C,CE,PRE;
output Q;
endmodule

module Q_FDN0 ( Q,QN,CK,D );
input CK,D;
output Q,QN;
endmodule

module Q_FDN1 ( Q,QN,CK,D,R );
input CK,D,R;
output Q,QN;
endmodule

module Q_DLY00 ( Z,A );
input A;
output Z;
endmodule

module Q_FDN2 ( Q,QN,CK,D,S );
input CK,D,S;
output Q,QN;
endmodule

module Q_LSN10 ( Q,QN,R0,R1,S );
input R0,R1,S;
output Q,QN;
endmodule


module Q_INVZN ( Z,A,OE );
input A,OE;
output Z;
endmodule

module Q_RUP ( Z );
output Z;
endmodule

module Q_INVZP ( Z,A,OE );
input A,OE;
output Z;
endmodule

module Q_IBID ( Z,PAD );
input PAD;
output Z;
endmodule

module Q_FDP30 ( Q,QN,CK,D,R,S );
input CK,D,R,S;
output Q,QN;
endmodule

module Q_FDP31 ( Q,QN,CK,D,R,S );
input CK,D,R,S;
output Q,QN;
endmodule

module Q_AOI44 ( Z,A0,A1,A2,A3,B0,B1,B2,B3 );
input A0,A1,A2,A3,B0,B1,B2,B3;
output Z;
endmodule

module Q_ASSIGN ( A,B );
inout A,B;
endmodule

module Q_LDP0I0 ( Q,QN,D,G );
input D,G;
output Q,QN;
endmodule

module Q_IBIU ( Z,PAD );
input PAD;
output Z;
endmodule

module Q_FJP0XNEN ( Q,QN,CK,CE,J,K,TE,TI );
input CK,CE,J,K,TE,TI;
output Q,QN;
endmodule

module Q_LDP0I1 ( Q,QN,D,G );
input D,G;
output Q,QN;
endmodule

module Q_FJP61XN ( Q,QN,CK,J,K,R,S,TE,TI );
input CK,J,K,R,S,TE,TI;
output Q,QN;
endmodule

module Q_BDZN ( PAD,Z,A,OE );
input A,OE;
output Z;
inout PAD;
endmodule

module Q_FDP30XPZP ( Q,QT,CK,D,OE,R,S,TE,TI );
input CK,D,OE,R,S,TE,TI;
output Q,QT;
endmodule

module Q_RM16X2 ( Z0,Z1,A0,A1,A2,A3,D0,D1,WE );
input A0,A1,A2,A3,D0,D1,WE;
output Z0,Z1;
endmodule

module Q_LDN1M4 ( Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3,D0,D1,D2,D3,G,R );
input D0,D1,D2,D3,G,R;
output Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3;
endmodule

module Q_XOR2V1 ( Z,A0,A1,B0,B1 );
input A0,A1,B0,B1;
output Z;
endmodule

module Q_BDZND ( PAD,Z,A,OE );
input A,OE;
output Z;
inout PAD;
endmodule

module Q_OAI444 ( Z,A0,A1,A2,A3,B0,B1,B2,B3,C0,C1,C2,C3 );
input A0,A1,A2,A3,B0,B1,B2,B3,C0,C1,C2,C3;
output Z;
endmodule

module NA4B ( O,I3,I2,I1,I0 );
input I3,I2,I1,I0;
output O;
endmodule

module Q_MPCLK ( uClk );
output uClk;
endmodule

module Q_TOGGLE_RELEASE ( R,Q,T,N,E );
input R,Q,T,N,E;
endmodule

module Q_MX02IEN ( Z,A0,A1,S,E );
input A0,A1,S,E;
output Z;
endmodule

module Q_BDZNU ( PAD,Z,A,OE );
input A,OE;
output Z;
inout PAD;
endmodule

module Q_TB_FORCE ( Q );
input Q;
endmodule

module Q_FDP0 ( Q,QN,CK,D );
input CK,D;
output Q,QN;
endmodule

module Q_FDP1 ( Q,QN,CK,D,R );
input CK,D,R;
output Q,QN;
endmodule

module Q_COSIMRESUME ( Q,A );
input A;
output Q;
endmodule

module Q_FDP2 ( Q,QN,CK,D,S );
input CK,D,S;
output Q,QN;
endmodule

module Q_FDP4 ( Q,QN,CK,D,R );
input CK,D,R;
output Q,QN;
endmodule

module Q_OAI2X4 ( Z,A0,A1,B0,B1,C0,C1,D0,D1 );
input A0,A1,B0,B1,C0,C1,D0,D1;
output Z;
endmodule

module Q_OAI2X6 ( Z,A0,A1,B0,B1,C0,C1,D0,D1,E0,E1,F0,F1 );
input A0,A1,B0,B1,C0,C1,D0,D1,E0,E1,F0,F1;
output Z;
endmodule

module Q_GLOBAL_CONNECT ( A );
input A;
endmodule

module Q_RPULSE ( A,Z,S );
input A,S;
output Z;
endmodule

module DLAT_S_BS ( Q,D,C,PRE );
input D,C,PRE;
output Q;
endmodule

module Q_OAI2X8 ( Z,A0,A1,B0,B1,C0,C1,D0,D1,E0,E1,F0,F1,G0,G1,H0,H1 );
input A0,A1,B0,B1,C0,C1,D0,D1,E0,E1,F0,F1,G0,G1,H0,H1;
output Z;
endmodule

module Q_FTP1 ( Q,QN,CK,R );
input CK,R;
output Q,QN;
endmodule

module Q_FTP2 ( Q,QN,CK,S );
input CK,S;
output Q,QN;
endmodule

module Q_FTP4 ( Q,QN,CK,R );
input CK,R;
output Q,QN;
endmodule

module Q_MX08EN ( Z,A0,A1,A2,A3,A4,A5,A6,A7,S0,S1,S2,E );
input A0,A1,A2,A3,A4,A5,A6,A7,S0,S1,S2,E;
output Z;
endmodule

module Q_FDP0I0 ( Q,QN,CK,D );
input CK,D;
output Q,QN;
endmodule

module Q_FDP0I1 ( Q,QN,CK,D );
input CK,D;
output Q,QN;
endmodule

module Q_FDP61XP ( Q,QN,CK,D,R,S,TE,TI );
input CK,D,R,S,TE,TI;
output Q,QN;
endmodule

module Q_LSP00 ( Q,QN,R,S );
input R,S;
output Q,QN;
endmodule

module Q_OB ( PAD,A );
input A;
output PAD;
endmodule

module Q_COSIMSYSCALL ( E,S,Q,N );
input E,S;
output Q,N;
endmodule

module Q_MULTIFLOP_ASYNCRESET ( Q,D,CK,CE,R,S );
input D,CK,CE,R,S;
output Q;
endmodule

module Q_FDP60 ( Q,QN,CK,D,R,S );
input CK,D,R,S;
output Q,QN;
endmodule

module Q_ZERO ( Z );
output Z;
endmodule

module Q_FDP61 ( Q,QN,CK,D,R,S );
input CK,D,R,S;
output Q,QN;
endmodule

module Q_BDZNTNPGD ( PAD,Z,PO,A,OE,PI,T );
input A,OE,PI,T;
output Z,PO;
inout PAD;
endmodule

module Q_ASSERT ( PASS,FAIL,ACTIVE,DISABLE,FAIL_LEVEL,PASS_LEVEL,PASS_COUNT,FAIL_COUNT,CHECK_COUNT,KILL_SIGNAL,SEVERITY,PWR_SHUTOFF,PWR_ACTION );
input PASS,FAIL,ACTIVE,DISABLE,FAIL_LEVEL,PASS_LEVEL,PASS_COUNT,FAIL_COUNT,CHECK_COUNT,KILL_SIGNAL,SEVERITY,PWR_SHUTOFF,PWR_ACTION;
endmodule

module Q_LPULSE ( A,Z,S );
input A,S;
output Z;
endmodule

module Q_MPCLK1N ( clk );
input clk;
endmodule

module Q_WOR ( A );
input A;
endmodule

module Q_MPCLK1P ( clk );
input clk;
endmodule

module Q_OAI3X4 ( Z,A0,A1,A2,B0,B1,B2,C0,C1,C2,D0,D1,D2 );
input A0,A1,A2,B0,B1,B2,C0,C1,C2,D0,D1,D2;
output Z;
endmodule

module Q_OBZN ( PAD,A,OE );
input A,OE;
output PAD;
endmodule

module Q_OBZP ( PAD,A,OE );
input A,OE;
output PAD;
endmodule

module Q_BDZNTNPGU ( PAD,Z,PO,A,OE,PI,T );
input A,OE,PI,T;
output Z,PO;
inout PAD;
endmodule

module Q_IBPGUV1 ( Z,PO,PAD,PI );
input PAD,PI;
output Z,PO;
endmodule

module Q_LDP0FDMX ( Q,QN,D,G,TI,CK,TE );
input D,G,TI,CK,TE;
output Q,QN;
endmodule

module Q_FJP61XNEN ( Q,QN,CK,CE,J,K,R,S,TE,TI );
input CK,CE,J,K,R,S,TE,TI;
output Q,QN;
endmodule

module Q_FDP1I0 ( Q,QN,CK,D,R );
input CK,D,R;
output Q,QN;
endmodule

module Q_FDP1I1 ( Q,QN,CK,D,R );
input CK,D,R;
output Q,QN;
endmodule

module Q_CRP1_4 ( Q0,Q1,Q2,Q3,CK,R );
input CK,R;
output Q0,Q1,Q2,Q3;
endmodule

module Q_LDP0M4 ( Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3,D0,D1,D2,D3,G );
input D0,D1,D2,D3,G;
output Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3;
endmodule

module Q_LDP0M8 ( Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,QN0,QN1,QN2,QN3,QN4,QN5,QN6,QN7,D0,D1,D2,D3,D4,D5,D6,D7,G );
input D0,D1,D2,D3,D4,D5,D6,D7,G;
output Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,QN0,QN1,QN2,QN3,QN4,QN5,QN6,QN7;
endmodule

module Q_MPCLK2N ( clk );
input clk;
endmodule

module Q_LSP01G ( Q,QN,R,S,G );
input R,S,G;
output Q,QN;
endmodule

module Q_RBUFZN ( Z,A,OE );
input A,OE;
output Z;
endmodule

module Q_RBUFZP ( Z,A,OE );
input A,OE;
output Z;
endmodule

module Q_MPCLK2P ( clk );
input clk;
endmodule

module Q_AN02 ( Z,A0,A1 );
input A0,A1;
output Z;
endmodule

module Q_AN03 ( Z,A0,A1,A2 );
input A0,A1,A2;
output Z;
endmodule

module Q_AN04 ( Z,A0,A1,A2,A3 );
input A0,A1,A2,A3;
output Z;
endmodule

module Q_SRP0LP_4 ( Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3,D0,D1,D2,D3,CK,LD,SI );
input D0,D1,D2,D3,CK,LD,SI;
output Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3;
endmodule

module Q_AN05 ( Z,A0,A1,A2,A3,A4 );
input A0,A1,A2,A3,A4;
output Z;
endmodule

module Q_OBD ( PAD,A );
input A;
output PAD;
endmodule

module Q_AN06 ( Z,A0,A1,A2,A3,A4,A5 );
input A0,A1,A2,A3,A4,A5;
output Z;
endmodule

module Q_AN07 ( Z,A0,A1,A2,A3,A4,A5,A6 );
input A0,A1,A2,A3,A4,A5,A6;
output Z;
endmodule

module Q_AN08 ( Z,A0,A1,A2,A3,A4,A5,A6,A7 );
input A0,A1,A2,A3,A4,A5,A6,A7;
output Z;
endmodule

module Q_AN09 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8;
output Z;
endmodule

module Q_OAI4X4 ( Z,A0,A1,A2,A3,B0,B1,B2,B3,C0,C1,C2,C3,D0,D1,D2,D3 );
input A0,A1,A2,A3,B0,B1,B2,B3,C0,C1,C2,C3,D0,D1,D2,D3;
output Z;
endmodule

module Q_OBI ( PAD,A );
input A;
output PAD;
endmodule

module Q_SDLY ( Q,D );
input D;
output Q;
endmodule

module Q_BDODZN ( PAD,Z,OE );
input OE;
output Z;
inout PAD;
endmodule

module Q_LDC0 ( Q,QN,D,GP,GN );
input D,GP,GN;
output Q,QN;
endmodule

module Q_FDP2I0 ( Q,QN,CK,D,S );
input CK,D,S;
output Q,QN;
endmodule

module Q_OBU ( PAD,A );
input A;
output PAD;
endmodule

module Q_FDP2I1 ( Q,QN,CK,D,S );
input CK,D,S;
output Q,QN;
endmodule

module Q_FDP0LS ( Q,QN,Z,CK,D,G0,G1,SI );
input CK,D,G0,G1,SI;
output Q,QN,Z;
endmodule

module Q_FDP0M4 ( Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3,CK,D0,D1,D2,D3 );
input CK,D0,D1,D2,D3;
output Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3;
endmodule

module Q_OSZP ( PAD,OE );
input OE;
output PAD;
endmodule

module Q_INV ( Z,A );
input A;
output Z;
endmodule

module Q_AN10 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9;
output Z;
endmodule

module Q_AN11 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10;
output Z;
endmodule

module Q_AN12 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11;
output Z;
endmodule

module Q_IBP8 ( Z0,Z1,Z2,Z3,Z4,Z5,Z6,Z7,PAD );
input PAD;
output Z0,Z1,Z2,Z3,Z4,Z5,Z6,Z7;
endmodule

module Q_AN13 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12;
output Z;
endmodule

module Q_AN14 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13;
output Z;
endmodule

module Q_AN15 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14;
output Z;
endmodule

module Q_FDP30I0 ( Q,QN,CK,D,R,S );
input CK,D,R,S;
output Q,QN;
endmodule

module Q_AN16 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15;
output Z;
endmodule

module Q_NED ( Q,D );
input D;
output Q;
endmodule

module Q_FDP30I1 ( Q,QN,CK,D,R,S );
input CK,D,R,S;
output Q,QN;
endmodule

module Q_EVDECT ( Q,A,OE );
input A,OE;
output Q;
endmodule

module Q_IBPG ( Z,PO,PAD,PI );
input PAD,PI;
output Z,PO;
endmodule

module Q_FDP4EP ( Q,CE,CK,D,R );
input CE,CK,D,R;
output Q;
endmodule

module Q_MX04IEN ( Z,A0,A1,A2,A3,S0,S1,E );
input A0,A1,A2,A3,S0,S1,E;
output Z;
endmodule

module NA4B1 ( O,I3,I2,I1,I0 );
input I3,I2,I1,I0;
output O;
endmodule

module Q_DC04IEN ( Z0,Z1,Z2,Z3,A0,A1,E );
input A0,A1,E;
output Z0,Z1,Z2,Z3;
endmodule

module NA4B2 ( O,I3,I2,I1,I0 );
input I3,I2,I1,I0;
output O;
endmodule

module NA4B3 ( O,I3,I2,I1,I0 );
input I3,I2,I1,I0;
output O;
endmodule

module Q_DC04IEP ( Z0,Z1,Z2,Z3,A0,A1,E );
input A0,A1,E;
output Z0,Z1,Z2,Z3;
endmodule

module Q_MT_DUMMY ( CVA_INTERNAL_mt_dummy_net );
output CVA_INTERNAL_mt_dummy_net;
endmodule

module Q_FDP0XPLP ( Q,QN,CK,D,LD,TE,TI );
input CK,D,LD,TE,TI;
output Q,QN;
endmodule

module Q_TIME_STOP ( E,Q );
input E;
output Q;
endmodule

module Q_LDN0V1 ( Q,QN,D,G,SEL );
input D,G,SEL;
output Q,QN;
endmodule

module Q_ODZN ( PAD,OE );
input OE;
output PAD;
endmodule

module X_STR0WE0 ( Z,A );
input A;
output Z;
endmodule

module X_STR0WE1 ( Z,A );
input A;
output Z;
endmodule

module Q_RELEASE ( Q,E );
input Q,E;
endmodule

module Q_UNIDIRZ ( Q,A );
input Q,A;
endmodule

module Q_CSP1_4 ( Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3,CK,R );
input CK,R;
output Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3;
endmodule

module Q_FDP1M4 ( Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3,CK,D0,D1,D2,D3,R );
input CK,D0,D1,D2,D3,R;
output Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3;
endmodule

module Q_SR_EDGE_TRIGGER ( Q,S,R,I,T,ENA );
input Q,S,R,I,ENA;
output T;
endmodule

module Q_MX02IM4 ( Z0,Z1,Z2,Z3,A0,A1,B0,B1,C0,C1,D0,D1,S );
input A0,A1,B0,B1,C0,C1,D0,D1,S;
output Z0,Z1,Z2,Z3;
endmodule

module Q_CTBDISPLAY ( Q,A );
input A;
output Q;
endmodule

module Q_AO21 ( Z,A0,A1,B0 );
input A0,A1,B0;
output Z;
endmodule

module Q_CM04 ( Z,A0,A1,A2,A3,B0,B1,B2,B3 );
input A0,A1,A2,A3,B0,B1,B2,B3;
output Z;
endmodule

module Q_AO22 ( Z,A0,A1,B0,B1 );
input A0,A1,B0,B1;
output Z;
endmodule

module Q_AD01HF ( S,CO,A0,B0 );
input A0,B0;
output S,CO;
endmodule

module Q_COMB_INIT ( Q,A );
input A;
output Q;
endmodule

module Q_SRP1LP_4 ( Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3,D0,D1,D2,D3,CK,LD,R,SI );
input D0,D1,D2,D3,CK,LD,R,SI;
output Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3;
endmodule

module NO4 ( O,I3,I2,I1,I0 );
input I3,I2,I1,I0;
output O;
endmodule

module NO5 ( O,I4,I3,I2,I1,I0 );
input I4,I3,I2,I1,I0;
output O;
endmodule

module X_STR0PU0 ( Z,A );
input A;
output Z;
endmodule

module X_STR0PU1 ( Z,A );
input A;
output Z;
endmodule

module Q_EXPORT_STOP ( E,I,S,Q,N );
input E,I,S;
output Q,N;
endmodule

module Q_BDZNTNPG ( PAD,Z,PO,A,OE,PI,T );
input A,OE,PI,T;
output Z,PO;
inout PAD;
endmodule

module Q_FDP2LS ( Q,QN,Z,CK,D,G0,G1,S,SI );
input CK,D,G0,G1,S,SI;
output Q,QN,Z;
endmodule

module Q_FJP0XN ( Q,QN,CK,J,K,TE,TI );
input CK,J,K,TE,TI;
output Q,QN;
endmodule

module Q_PED ( Q,D );
input D;
output Q;
endmodule

module Q_RESYNCH ( Q,D,CLK );
input D,CLK;
output Q;
endmodule

module X_STR0SP0 ( Z,A );
input A;
output Z;
endmodule

module X_STR0SP1 ( Z,A );
input A;
output Z;
endmodule

module Q_FDP6EP ( Q,CE,CK,D,R,S );
input CE,CK,D,R,S;
output Q;
endmodule

module Q_AOI211 ( Z,A0,A1,B0,C0 );
input A0,A1,B0,C0;
output Z;
endmodule

module Q_FJN0 ( Q,QN,CK,J,K );
input CK,J,K;
output Q,QN;
endmodule

module Q_FDP1XPLP ( Q,QN,CK,D,LD,R,TE,TI );
input CK,D,LD,R,TE,TI;
output Q,QN;
endmodule

module Q_NOT_TOUCH ( sig );
input sig;
endmodule

module O5 ( O,I0,I1,I2,I3,I4 );
input I0,I1,I2,I3,I4;
output O;
endmodule

module Q_OAI21 ( Z,A0,A1,B0 );
input A0,A1,B0;
output Z;
endmodule

module Q_OAI22 ( Z,A0,A1,B0,B1 );
input A0,A1,B0,B1;
output Z;
endmodule

module Q_FTN30EN ( Q,QN,CK,R,S,CE );
input CK,R,S,CE;
output Q,QN;
endmodule

module Q_SDLY_HOLD ( Q,D );
input D;
output Q;
endmodule

module Q_SUPPLY_OFF ( OE,S );
input OE;
output S;
endmodule

module Q_AED ( Q,D );
input D;
output Q;
endmodule

module Q_FTN30 ( Q,QN,CK,R,S );
input CK,R,S;
output Q,QN;
endmodule

module Q_FTN31 ( Q,QN,CK,R,S );
input CK,R,S;
output Q,QN;
endmodule

module Q_REGFORCE ( Q,A,E );
input Q,A,E;
endmodule

module Q_AOI221 ( Z,A0,A1,B0,B1,C0 );
input A0,A1,B0,B1,C0;
output Z;
endmodule

module Q_PGO08 ( Z,A0,A1,A2,A3,A4,A5,A6,A7 );
input A0,A1,A2,A3,A4,A5,A6,A7;
output Z;
endmodule

module Q_AOI222 ( Z,A0,A1,B0,B1,C0,C1 );
input A0,A1,B0,B1,C0,C1;
output Z;
endmodule

module Q_FDN0XP ( Q,QN,CK,D,TE,TI );
input CK,D,TE,TI;
output Q,QN;
endmodule

module Q_LDN0ZP ( Q,QT,D,G,OE );
input D,G,OE;
output Q,QT;
endmodule

module Q_FJP1XP ( Q,QN,CK,J,K,R,TE,TI );
input CK,J,K,R,TE,TI;
output Q,QN;
endmodule

module Q_MULTIFLOP_SYNCRESET ( Q,D,CK,CE,R,S );
input D,CK,CE,R,S;
output Q;
endmodule

module Q_OAI31 ( Z,A0,A1,A2,B0 );
input A0,A1,A2,B0;
output Z;
endmodule

module Q_OAI32 ( Z,A0,A1,A2,B0,B1 );
input A0,A1,A2,B0,B1;
output Z;
endmodule

module Q_OAI33 ( Z,A0,A1,A2,B0,B1,B2 );
input A0,A1,A2,B0,B1,B2;
output Z;
endmodule

module Q_BUFP2 ( Z0,Z1,A );
input A;
output Z0,Z1;
endmodule

module Q_BUFP4 ( Z0,Z1,Z2,Z3,A );
input A;
output Z0,Z1,Z2,Z3;
endmodule

module Q_BUFP8 ( Z0,Z1,Z2,Z3,Z4,Z5,Z6,Z7,A );
input A;
output Z0,Z1,Z2,Z3,Z4,Z5,Z6,Z7;
endmodule

module Q_MPCLKFAST ( clk );
input clk;
endmodule

module Q_WAND ( A );
input A;
endmodule

module Q_FJP0 ( Q,QN,CK,J,K );
input CK,J,K;
output Q,QN;
endmodule

module Q_FJP1 ( Q,QN,CK,J,K,R );
input CK,J,K,R;
output Q,QN;
endmodule

module Q_FJP2 ( Q,QN,CK,J,K,S );
input CK,J,K,S;
output Q,QN;
endmodule

module Q_ALU64_I ( DI63,DI62,DI61,DI60,DI59,DI58,DI57,DI56,DI55,DI54,DI53,DI52,DI51,DI50,DI49,DI48,DI47,DI46,DI45,DI44,DI43,DI42,DI41,DI40,DI39,DI38,DI37,DI36,DI35,DI34,DI33,DI32,DI31,DI30,DI29,DI28,DI27,DI26,DI25,DI24,DI23,DI22,DI21,DI20,DI19,DI18,DI17,DI16,DI15,DI14,DI13,DI12,DI11,DI10,DI9,DI8,DI7,DI6,DI5,DI4,DI3,DI2,DI1,DI0,CIN,EN,SYNC_IN,DO63,DO62,DO61,DO60,DO59,DO58,DO57,DO56,DO55,DO54,DO53,DO52,DO51,DO50,DO49,DO48,DO47,DO46,DO45,DO44,DO43,DO42,DO41,DO40,DO39,DO38,DO37,DO36,DO35,DO34,DO33,DO32,DO31,DO30,DO29,DO28,DO27,DO26,DO25,DO24,DO23,DO22,DO21,DO20,DO19,DO18,DO17,DO16,DO15,DO14,DO13,DO12,DO11,DO10,DO9,DO8,DO7,DO6,DO5,DO4,DO3,DO2,DO1,DO0,COUT,EQZ,GTZ,GEZ,SYNC_OUT );
input DI63,DI62,DI61,DI60,DI59,DI58,DI57,DI56,DI55,DI54,DI53,DI52,DI51,DI50,DI49,DI48,DI47,DI46,DI45,DI44,DI43,DI42,DI41,DI40,DI39,DI38,DI37,DI36,DI35,DI34,DI33,DI32,DI31,DI30,DI29,DI28,DI27,DI26,DI25,DI24,DI23,DI22,DI21,DI20,DI19,DI18,DI17,DI16,DI15,DI14,DI13,DI12,DI11,DI10,DI9,DI8,DI7,DI6,DI5,DI4,DI3,DI2,DI1,DI0,CIN,EN,SYNC_IN;
output DO63,DO62,DO61,DO60,DO59,DO58,DO57,DO56,DO55,DO54,DO53,DO52,DO51,DO50,DO49,DO48,DO47,DO46,DO45,DO44,DO43,DO42,DO41,DO40,DO39,DO38,DO37,DO36,DO35,DO34,DO33,DO32,DO31,DO30,DO29,DO28,DO27,DO26,DO25,DO24,DO23,DO22,DO21,DO20,DO19,DO18,DO17,DO16,DO15,DO14,DO13,DO12,DO11,DO10,DO9,DO8,DO7,DO6,DO5,DO4,DO3,DO2,DO1,DO0,COUT,EQZ,GTZ,GEZ,SYNC_OUT;
endmodule

module Q_SUPPLY_PARTIAL_ON ( OE,A31,A30,A29,A28,A27,A26,A25,A24,A23,A22,A21,A20,A19,A18,A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0,S,V31,V30,V29,V28,V27,V26,V25,V24,V23,V22,V21,V20,V19,V18,V17,V16,V15,V14,V13,V12,V11,V10,V9,V8,V7,V6,V5,V4,V3,V2,V1,V0 );
input OE,A31,A30,A29,A28,A27,A26,A25,A24,A23,A22,A21,A20,A19,A18,A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0;
output S,V31,V30,V29,V28,V27,V26,V25,V24,V23,V22,V21,V20,V19,V18,V17,V16,V15,V14,V13,V12,V11,V10,V9,V8,V7,V6,V5,V4,V3,V2,V1,V0;
endmodule

module Q_BUFC ( Z,ZN,A );
input A;
output Z,ZN;
endmodule

module Q_TBA_1X_MODE_FREQUENCY_DOUBLER ( I,O );
input I;
output O;
endmodule

module Q_FJN30 ( Q,QN,CK,J,K,R,S );
input CK,J,K,R,S;
output Q,QN;
endmodule

module Q_OAI44 ( Z,A0,A1,A2,A3,B0,B1,B2,B3 );
input A0,A1,A2,A3,B0,B1,B2,B3;
output Z;
endmodule

module Q_MJ03I ( Z,A0,A1,A2 );
input A0,A1,A2;
output Z;
endmodule

module Q_RDN ( Z );
output Z;
endmodule

module Q_COSIMCTBINIT ( Q,A );
input A;
output Q;
endmodule

module Q_XNR2 ( Z,A0,A1 );
input A0,A1;
output Z;
endmodule

module Q_XNR3 ( Z,A0,A1,A2 );
input A0,A1,A2;
output Z;
endmodule

module Q_XNR4 ( Z,A0,A1,A2,A3 );
input A0,A1,A2,A3;
output Z;
endmodule

module Q_XNR5 ( Z,A0,A1,A2,A3,A4 );
input A0,A1,A2,A3,A4;
output Z;
endmodule

module Q_MULTILATCH_ASYNCDATA_SYNCRESET ( Q,D,CK,CE,R,S );
input D,CK,CE,R,S;
output Q;
endmodule

module Q_FDP4M4 ( Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3,CK,D0,D1,D2,D3,R );
input CK,D0,D1,D2,D3,R;
output Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3;
endmodule

module Q_AOI321 ( Z,A0,B0,B1,C0,C1,C2 );
input A0,B0,B1,C0,C1,C2;
output Z;
endmodule

module Q_FDN1XP ( Q,QN,CK,D,R,TE,TI );
input CK,D,R,TE,TI;
output Q,QN;
endmodule

module Q_CCLKCHK ( sig );
input sig;
endmodule

module Q_BDOSIZPTNPG ( PAD,Z,PO,OE,PI,T );
input OE,PI,T;
output Z,PO;
inout PAD;
endmodule

module Q_CYCLECNT ( A63,A62,A61,A60,A59,A58,A57,A56,A55,A54,A53,A52,A51,A50,A49,A48,A47,A46,A45,A44,A43,A42,A41,A40,A39,A38,A37,A36,A35,A34,A33,A32,A31,A30,A29,A28,A27,A26,A25,A24,A23,A22,A21,A20,A19,A18,A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0,Z63,Z62,Z61,Z60,Z59,Z58,Z57,Z56,Z55,Z54,Z53,Z52,Z51,Z50,Z49,Z48,Z47,Z46,Z45,Z44,Z43,Z42,Z41,Z40,Z39,Z38,Z37,Z36,Z35,Z34,Z33,Z32,Z31,Z30,Z29,Z28,Z27,Z26,Z25,Z24,Z23,Z22,Z21,Z20,Z19,Z18,Z17,Z16,Z15,Z14,Z13,Z12,Z11,Z10,Z9,Z8,Z7,Z6,Z5,Z4,Z3,Z2,Z1,Z0 );
input A63,A62,A61,A60,A59,A58,A57,A56,A55,A54,A53,A52,A51,A50,A49,A48,A47,A46,A45,A44,A43,A42,A41,A40,A39,A38,A37,A36,A35,A34,A33,A32,A31,A30,A29,A28,A27,A26,A25,A24,A23,A22,A21,A20,A19,A18,A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0;
output Z63,Z62,Z61,Z60,Z59,Z58,Z57,Z56,Z55,Z54,Z53,Z52,Z51,Z50,Z49,Z48,Z47,Z46,Z45,Z44,Z43,Z42,Z41,Z40,Z39,Z38,Z37,Z36,Z35,Z34,Z33,Z32,Z31,Z30,Z29,Z28,Z27,Z26,Z25,Z24,Z23,Z22,Z21,Z20,Z19,Z18,Z17,Z16,Z15,Z14,Z13,Z12,Z11,Z10,Z9,Z8,Z7,Z6,Z5,Z4,Z3,Z2,Z1,Z0;
endmodule

module Q_LDN1ZP ( Q,QT,D,G,R,OE );
input D,G,R,OE;
output Q,QT;
endmodule

module Q_LDP0W2 ( Q,QN,D0,D1,G0,G1 );
input D0,D1,G0,G1;
output Q,QN;
endmodule

module Q_OBZNTN ( PAD,A,OE,T );
input A,OE,T;
output PAD;
endmodule

module Q_FDP0UA ( D,QTFCLK,Q );
input D,QTFCLK;
output Q;
endmodule

module Q_FAST_CLKGEN ( clk,ena );
input ena;
output clk;
endmodule

module X_STR0ST0 ( Z,A );
input A;
output Z;
endmodule

module X_STR0ST1 ( Z,A );
input A;
output Z;
endmodule

module Q_OBZNU ( PAD,A,OE );
input A,OE;
output PAD;
endmodule

module Q_AOI333 ( Z,A0,A1,A2,B0,B1,B2,C0,C1,C2 );
input A0,A1,A2,B0,B1,B2,C0,C1,C2;
output Z;
endmodule

module Q_LOOPS_ENABLE ( Q,E );
input E;
output Q;
endmodule

module Q_NEDECT ( Q,A,OE );
input A,OE;
output Q;
endmodule

module Q_LDN4V1 ( Q,QN,D,G,R,SEL );
input D,G,R,SEL;
output Q,QN;
endmodule

module Q_XOR2 ( Z,A0,A1 );
input A0,A1;
output Z;
endmodule

module Q_XOR3 ( Z,A0,A1,A2 );
input A0,A1,A2;
output Z;
endmodule

module Q_FTP30 ( Q,QN,CK,R,S );
input CK,R,S;
output Q,QN;
endmodule

module Q_XOR4 ( Z,A0,A1,A2,A3 );
input A0,A1,A2,A3;
output Z;
endmodule

module Q_FTP31 ( Q,QN,CK,R,S );
input CK,R,S;
output Q,QN;
endmodule

module Q_XOR5 ( Z,A0,A1,A2,A3,A4 );
input A0,A1,A2,A3,A4;
output Z;
endmodule

module Q_FSP61 ( Q,QN,CK,R,RY,S,SY );
input CK,R,RY,S,SY;
output Q,QN;
endmodule

module Q_UPF_COVERAGE ( CVA_INTERNAL_UPF_dummy_net );
output CVA_INTERNAL_UPF_dummy_net;
endmodule

module Q_LDN2ZP ( Q,QT,D,G,S,OE );
input D,G,S,OE;
output Q,QT;
endmodule

module Q_FDP0W2V1 ( Q,QN,CK0,D0,D1,G1M,G1S );
input CK0,D0,D1,G1M,G1S;
output Q,QN;
endmodule

module Q_OBZPD ( PAD,A,OE );
input A,OE;
output PAD;
endmodule

module Q_FCLK1P ( gClk,toggle );
input toggle;
output gClk;
endmodule

module Q_AD01 ( S,CO,A0,B0,CI );
input A0,B0,CI;
output S,CO;
endmodule

module Q_AD02 ( S0,S1,CO,A0,A1,B0,B1,CI );
input A0,A1,B0,B1,CI;
output S0,S1,CO;
endmodule

module Q_AD04 ( S0,S1,S2,S3,CO,A0,A1,A2,A3,B0,B1,B2,B3,CI );
input A0,A1,A2,A3,B0,B1,B2,B3,CI;
output S0,S1,S2,S3,CO;
endmodule

module Q_LMP0W2V1 ( QM,QNM,QNS,QS,D0,D1,GM0,GM1,GS );
input D0,D1,GM0,GM1,GS;
output QM,QNM,QNS,QS;
endmodule

module Q_INVM2 ( Z0,Z1,A0,A1 );
input A0,A1;
output Z0,Z1;
endmodule

module Q_ALU64 ( DI63,DI62,DI61,DI60,DI59,DI58,DI57,DI56,DI55,DI54,DI53,DI52,DI51,DI50,DI49,DI48,DI47,DI46,DI45,DI44,DI43,DI42,DI41,DI40,DI39,DI38,DI37,DI36,DI35,DI34,DI33,DI32,DI31,DI30,DI29,DI28,DI27,DI26,DI25,DI24,DI23,DI22,DI21,DI20,DI19,DI18,DI17,DI16,DI15,DI14,DI13,DI12,DI11,DI10,DI9,DI8,DI7,DI6,DI5,DI4,DI3,DI2,DI1,DI0,INSTR27,INSTR26,INSTR25,INSTR24,INSTR23,INSTR22,INSTR21,INSTR20,INSTR19,INSTR18,INSTR17,INSTR16,INSTR15,INSTR14,INSTR13,INSTR12,INSTR11,INSTR10,INSTR9,INSTR8,INSTR7,INSTR6,INSTR5,INSTR4,INSTR3,INSTR2,INSTR1,INSTR0,CIN,EN,SYNC_IN,DO63,DO62,DO61,DO60,DO59,DO58,DO57,DO56,DO55,DO54,DO53,DO52,DO51,DO50,DO49,DO48,DO47,DO46,DO45,DO44,DO43,DO42,DO41,DO40,DO39,DO38,DO37,DO36,DO35,DO34,DO33,DO32,DO31,DO30,DO29,DO28,DO27,DO26,DO25,DO24,DO23,DO22,DO21,DO20,DO19,DO18,DO17,DO16,DO15,DO14,DO13,DO12,DO11,DO10,DO9,DO8,DO7,DO6,DO5,DO4,DO3,DO2,DO1,DO0,COUT,EQZ,GTZ,GEZ,SYNC_OUT );
input DI63,DI62,DI61,DI60,DI59,DI58,DI57,DI56,DI55,DI54,DI53,DI52,DI51,DI50,DI49,DI48,DI47,DI46,DI45,DI44,DI43,DI42,DI41,DI40,DI39,DI38,DI37,DI36,DI35,DI34,DI33,DI32,DI31,DI30,DI29,DI28,DI27,DI26,DI25,DI24,DI23,DI22,DI21,DI20,DI19,DI18,DI17,DI16,DI15,DI14,DI13,DI12,DI11,DI10,DI9,DI8,DI7,DI6,DI5,DI4,DI3,DI2,DI1,DI0,INSTR27,INSTR26,INSTR25,INSTR24,INSTR23,INSTR22,INSTR21,INSTR20,INSTR19,INSTR18,INSTR17,INSTR16,INSTR15,INSTR14,INSTR13,INSTR12,INSTR11,INSTR10,INSTR9,INSTR8,INSTR7,INSTR6,INSTR5,INSTR4,INSTR3,INSTR2,INSTR1,INSTR0,CIN,EN,SYNC_IN;
output DO63,DO62,DO61,DO60,DO59,DO58,DO57,DO56,DO55,DO54,DO53,DO52,DO51,DO50,DO49,DO48,DO47,DO46,DO45,DO44,DO43,DO42,DO41,DO40,DO39,DO38,DO37,DO36,DO35,DO34,DO33,DO32,DO31,DO30,DO29,DO28,DO27,DO26,DO25,DO24,DO23,DO22,DO21,DO20,DO19,DO18,DO17,DO16,DO15,DO14,DO13,DO12,DO11,DO10,DO9,DO8,DO7,DO6,DO5,DO4,DO3,DO2,DO1,DO0,COUT,EQZ,GTZ,GEZ,SYNC_OUT;
endmodule

module Q_LDN0 ( Q,QN,D,G );
input D,G;
output Q,QN;
endmodule

module Q_AOAI211 ( Z,A0,A1,B0,C0 );
input A0,A1,B0,C0;
output Z;
endmodule

module Q_LDN1 ( Q,QN,D,G,R );
input D,G,R;
output Q,QN;
endmodule

module Q_OBZPU ( PAD,A,OE );
input A,OE;
output PAD;
endmodule

module Q_LDN2 ( Q,QN,G,D,S );
input G,D,S;
output Q,QN;
endmodule

module DFF_R ( Q,D,C,CE,CLR );
input D,C,CE,CLR;
output Q;
endmodule

module DFF_S ( Q,D,C,CE,PRE );
input D,C,CE,PRE;
output Q;
endmodule

module Q_LSN013Y ( Q,QN,RG,SG,G,R,S );
input RG,SG,G,R,S;
output Q,QN;
endmodule

module Q_FDP0XPW2 ( Q,QN,CK0,D0,D1,G1M,G1S,TE,TI );
input CK0,D0,D1,G1M,G1S,TE,TI;
output Q,QN;
endmodule

module Q_LMP0V1 ( Q,QN,D0M,D1S,G1S,GM0,GS0 );
input D0M,D1S,G1S,GM0,GS0;
output Q,QN;
endmodule

module Q_FJP30 ( Q,QN,CK,J,K,R,S );
input CK,J,K,R,S;
output Q,QN;
endmodule

module Q_FTP30EPV1 ( Q,QN,CO,CK,CE,R,S );
input CK,CE,R,S;
output Q,QN,CO;
endmodule

module Q_FDP0XP ( Q,QN,CK,D,TE,TI );
input CK,D,TE,TI;
output Q,QN;
endmodule

module Q_AOI444 ( Z,A0,A1,A2,A3,B0,B1,B2,B3,C0,C1,C2,C3 );
input A0,A1,A2,A3,B0,B1,B2,B3,C0,C1,C2,C3;
output Z;
endmodule

module Q_SRP0_4 ( Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3,D,CK );
input D,CK;
output Q0,Q1,Q2,Q3,QN0,QN1,QN2,QN3;
endmodule

module Q_RM1X1 ( QN,QNT,D,RD,WR,WRN );
input D,RD,WR,WRN;
output QN,QNT;
endmodule

module Q_LMP0W2 ( QM,QNM,QNS,QS,D0,D1,GM0,GM1,GS );
input D0,D1,GM0,GM1,GS;
output QM,QNM,QNS,QS;
endmodule

module Q_LDN1Y ( Q,QN,D,G,R );
input D,G,R;
output Q,QN;
endmodule

module Q_DC08IEN ( Z0,Z1,Z2,Z3,Z4,Z5,Z6,Z7,A0,A1,A2,E );
input A0,A1,A2,E;
output Z0,Z1,Z2,Z3,Z4,Z5,Z6,Z7;
endmodule

module Q_IBIPGD ( Z,PO,PAD,PI );
input PAD,PI;
output Z,PO;
endmodule

module Q_LDP0 ( Q,QN,D,G );
input D,G;
output Q,QN;
endmodule

module Q_FTP60 ( Q,QN,CK,R,S );
input CK,R,S;
output Q,QN;
endmodule

module Q_LDP1 ( Q,QN,D,G,R );
input D,G,R;
output Q,QN;
endmodule

module Q_FTP61 ( Q,QN,CK,R,S );
input CK,R,S;
output Q,QN;
endmodule

module Q_LDP2 ( Q,QN,D,G,S );
input D,G,S;
output Q,QN;
endmodule

module Q_LDP4 ( Q,QN,D,G,R );
input D,G,R;
output Q,QN;
endmodule

module Q_LDP5 ( Q,QN,D,G,S );
input D,G,S;
output Q,QN;
endmodule

module Q_AOI2X4 ( Z,A0,A1,B0,B1,C0,C1,D0,D1 );
input A0,A1,B0,B1,C0,C1,D0,D1;
output Z;
endmodule

module Q_AOI2X6 ( Z,A0,A1,B0,B1,C0,C1,D0,D1,E0,E1,F0,F1 );
input A0,A1,B0,B1,C0,C1,D0,D1,E0,E1,F0,F1;
output Z;
endmodule

module Q_AOI2X8 ( Z,A0,A1,B0,B1,C0,C1,D0,D1,E0,E1,F0,F1,G0,G1,H0,H1 );
input A0,A1,B0,B1,C0,C1,D0,D1,E0,E1,F0,F1,G0,G1,H0,H1;
output Z;
endmodule

module Q_IBIPGU ( Z,PO,PAD,PI );
input PAD,PI;
output Z,PO;
endmodule

module Q_ASSIGN_BUF ( A,B );
input B;
output A;
endmodule

module Q_LDN31 ( Q,QN,D,G,R,S );
input D,G,R,S;
output Q,QN;
endmodule

module Q_ALU ( DI31,DI30,DI29,DI28,DI27,DI26,DI25,DI24,DI23,DI22,DI21,DI20,DI19,DI18,DI17,DI16,DI15,DI14,DI13,DI12,DI11,DI10,DI9,DI8,DI7,DI6,DI5,DI4,DI3,DI2,DI1,DI0,INSTR21,INSTR20,INSTR19,INSTR18,INSTR17,INSTR16,INSTR15,INSTR14,INSTR13,INSTR12,INSTR11,INSTR10,INSTR9,INSTR8,INSTR7,INSTR6,INSTR5,INSTR4,INSTR3,INSTR2,INSTR1,INSTR0,CIN,EN,SYNC_IN,DO31,DO30,DO29,DO28,DO27,DO26,DO25,DO24,DO23,DO22,DO21,DO20,DO19,DO18,DO17,DO16,DO15,DO14,DO13,DO12,DO11,DO10,DO9,DO8,DO7,DO6,DO5,DO4,DO3,DO2,DO1,DO0,COUT,EQZ,GTZ,GEZ,SYNC_OUT );
input DI31,DI30,DI29,DI28,DI27,DI26,DI25,DI24,DI23,DI22,DI21,DI20,DI19,DI18,DI17,DI16,DI15,DI14,DI13,DI12,DI11,DI10,DI9,DI8,DI7,DI6,DI5,DI4,DI3,DI2,DI1,DI0,INSTR21,INSTR20,INSTR19,INSTR18,INSTR17,INSTR16,INSTR15,INSTR14,INSTR13,INSTR12,INSTR11,INSTR10,INSTR9,INSTR8,INSTR7,INSTR6,INSTR5,INSTR4,INSTR3,INSTR2,INSTR1,INSTR0,CIN,EN,SYNC_IN;
output DO31,DO30,DO29,DO28,DO27,DO26,DO25,DO24,DO23,DO22,DO21,DO20,DO19,DO18,DO17,DO16,DO15,DO14,DO13,DO12,DO11,DO10,DO9,DO8,DO7,DO6,DO5,DO4,DO3,DO2,DO1,DO0,COUT,EQZ,GTZ,GEZ,SYNC_OUT;
endmodule

module Q_LDP4FDMX ( Q,QN,D,G,R,TI,CK,TE );
input D,G,R,TI,CK,TE;
output Q,QN;
endmodule

module Q_REGASSIGN ( Q,A,E );
input Q,A,E;
endmodule

module Q_BPCLK ( bClk,bEnable );
input bEnable;
output bClk;
endmodule

module Q_MULTILATCH_SYNCDATA_SYNCRESET ( Q,D,CK,CE,R,S );
input D,CK,CE,R,S;
output Q;
endmodule

module Q_INVP2 ( Z0,Z1,A );
input A;
output Z0,Z1;
endmodule

module Q_INVP4 ( Z0,Z1,Z2,Z3,A );
input A;
output Z0,Z1,Z2,Z3;
endmodule

module Q_FDP1XP ( Q,QN,CK,D,R,TE,TI );
input CK,D,R,TE,TI;
output Q,QN;
endmodule

module Q_CLKSRC ( clk );
input clk;
endmodule

module Q_NR02 ( Z,A0,A1 );
input A0,A1;
output Z;
endmodule

module Q_LDN3R ( Q,QN,D,G,R,S );
input D,G,R,S;
output Q,QN;
endmodule

module Q_NR03 ( Z,A0,A1,A2 );
input A0,A1,A2;
output Z;
endmodule

module Q_LDN3S ( Q,QN,D,G,R,S );
input D,G,R,S;
output Q,QN;
endmodule

module DFF_RS ( Q,QN,C,D,R,S );
input C,D,R,S;
output Q,QN;
endmodule

module Q_NR04 ( Z,A0,A1,A2,A3 );
input A0,A1,A2,A3;
output Z;
endmodule

module Q_NR05 ( Z,A0,A1,A2,A3,A4 );
input A0,A1,A2,A3,A4;
output Z;
endmodule

module Q_FJP60 ( Q,QN,CK,J,K,R,S );
input CK,J,K,R,S;
output Q,QN;
endmodule

module DLAT_R ( Q,D,C,CLR );
input D,C,CLR;
output Q;
endmodule

module Q_NR06 ( Z,A0,A1,A2,A3,A4,A5 );
input A0,A1,A2,A3,A4,A5;
output Z;
endmodule

module Q_NR07 ( Z,A0,A1,A2,A3,A4,A5,A6 );
input A0,A1,A2,A3,A4,A5,A6;
output Z;
endmodule

module DLAT_S ( Q,D,C,PRE );
input D,C,PRE;
output Q;
endmodule

module Q_FJP61 ( Q,QN,CK,J,K,R,S );
input CK,J,K,R,S;
output Q,QN;
endmodule

module Q_RELEASE_WEAK ( Q,E );
input Q,E;
endmodule

module Q_NR08 ( Z,A0,A1,A2,A3,A4,A5,A6,A7 );
input A0,A1,A2,A3,A4,A5,A6,A7;
output Z;
endmodule

module Q_PULSE ( A,Z,S );
input A,S;
output Z;
endmodule

module Q_NR09 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8;
output Z;
endmodule

module Q_FJP30XP ( Q,QN,CK,J,K,R,S,TE,TI );
input CK,J,K,R,S,TE,TI;
output Q,QN;
endmodule

module Q_DC04I ( Z0,Z1,Z2,Z3,A0,A1 );
input A0,A1;
output Z0,Z1,Z2,Z3;
endmodule

module Q_AOI3X4 ( Z,A0,A1,A2,B0,B1,B2,C0,C1,C2,D0,D1,D2 );
input A0,A1,A2,B0,B1,B2,C0,C1,C2,D0,D1,D2;
output Z;
endmodule

module Q_MX02EN ( Z,A0,A1,S,E );
input A0,A1,S,E;
output Z;
endmodule

module Q_COSIMSYSCALL_DLY ( Q,Z,A );
input A;
output Q,Z;
endmodule

module Q_NR10 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9;
output Z;
endmodule

module Q_NR11 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10;
output Z;
endmodule

module Q_NR12 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11;
output Z;
endmodule

module Q_NR13 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12;
output Z;
endmodule

module Q_NR14 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13;
output Z;
endmodule

module Q_NR15 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14;
output Z;
endmodule

module Q_NR16 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15;
output Z;
endmodule

module Q_IBIPG ( Z,PO,PAD,PI );
input PAD,PI;
output Z,PO;
endmodule

module Q_SET_HIGH ( Q,E );
input Q,E;
endmodule

module Q_CM04EPC ( Z,ZN,A0,A1,A2,A3,B0,B1,B2,B3,E );
input A0,A1,A2,A3,B0,B1,B2,B3,E;
output Z,ZN;
endmodule

module Q_MULTILATCH_ASYNCDATA_ASYNCRESET ( Q,D,CK,CE,R,S );
input D,CK,CE,R,S;
output Q;
endmodule

module Q_FDP2XP ( Q,QN,CK,D,S,TE,TI );
input CK,D,S,TE,TI;
output Q,QN;
endmodule

module Q_FDP1ZP ( Q,QT,CK,D,OE,R );
input CK,D,OE,R;
output Q,QT;
endmodule

module Q_ODZNTN ( PAD,OE,T );
input OE,T;
output PAD;
endmodule

module Q_SHAD1N ( clk );
input clk;
endmodule

module Q_SHAD1P ( clk );
input clk;
endmodule

module Q_TIE ( Z0,Z1 );
output Z0,Z1;
endmodule

module Q_FJP0EN ( Q,QN,CK,CE,J,K );
input CK,CE,J,K;
output Q,QN;
endmodule

module Q_FDP30XP ( Q,QN,CK,D,R,S,TE,TI );
input CK,D,R,S,TE,TI;
output Q,QN;
endmodule

module Q_CLKDRV ( clk );
input clk;
endmodule

module Q_LDP1Y ( Q,QN,D,G,R );
input D,G,R;
output Q,QN;
endmodule

module Q_OSZPTN ( PAD,OE,T );
input OE,T;
output PAD;
endmodule

module Q_MX02I ( Z,A0,A1,S );
input A0,A1,S;
output Z;
endmodule

module Q_OA21 ( Z,A0,A1,B0 );
input A0,A1,B0;
output Z;
endmodule

module Q_ATBCALL ( E,S,B,W,Q,F,X,Y );
input E,S,B,X;
output W,Q,F,Y;
endmodule

module Q_OA22 ( Z,A0,A1,B0,B1 );
input A0,A1,B0,B1;
output Z;
endmodule

module Q_AOI4X4 ( Z,A0,A1,A2,A3,B0,B1,B2,B3,C0,C1,C2,C3,D0,D1,D2,D3 );
input A0,A1,A2,A3,B0,B1,B2,B3,C0,C1,C2,C3,D0,D1,D2,D3;
output Z;
endmodule

module Q_OAOI211 ( Z,A0,A1,B0,C0 );
input A0,A1,B0,C0;
output Z;
endmodule

module Q_DC04EN ( Z0,Z1,Z2,Z3,A0,A1,E );
input A0,A1,E;
output Z0,Z1,Z2,Z3;
endmodule

module Q_SHAD2N ( clk );
input clk;
endmodule

module Q_FDP1YLP ( Q,QN,CK,D,LD,R );
input CK,D,LD,R;
output Q,QN;
endmodule

module Q_SHAD2P ( clk );
input clk;
endmodule

module Q_OR02 ( Z,A0,A1 );
input A0,A1;
output Z;
endmodule

module Q_SCM_FREEZE ( E,F,Q,R );
input E,R;
output F,Q;
endmodule

module Q_PGE08 ( Z,A0,A1,A2,A3,A4,A5,A6,A7 );
input A0,A1,A2,A3,A4,A5,A6,A7;
output Z;
endmodule

module Q_LDP31 ( Q,QN,D,G,R,S );
input D,G,R,S;
output Q,QN;
endmodule

module Q_OR03 ( Z,A0,A1,A2 );
input A0,A1,A2;
output Z;
endmodule

module Q_MX02IENM4 ( Z0,Z1,Z2,Z3,A0,A1,B0,B1,C0,C1,D0,D1,S,E );
input A0,A1,B0,B1,C0,C1,D0,D1,S,E;
output Z0,Z1,Z2,Z3;
endmodule

module Q_BUFZN ( Z,A,OE );
input A,OE;
output Z;
endmodule

module Q_OR04 ( Z,A0,A1,A2,A3 );
input A0,A1,A2,A3;
output Z;
endmodule

module Q_OR05 ( Z,A0,A1,A2,A3,A4 );
input A0,A1,A2,A3,A4;
output Z;
endmodule

module Q_BUFZP ( Z,A,OE );
input A,OE;
output Z;
endmodule

module Q_OR06 ( Z,A0,A1,A2,A3,A4,A5 );
input A0,A1,A2,A3,A4,A5;
output Z;
endmodule

module Q_OR07 ( Z,A0,A1,A2,A3,A4,A5,A6 );
input A0,A1,A2,A3,A4,A5,A6;
output Z;
endmodule

module Q_OR08 ( Z,A0,A1,A2,A3,A4,A5,A6,A7 );
input A0,A1,A2,A3,A4,A5,A6,A7;
output Z;
endmodule

module Q_OR09 ( Z,A0,A1,A2,A3,A4,A5,A6,A7,A8 );
input A0,A1,A2,A3,A4,A5,A6,A7,A8;
output Z;
endmodule

module Q_DC04 ( Z0,Z1,Z2,Z3,A0,A1 );
input A0,A1;
output Z0,Z1,Z2,Z3;
endmodule

`endqtcell
