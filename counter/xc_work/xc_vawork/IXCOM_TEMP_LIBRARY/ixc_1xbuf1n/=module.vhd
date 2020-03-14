architecture module of ixc_1xbuf1n is
  component Q_MPCLK1N
    port (
    clk : in std_logic := 'X' ) ;
  end component ;

  component Q_CLKDRV
    port (
    clk : in std_logic := 'X' ) ;
  end component ;

  component Q_CLKSRC
    port (
    clk : in std_logic := 'X' ) ;
  end component ;

  component buf
    port(Z : out std_logic ; A : in std_logic) ;
  end component ;

begin
  i0 : buf port map (cout,cin) ;
  m : Q_MPCLK1N
    port map (
       cout
    ) ;
  c : Q_CLKDRV
    port map (
       cout
    ) ;
  s : Q_CLKSRC
    port map (
       cout
    ) ;
end module;
