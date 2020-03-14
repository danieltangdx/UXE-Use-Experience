architecture module of ixc_expEv is
  component Q_EVDECT
    port (
      Q : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

  signal callEvent : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;

begin
  genblk1 : for i in 0 to conv_integer(w) - 1 generate
  begin
    p : Q_EVDECT
      port map (
         callEvent
        ,s(i)
        ,std_logic'('1')
      ) ;
  end generate ;
  DUMMY0 <= '1' when (callEvent)='1' else 'Z' ;

  process --:o336
  (*)
  begin
    if (((DUMMY1)='1' or (callEvent)='1')) then
      so <= callEvent ;
    end if;
  end process ;
end module;
