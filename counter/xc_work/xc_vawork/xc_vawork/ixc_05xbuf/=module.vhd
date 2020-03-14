architecture module of ixc_05xbuf is
  component Q_FCLK1P
    port (
      gClk : out std_logic ;
    toggle : in std_logic := 'X' ) ;
  end component ;

  component Q_UCCLK
    port (
    clk : in std_logic := 'X' ) ;
  end component ;


begin
  m : Q_FCLK1P
    port map (
       cout
      ,cin
    ) ;
  mu : Q_UCCLK
    port map (
       cout
    ) ;
end module;
