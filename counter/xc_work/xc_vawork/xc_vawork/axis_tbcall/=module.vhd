architecture module of axis_tbcall is
  component Q_EVDECT
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

  component Q_LDP0
    port (
      Q : out std_logic ;
      QN : out std_logic ;
      D : in std_logic := 'X' ;
    G : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal callEvent : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal xen : std_logic ;
  signal DUMMY3 : std_logic ;

begin
  xen <= (DUMMY3 or callEvent) ;
  Generate1 : if genblk1 : ((anyEdge)/=0) generate
  begin
    p : Q_EVDECT
      port map (
         callEvent
        ,pui
        ,std_logic'('1')
      ) ;
  else DUMMY4 : generate
  begin
    p : Q_PEDECT
      port map (
         callEvent
        ,s
        ,std_logic'('1')
      ) ;
  end generate ;
  DUMMY0 <= '1' when ((callEvent)='1' and level = 0) else 'Z' ;
  DUMMY1 <= '1' when ((callEvent)='1' and level = 1) else 'Z' ;
  DUMMY2 <= '1' when ((callEvent)='1' and level = 2) else 'Z' ;
  soV : Q_LDP0
    port map (
       so
      ,open
      ,callEvent
      ,xen
    ) ;
  soC : Q_NOT_TOUCH
    port map (
       so
    ) ;
end module;
