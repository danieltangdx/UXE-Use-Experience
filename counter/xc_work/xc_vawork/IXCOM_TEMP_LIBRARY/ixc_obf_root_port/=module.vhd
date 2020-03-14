architecture module of ixc_obf_root_port is
  component Q_RDN
    port(Z : out std_logic) ;
  end component ;
  signal fclk : std_logic ;
  signal DUMMY0 : std_logic_vector(19 downto 0) ;
  signal DUMMY1 : std_logic_vector(11 downto 0) ;
  signal DUMMY2 : std_logic_vector((512 - 1) downto 0) ;
  signal DUMMY3 : std_logic ;
  signal LGFcbid : std_logic_vector(19 downto 0) ;
  -- quickturn external_ref LGFcbid
  signal LGFlen : std_logic_vector(11 downto 0) ;
  -- quickturn external_ref LGFlen
  signal LGFidata : std_logic_vector((512 - 1) downto 0) ;
  -- quickturn external_ref LGFidata
  signal Rtkin : std_logic ;
  -- quickturn external_ref Rtkin
  signal LGFreqD : std_logic ;
  signal LGFcbidD : std_logic_vector(19 downto 0) ;
  signal LGFlenD : std_logic_vector(11 downto 0) ;
  signal LGFidataD : std_logic_vector((512 - 1) downto 0) ;
  signal en : std_logic ;
  signal DUMMY4 : std_logic ;
  -- quickturn fast_clock fclk

begin
  Generate1 : for GenerateIndex in 19 downto 0 generate
    _UnNamed_Inst_11 : Q_RDN port map (DUMMY0(GenerateIndex)) ;
  end generate;
  Generate2 : for GenerateIndex in 11 downto 0 generate
    _UnNamed_Inst_12 : Q_RDN port map (DUMMY1(GenerateIndex)) ;
  end generate;
  Generate3 : for GenerateIndex in (512 - 1) downto 0 generate
    _UnNamed_Inst_13 : Q_RDN port map (DUMMY2(GenerateIndex)) ;
  end generate;
  Generate4 : for GenerateIndex in 19 downto 0 generate
    _UnNamed_Inst_14 : Q_RDN port map (LGFcbid(GenerateIndex)) ;
  end generate;
  Generate5 : for GenerateIndex in 11 downto 0 generate
    _UnNamed_Inst_15 : Q_RDN port map (LGFlen(GenerateIndex)) ;
  end generate;
  Generate6 : for GenerateIndex in (512 - 1) downto 0 generate
    _UnNamed_Inst_16 : Q_RDN port map (LGFidata(GenerateIndex)) ;
  end generate;
  Rtkin <= (tkin or boolean_to_std(((LGFreq)='1' and (not(LGFreqD))='1'))) ;

  process --:o694
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      LGFreqD <= LGFreq ;
      LGFcbidD <= LGFcbid ;
      LGFlenD <= LGFlen ;
      LGFidataD <= LGFidata ;
    end if ;
  end process ;
  tkout <= LGFreqD ;

  process --:o704
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY3 = '1') then
        en <= '0' ;
      elsif (((tkout)='1' and (not(tkin))='1')) then
        en <= '1' ;
      else
        en <= '0' ;
      end if;
      DUMMY4 <= en ;
    end if ;
  end process ;
  DUMMY2 <= std_logic_vector'
  ("ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ"
  ) when ((en)='1' and (not(DUMMY4))='1') else LGFidataD when (en)='1' else
   std_logic_vector'
  ("ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ"
  ) ;
  DUMMY1 <= "000000000000" when ((en)='1' and (not(DUMMY4))='1') else LGFlenD
   when (en)='1' else std_logic_vector'("ZZZZZZZZZZZZ") ;
  DUMMY0 <= "11111111111111111101" when ((en)='1' and (not(DUMMY4))='1') else
   LGFcbidD when (en)='1' else std_logic_vector'("ZZZZZZZZZZZZZZZZZZZZ") ;
end module;
