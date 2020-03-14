architecture module of IXC_MC_GSFIFO is
  component IXC_MC_OFIFO
    port (
      ackClk : in std_logic := 'X' ;
    ackLen : in std_logic_vector(17 downto 0) := (others => 'X') ) ;
  end component ;

  component IXC_MC_IFIFO
    port (
      ackClkX : out std_logic ;
    ackLenX : out std_logic_vector(17 downto 0) ) ;
  end component ;

  signal ackClk : std_logic ;
  signal ackLen : std_logic_vector(17 downto 0) ;

begin
  O : IXC_MC_OFIFO
    port map (
       ackClk
      ,ackLen
    ) ;
  I : IXC_MC_IFIFO
    port map (
       ackClk
      ,ackLen
    ) ;
end module;
