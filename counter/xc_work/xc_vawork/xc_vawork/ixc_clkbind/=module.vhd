architecture module of ixc_clkbind is
  component Q_CLKDRV
    port (
    clk : in std_logic := 'X' ) ;
  end component ;

  component buf
    port(Z : out std_logic ; A : in std_logic) ;
  end component ;
  signal DUMMY0 : std_logic_vector((WIDTH - 1) downto 0+integer'PRED(1)) ;
  signal DUMMY1 : std_logic_vector((WIDTH - 1) downto 0+integer'PRED(1)) ;
  signal DUMMY2 : std_logic_vector((WIDTH - 1) downto 0+integer'PRED(1)) ;

begin
  L <= ext(DUMMY0,abs((WIDTH - 1))+1) ;
  DUMMY1 <= ext(R,abs((WIDTH - 1))+1) ;
  Generate1 : for GenerateIndex in (WIDTH - 1) downto 0+integer'PRED(1) generate
    b : buf port map (DUMMY0(GenerateIndex),DUMMY1(GenerateIndex)) ;
  end generate ;
  Generate2 : for GenerateIndex in (WIDTH - 1) downto 0+integer'PRED(1) generate
  d : Q_CLKDRV
    port map (
       DUMMY2(GenerateIndex)
    ) ;
  end generate;
  DUMMY2 <= ext(L,abs((WIDTH - 1))+1) ;
end module;
