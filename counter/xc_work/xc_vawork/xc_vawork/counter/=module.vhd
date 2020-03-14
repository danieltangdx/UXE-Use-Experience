architecture module of counter is
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0+integer'PRED(1)) ;
    R : in std_logic_vector((W - 1) downto 0+integer'PRED(1)) := (others => 'X')
     ) ;
  end component ;

  signal DUMMY1 : std_logic_vector(31 downto 0) := std_logic_vector'
  ("00000000000000000000000000000000") ;
  -- quickturn keep_net DUMMY1

begin
  _zz_strnp_1 : ixc_assign
    generic map(32)
    port map (
       DUMMY0
      ,DUMMY1
    ) ;

  process --:o15
  (clk)
  begin
    if (clk'event and clk = '1') then
      DUMMY1 <= (DUMMY1 + std_logic_vector'("00000000000000000000000000000001"))
       ;
    end if ;
  end process ;
end module;
