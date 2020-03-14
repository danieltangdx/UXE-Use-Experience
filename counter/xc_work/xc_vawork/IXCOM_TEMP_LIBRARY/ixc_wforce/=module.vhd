architecture module of ixc_wforce is
  component Q_WIREFORCE
    port (
      Q : in std_logic := 'X' ;
      A : in std_logic := 'X' ;
    E : in std_logic := 'X' ) ;
  end component ;

  component Q_RELEASE_WEAK
    port (
      Q : in std_logic := 'X' ;
    E : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal fen : std_logic ;
  signal ren : std_logic ;
  signal _zzenr : std_logic ;
  signal DUMMY0 : std_logic ;
  -- quickturn fast_clock fclk

begin
  fen <= (not(_zzenr) and en) ;
  ren <= (_zzenr and not(en)) ;

  process --:o574
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY0 = '1') then
        _zzenr <= not(en) ;
      else
        _zzenr <= en ;
      end if;
    end if ;
  end process ;
  genblk1 : for i in 0 to conv_integer(W) - 1 generate
  begin
    wfrc : Q_WIREFORCE
      port map (
         Q => L(i)
        ,A => V(i)
        ,E => fen
      ) ;
    wrel : Q_RELEASE_WEAK
      port map (
         Q => L(i)
        ,E => ren
      ) ;
  end generate ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
