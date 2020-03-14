architecture module of ixc_edge is
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

  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  -- quickturn fast_clock fclk

begin
  Generate1 : if genblk1 : ((ASYNC)/=0) generate
    signal _zzsr : std_logic := '0' ;
  begin

    process --:o390
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        if (DUMMY0 = '1') then
          _zzsr <= s ;
        end if;
      end if ;
    end process ;
    ev <= (DUMMY0 and boolean_to_std(((DIR = 0 and ((s)='1' and (not(_zzsr))='1'
    )) or (DIR = 1 and ((not(s))='1' and (_zzsr)='1')) or (DIR = 2 and ((s xor
     _zzsr)='1'))))) ;
  else DUMMY1 : generate
  begin
    Generate2 : if genblk1 : (DIR = 0) generate
    begin
      dect : Q_PEDECT
        port map (
           ev
          ,s
          ,std_logic'('1')
        ) ;
    elsif DUMMY2 : (DIR = 1) generate
    begin
      dect : Q_NEDECT
        port map (
           ev
          ,s
          ,std_logic'('1')
        ) ;
    elsif DUMMY3 : (DIR = 2) generate
    begin
      dect : Q_EVDECT
        port map (
           ev
          ,s
          ,std_logic'('1')
        ) ;
    end generate ;
  end generate ;
end module;
