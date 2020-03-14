architecture module of ixc_mevClk is
  component Q_NEDECT
    port (
      Q : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

  component Q_PEDECT
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

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component buf
    port(Z : out std_logic ; A : in std_logic) ;
  end component ;
  signal evs : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
   0+integer'PRED(1)) ;
  signal evOn : std_logic ;
  signal bEvOn : std_logic ;
  signal lbrOn : std_logic ;
  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal bwOnD : std_logic ;
  signal ensD : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
   0+integer'PRED(1)) ;
  -- quickturn fast_clock fclk

begin
  genblk1 : for i in 0 to conv_integer(WIDTH) - 1 generate
  begin
    Generate1 : if genblk1 : ((IS_EDGED(i))='1') generate
    begin
      Generate2 : if genblk1 : ((POLARITY(i))='1') generate
      begin
        i0 : Q_NEDECT
          port map (
             evs(i)
            ,clks(i)
            ,std_logic'('1')
          ) ;
      else DUMMY3 : generate
      begin
        i0 : Q_PEDECT
          port map (
             evs(i)
            ,clks(i)
            ,std_logic'('1')
          ) ;
      end generate ;
    else DUMMY4 : generate
    begin
      Generate3 : if genblk1 : ((POLARITY(i))='1') generate
      begin
        i0 : buf port map (evs(i),clks(i)) ;
      else DUMMY5 : generate
      begin
        i0 : Q_EVDECT
          port map (
             evs(i)
            ,clks(i)
            ,std_logic'('1')
          ) ;
      end generate ;
    end generate ;
  end generate ;

  process --:o2114
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      ensD <= ens ;
    end if ;
  end process ;
  evOn <= or_reduce(((evs and ensD) and not(DS))) ;
  bEvOn <= or_reduce(((evs and ensD) and DS)) ;
  bwOn <= it_conv_std_logic(ext(bEvOn,DUMMY1'length) or (ext
  (DUMMY1,DUMMY1'length) and ext(DUMMY2,DUMMY1'length))) ;
  Generate4 : if genblk2 : (((DS)/="0" or (DUMMY1)/="0")) generate
  begin

    process --:o2124
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        bwOnD <= bwOn ;
      end if ;
    end process ;
    DUMMY0 <= '1' when (bwOn)='1' else 'Z' ;
    clkOn <= ((evOn and not(bEvOn)) or bwOnD) ;
  else DUMMY6 : generate
  begin
    clkOn <= evOn ;
  end generate ;
  p0 : Q_LPULSE
    port map (
       Z => xclk
      ,A => clkOn
    ) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
