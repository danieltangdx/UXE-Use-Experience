architecture module of IXC_GFIFO is
  component IXC_OFIFO
    port (
      ackClk : in std_logic := 'X' ;
    ackLen : in std_logic_vector(17 downto 0) := (others => 'X') ) ;
  end component ;

  component IXC_IFIFO
    port (
      ackClkX : out std_logic ;
    ackLenX : out std_logic_vector(17 downto 0) ) ;
  end component ;

  component IXC_OSF
  end component ;

  component IXC_ISF
  end component ;

  component IXC_OSF1
  end component ;

  component IXC_MC_GSFIFO
  end component ;

  signal ackClk : std_logic ;
  signal ackLen : std_logic_vector(17 downto 0) ;

begin
  O : IXC_OFIFO
    port map (
       ackClk
      ,ackLen
    ) ;
  I : IXC_IFIFO
    port map (
       ackClk
      ,ackLen
    ) ;
  OSF : IXC_OSF
     ;
  ISF : IXC_ISF
     ;
  OSF1 : IXC_OSF1
     ;
  MC_GSF1 : IXC_MC_GSFIFO
     ;
end module;
