architecture module of xc_top is
  type DUMMY0 is array(integer range <>) of std_logic_vector(31 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0+integer'PRED(1)) ;
    R : in std_logic_vector((W - 1) downto 0+integer'PRED(1)) := (others => 'X')
     ) ;
  end component ;

  component Q_RBUFZN
    port (
      Z : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

  component Q_RBUFZP
    port (
      Z : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

  component buf
    port(Z : out std_logic ; A : in std_logic) ;
  end component ;
  component Q_RDN
    port(Z : out std_logic) ;
  end component ;
  signal fclk : std_logic ;
  signal _ET3_COMPILER_RESERVED_NAME_DUTPI_APPLY_ : std_logic ;
  signal _ET3_COMPILER_RESERVED_NAME_LBRKER_ON_ : std_logic ;
  signal callEmuPI : std_logic ;
  signal evalStepPI : std_logic_vector(63 downto 0) ;
  signal ckgHoldPI : std_logic ;
  signal tbcHoldPI : std_logic ;
  signal noOutputPI : std_logic ;
  signal stopEmuPI : std_logic ;
  signal oneStepPI : std_logic ;
  signal stop1 : std_logic ;
  -- quickturn external_ref stop1
  signal stop2 : std_logic ;
  -- quickturn external_ref stop2
  signal stop4 : std_logic ;
  -- quickturn external_ref stop4
  signal asyncCall : std_logic ;
  -- quickturn external_ref asyncCall
  signal isfWait : std_logic ;
  -- quickturn external_ref isfWait
  signal osfWait : std_logic ;
  -- quickturn external_ref osfWait
  signal sdlStop : std_logic ;
  signal cpfStop : std_logic ;
  signal eClk : std_logic ;
  -- quickturn external_ref eClk
  signal rClk : std_logic ;
  signal bWait : std_logic ;
  signal poBusy : std_logic ;
  signal APPLY_PI : std_logic ;
  signal lbrOnAll : std_logic ;
  signal eClkv : std_logic ;
  signal intr : std_logic ;
  signal _zz_xmr0 : std_logic ;
  signal memWriteCmd : std_logic ;
  signal dummyW : std_logic ;
  signal _ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_ : std_logic ;
  signal _ET3_COMPILER_RESERVED_NAME_DBI_APPLY_ : std_logic ;
  signal hotSwapOnPI : std_logic ;
  -- quickturn external_ref hotSwapOnPI
  signal sendPO : std_logic ;
  signal tbcPO : std_logic ;
  signal stop1PO : std_logic ;
  signal stop2PO : std_logic ;
  signal stop4PO : std_logic ;
  signal stop3PO : std_logic ;
  signal it_newBufPO : std_logic ;
  signal stopSDLPO : std_logic ;
  signal stopEmuPO : std_logic ;
  signal stopCPFPO : std_logic ;
  signal remStepPO : std_logic_vector(63 downto 0) ;
  signal stop3 : std_logic ;
  signal stopSDL : std_logic ;
  signal sdlEnable : std_logic ;
  signal sdlHaltHwClk : std_logic ;
  signal hwClkDbg : std_logic ;
  signal hwClkDbgTime : std_logic ;
  signal hwClkEnable : std_logic ;
  signal hssReset : std_logic ;
  signal tbcEnable : std_logic ;
  signal fclkPerEval : std_logic_vector(7 downto 0) ;
  signal evalOn : std_logic ;
  signal evalOnOrig : std_logic ;
  -- quickturn external_ref evalOnOrig
  signal callEmuR : std_logic ;
  signal eClkR : std_logic ;
  signal callEmu : std_logic ;
  -- quickturn external_ref callEmu
  signal callEmuD : std_logic ;
  signal eCount : std_logic_vector(63 downto 0) ;
  signal evfCount : std_logic_vector(63 downto 0) ;
  signal evalOnDExt : std_logic_vector(7 downto 0) ;
  signal evalOnDCtl : std_logic_vector(7 downto 0) ;
  signal gfifoOff : std_logic ;
  signal simTime : std_logic_vector(63 downto 0) ;
  signal applyPiR : std_logic ;
  signal dbiEvent : std_logic ;
  signal FvUseOnly : std_logic ;
  signal FvUseOnlyR : std_logic ;
  signal eventOn : std_logic ;
  -- quickturn external_ref eventOn
  signal mpSampleOv : std_logic ;
  -- quickturn external_ref mpSampleOv
  signal poDelay : std_logic_vector(7 downto 0) ;
  signal lbrOn : std_logic ;
  signal lbrOnD : std_logic ;
  signal _zzcmds : DUMMY0(0 to 15) ;
  signal _zzmemWriteCmd : std_logic ;
  signal dummyR : std_logic ;
  -- quickturn fast_clock fclk
  -- quickturn use_hardmacro_pack _zzcmds

begin
  poBusy <= boolean_to_std(ext(poDelay,32) /= "00000000000000000000000000000000"
  ) ;
  lbrOnAll <= (lbrOn or hotSwapOnPI) ;
  eClkv <= eClkR when ckgHoldPI = '1' else not(eClkR) ;
  intr <= not(((callEmu or dbiEvent) or poBusy)) ;
  memWriteCmd <= _zzcmds(0)(0) ;
  _UnNamed_Inst_0 : Q_RDN port map (stop1) ;
  _UnNamed_Inst_1 : Q_RDN port map (stop2) ;
  _UnNamed_Inst_2 : Q_RDN port map (stop4) ;
  _UnNamed_Inst_3 : Q_RDN port map (asyncCall) ;
  _UnNamed_Inst_4 : Q_RDN port map (isfWait) ;
  _UnNamed_Inst_5 : Q_RDN port map (osfWait) ;
  _UnNamed_Inst_6 : Q_RDN port map (bWait) ;

  process --:o123
  (*)
  begin
    if (callEmu = '1') then
      simTime <= evalStepPI ;
    end if;
  end process ;

  process --:o127
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      callEmuR <= callEmuPI ;
      fclkPerEval <= fclkPerEval ;
      sdlEnable <= sdlEnable ;
      tbcEnable <= tbcEnable ;
      evalOnDCtl <= evalOnDCtl ;
      hotSwapOnPI <= hotSwapOnPI ;
      sdlHaltHwClk <= sdlHaltHwClk ;
      hwClkDbg <= hwClkDbg ;
      hwClkDbgTime <= hwClkDbgTime ;
      hwClkEnable <= hwClkEnable ;
      gfifoOff <= gfifoOff ;
      hssReset <= hssReset ;
    end if ;
  end process ;
  _UnNamed_Inst_7 : buf port map 
  (APPLY_PI,_ET3_COMPILER_RESERVED_NAME_DBI_APPLY_) ;
  _ET3_COMPILER_RESERVED_NAME_DUTPI_APPLY_ <= std_logic'('1') ;
  _UnNamed_Inst_9 : buf port map 
  (_ET3_COMPILER_RESERVED_NAME_LBRKER_ON_,lbrOnAll) ;

  process --:o164
  (fclk)
    variable poDelay_DUMMY0 : std_logic_vector(7 downto 0) ;
  begin
    if (fclk'event and fclk = '1') then
      lbrOnD <= lbrOn ;
      if (callEmu = '1') then
        poDelay_DUMMY0 := fclkPerEval ;
      else
        poDelay_DUMMY0 := ext(it_cond_op((poBusy)='1',(ext(poDelay_DUMMY0,32) -
         "00000000000000000000000000000001"),integer_to_std(0,32)),8) ;
      end if;
    end if ;
    poDelay <= transport poDelay_DUMMY0;
  end process ;

  process --:o172
  (fclk)
    variable evalOnDExt_DUMMY1 : std_logic_vector(7 downto 0) ;
  begin
    if (fclk'event and fclk = '1') then
      applyPiR <= APPLY_PI ;
      FvUseOnlyR <= FvUseOnly ;
      callEmuD <= (callEmu or poBusy) ;
      if (callEmu = '1') then
        evalOnDExt_DUMMY1 := evalOnDCtl ;
      elsif (ext(evalOnDExt_DUMMY1,32) /= "00000000000000000000000000000000")
       then
        evalOnDExt_DUMMY1 := ext((ext(evalOnDExt_DUMMY1,32) -
         "00000000000000000000000000000001"),8) ;
      end if;
    end if ;
    evalOnDExt <= transport evalOnDExt_DUMMY1;
  end process ;

  process --:o184
  (*)
    variable callEmu_DUMMY2 : std_logic ;
    variable dbiEvent_DUMMY3 : std_logic ;
    variable evalOnOrig_DUMMY4 : std_logic ;
    variable lbrOn_DUMMY5 : std_logic ;
    variable stopSDLPO_DUMMY6 : std_logic ;
    variable stopCPFPO_DUMMY7 : std_logic ;
  begin
    callEmu_DUMMY2 := callEmu;
    dbiEvent_DUMMY3 := dbiEvent;
    evalOnOrig_DUMMY4 := evalOnOrig;
    lbrOn_DUMMY5 := lbrOn;
    stopSDLPO_DUMMY6 := stopSDLPO;
    stopCPFPO_DUMMY7 := stopCPFPO;
    callEmu_DUMMY2 := ((callEmuR xor callEmuPI) and not(hotSwapOnPI)) ;
    dbiEvent_DUMMY3 := ((not(applyPiR) and APPLY_PI) and not(hotSwapOnPI)) ;
    evalOnOrig_DUMMY4 := (((callEmu_DUMMY2 or dbiEvent_DUMMY3) or callEmuD) or
     bWait) ;
    lbrOn_DUMMY5 := ((evalOnOrig_DUMMY4 or boolean_to_std(ext(evalOnDExt,32) /=
     "00000000000000000000000000000000")) or asyncCall) ;
    evalOn <= (lbrOn_DUMMY5 or lbrOnD) ;
    eventOn <= (callEmu_DUMMY2 or hotSwapOnPI) ;
    mpSampleOv <= (callEmu_DUMMY2 or hotSwapOnPI) ;
    FvUseOnly <= (dbiEvent_DUMMY3 and not(callEmu_DUMMY2)) ;
    sendPO <= callEmuPI ;
    if (callEmu_DUMMY2 = '1') then
      stop1PO <= (stop1 and tbcEnable) ;
      stop2PO <= (stop2 and tbcEnable) ;
      stop4PO <= (stop4 and tbcEnable) ;
      stopSDLPO_DUMMY6 := (sdlEnable and sdlStop) ;
      stopCPFPO_DUMMY7 := cpfStop ;
      stop3PO <= (((stopEmuPI or stopSDLPO_DUMMY6) or stopCPFPO_DUMMY7) or
       it_newBufPO) ;
    end if;
    stopEmuPO <= stopEmuPI ;
    remStepPO <= eCount ;
    it_newBufPO <= '0' ;
    tbcPO <= boolean_to_std(ext(poDelay,32) <=
     "00000000000000000000000000000001") ;
    callEmu <= transport callEmu_DUMMY2;
    dbiEvent <= dbiEvent_DUMMY3;
    evalOnOrig <= evalOnOrig_DUMMY4;
    lbrOn <= lbrOn_DUMMY5;
    stopSDLPO <= stopSDLPO_DUMMY6;
    stopCPFPO <= stopCPFPO_DUMMY7;
  end process ;

  process --:o211
  (**) -- always_comb
  begin
    $axis_pulse( rClk, callEmuPI);
  end process ;

  process --:o215
  (rClk)
  begin
    if (rClk'event and rClk = '1') then
      eClkR <= eClkv ;
      eCount <= (eCount +
       "0000000000000000000000000000000000000000000000000000000000000001") ;
    end if ;
  end process ;

  process --:o220
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (((callEmu)='1' or (poBusy)='1')) then
        evfCount <= (evfCount +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      end if;
    end if ;
  end process ;

  process --:o225
  (**) -- always_comb
  begin
    $axis_pulse( eClk, eClkv);
  end process ;
  intrBuf : ixc_assign
    port map (
       _ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_
      ,intr
    ) ;

  process --:o237
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      _zzmemWriteCmd <= memWriteCmd ;
    end if ;
  end process ;
  asyncCall <= '1' when ((_zzmemWriteCmd xor memWriteCmd)='1') else 'Z' ;
  dum1 : Q_RBUFZN
    port map (
       dummyW
      ,std_logic'('1')
      ,std_logic'('0')
    ) ;
  dum2 : Q_RBUFZP
    port map (
       dummyW
      ,std_logic'('1')
      ,std_logic'('0')
    ) ;

  process --:o248
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      dummyR <= dummyW ;
    end if ;
  end process ;
end module;
