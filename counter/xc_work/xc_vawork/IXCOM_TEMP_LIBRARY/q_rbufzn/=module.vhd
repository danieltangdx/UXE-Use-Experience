architecture module of Q_RBUFZN is
  component X_STR0WE1
    port (
      Z : out std_logic ;
    A : in std_logic := 'X' ) ;
  end component ;

  component X_STR0WE0
    port (
      Z : out std_logic ;
    A : in std_logic := 'X' ) ;
  end component ;

  component Q_BUFZN
    port (
      Z : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

  signal strn_1 : std_logic ;

begin
  strnp_2 : X_STR0WE1
    port map (
       Z
      ,strn_1
    ) ;
  strnp_1 : X_STR0WE0
    port map (
       Z
      ,strn_1
    ) ;
  i0 : Q_BUFZN
    port map (
       OE => OE
      ,A => A
      ,Z => strn_1
    ) ;
end module;
