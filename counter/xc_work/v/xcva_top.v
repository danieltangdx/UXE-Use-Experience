module xcva_top;
 xc_top #(0) xc_top();
 ASSERTION ASSERTION();
endmodule

module ASSERTION;
wire FAILURE;
// quickturn keep_net FAILURE 
assign FAILURE = xc_top.stop2;
endmodule

