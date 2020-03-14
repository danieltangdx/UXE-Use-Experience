architecture module of ixc_mpulse is
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
    p <= ev ;
  end generate ;
end module;
