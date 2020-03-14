architecture module of ixc_osf_evcap is
  component Q_EVDECT
    port (
      Q : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal callEvent : std_logic ;

begin
  p : Q_EVDECT
    port map (
       callEvent
      ,pvec
      ,std_logic'('1')
    ) ;
  DUMMY1 <= '1' when (callEvent)='1' else 'Z' ;

  process --:o1247
  (*)
  begin
    if (((DUMMY0)='1' or (callEvent)='1')) then
      pvecEv <= callEvent ;
    end if;
  end process ;
end module;
