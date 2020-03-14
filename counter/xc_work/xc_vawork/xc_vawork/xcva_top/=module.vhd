architecture module of xcva_top is
  component counter_tb
  end component ;

  component IXC_GFIFO
    -- quickturn verilog_black_box
  end component ;

  component ixc_time
    -- quickturn verilog_black_box
  end component ;

  component _ixc_isc
  end component ;

  component xc_top
    generic (
      IXC_TIME : integer := 0
    ) ;
  end component ;

  component ASSERTION
  end component ;


begin
  DUMMY0 : counter_tb
     ;
  DUMMY1 : IXC_GFIFO
     ;
  DUMMY2 : ixc_time
     ;
  DUMMY3 : _ixc_isc
     ;
  DUMMY4 : xc_top
    generic map(0)
     ;
  DUMMY5 : ASSERTION
     ;
end module;
