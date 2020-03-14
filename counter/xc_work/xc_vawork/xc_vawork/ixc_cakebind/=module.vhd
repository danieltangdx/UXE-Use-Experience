architecture module of ixc_cakebind is
  component Q_CLKSRC
    port (
    clk : in std_logic := 'X' ) ;
  end component ;


begin
  Generate1 : if genblk1 : (WIDTH = 1) generate
    signal DUMMY1 :  std_logic ;
  begin
    s : Q_CLKSRC
      port map (
         DUMMY1
      ) ;
    DUMMY1 <= it_conv_std_logic(L) ;
  end generate ;
end module;
