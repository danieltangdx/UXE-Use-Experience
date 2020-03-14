architecture module of ixc_mevent is
  component Q_PEDECT
    port (
      Q : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

  component Q_NEDECT
    port (
      Q : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

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

  signal lev : std_logic ;

begin
  genblk1 : for i in 0 to conv_integer(WIDTH) - 1 generate
  begin
    Generate1 : if genblk1 : ((IS_EDGED(i))='1') generate
    begin
      Generate2 : if genblk1 : ((POLARITY(i))='1') generate
      begin
        i0 : Q_PEDECT
          port map (
             lev
            ,clks(i)
            ,std_logic'('1')
          ) ;
      else DUMMY0 : generate
      begin
        i0 : Q_NEDECT
          port map (
             lev
            ,clks(i)
            ,std_logic'('1')
          ) ;
      end generate ;
    else DUMMY1 : generate
    begin
      i0 : Q_EVDECT
        port map (
           lev
          ,clks(i)
          ,std_logic'('1')
        ) ;
    end generate ;
  end generate ;
  Generate3 : if genblk2 : (PULSE = 2) generate
  begin
    ev <= lev ;
  elsif DUMMY2 : (PULSE = 1) generate
  begin
    p0 : Q_LPULSE
      port map (
         Z => ev
        ,A => lev
      ) ;
  else DUMMY3 : generate
    signal clk : std_logic ;
    signal tg : std_logic ;
  begin
    p0 : Q_LPULSE
      port map (
         Z => clk
        ,A => lev
      ) ;

    process --:o2064
    (clk)
    begin
      if (clk'event and clk = '1') then
        tg <= not(tg) ;
      end if ;
    end process ;
    ev <= tg ;
  end generate ;
end module;
