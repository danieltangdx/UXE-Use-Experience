architecture module of ixc_call_clk is
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic ;
  signal fclk : std_logic ;
  signal clkinS : std_logic ;
  signal h2sC : std_logic ;
  signal s2hC : std_logic ;
  signal s2hCS : std_logic ;
  signal h2sR : std_logic_vector((N - 1) downto 0+integer'PRED(1)) ;
  signal s2hR : std_logic_vector((N - 1) downto 0+integer'PRED(1)) ;
  signal active : std_logic ;
  signal notify : std_logic ;
  signal active2 : std_logic ;
  signal activeR : std_logic ;
  signal active2R : std_logic ;
  signal notifyR : std_logic ;
  signal st : std_logic ;
  signal clkinSR : std_logic ;
  -- quickturn keep_net active
  -- quickturn keep_net notify
  -- quickturn fast_clock fclk

begin
  clkinS <= clkin when DUMMY3 = '1' else clkinSR ;
  h2sC <= or_reduce((h2sR xor h2s_notify)) ;
  s2hC <= or_reduce((s2hR xor s2h_notify)) ;
  s2hCS <= ((s2hC or st) and DUMMY1) ;

  process --:o1906
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      clkinSR <= clkinS ;
    end if ;
  end process ;
  clkout <= clkinS when (active2R)='1' else notifyR ;

  process --:o1910
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      h2sR <= h2s_notify ;
      s2hR <= s2h_notify ;
    end if ;
  end process ;

  process --:o1917
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (s2hC = '1') then
        st <= '1' ;
      end if;
      if (((DUMMY1)='1' or (DUMMY0)='1')) then
        st <= '0' ;
      end if;
      notifyR <= notify ;
      active2R <= activeR ;
      activeR <= active ;
    end if ;
  end process ;
  DUMMY2 <= '1' when ((s2hC)='1' or (st)='1') else 'Z' ;

  process --:o1931
  (*)
  begin
    if (s2hCS = '1') then
      notify <= not(it_conv_std_logic(EDGE)) ;
      active <= '1' ;
    elsif (h2sC = '1') then
      notify <= it_conv_std_logic(EDGE) ;
      active <= '0' ;
    end if;
  end process ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
