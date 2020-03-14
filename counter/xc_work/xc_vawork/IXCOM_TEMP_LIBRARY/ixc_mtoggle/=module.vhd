architecture module of ixc_mtoggle is
  component Q_EVDECT
    port (
      Q : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

  component Q_LPULSE
    port (
      A : in std_logic := 'X' ;
      Z : out std_logic ;
    S : in std_logic := 'X' ) ;
  end component ;

  signal ev : std_logic ;
  signal clk : std_logic ;
  signal oe : std_logic ;
  signal tg : std_logic ;

begin
  genblk1 : for i in 0 to conv_integer(WIDTH) - 1 generate
  begin
    dect : Q_EVDECT
      port map (
         ev
        ,v(i)
        ,std_logic'('1')
      ) ;
  end generate ;
  Generate1 : if genblk2 : ((PULSE)/=0) generate
  begin
    p1 : Q_LPULSE
      port map (
         Z => p
        ,A => ev
      ) ;
  else DUMMY0 : generate
  begin
    p1 : Q_LPULSE
      port map (
         Z => clk
        ,A => ev
      ) ;

    process --:o513
    (clk)
    begin
      if (clk'event and clk = '1') then
        tg <= not(tg) ;
      end if ;
    end process ;
    p <= tg ;
  end generate ;
end module;
