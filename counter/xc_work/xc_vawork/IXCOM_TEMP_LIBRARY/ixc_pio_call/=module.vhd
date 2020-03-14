architecture module of ixc_pio_call is
  component ixc_osf1_evcap
    port (
      pvec : in std_logic := 'X' ;
    pvecEv : out std_logic ) ;
  end component ;

  component ixc_osf_evcap
    port (
      pvec : in std_logic := 'X' ;
    pvecEv : out std_logic ) ;
  end component ;

  component Q_CCLKCHK
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal callEvent : std_logic ;

begin
  Generate1 : if genblk1 : ((ISSVA)/=0) generate
  begin
    osfevcap : ixc_osf1_evcap
      port map (
         h2s_notify
        ,to_osf
      ) ;
  else DUMMY0 : generate
  begin
    osfevcap : ixc_osf_evcap
      port map (
         h2s_notify
        ,to_osf
      ) ;
  end generate ;
  s2h_notify <= from_isf ;
  cchk : Q_CCLKCHK
    port map (
       h2s_notify
    ) ;
end module;
