architecture module of ixc_time is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  signal eClk : std_logic ;
  signal nextTbTime : std_logic_vector(63 downto 0) ;
  -- quickturn external_ref nextTbTime
  signal nextClkTime : std_logic_vector(63 downto 0) ;
  signal nextClkTimePO : std_logic_vector(63 downto 0) ;
  signal nextDutTime : std_logic_vector(63 downto 0) ;
  -- quickturn external_ref nextDutTime
  signal nextTime : std_logic_vector(63 downto 0) ;
  signal ScMinT : std_logic_vector(4 downto 0) ;
  signal delta : std_logic_vector(4 downto 0) ;
  signal minT : std_logic_vector(4 downto 0) ;
  signal deltaTb : std_logic_vector(4 downto 0) ;
  signal noScale : std_logic ;
  signal VCC : std_logic ;
  signal TbEQClk : std_logic ;
  signal TbLTClk : std_logic ;
  signal stopEcm : std_logic ;
  -- quickturn external_ref stopEcm
  signal runClk : std_logic ;
  signal simTime_dummy : std_logic_vector(63 downto 0) ;
  -- quickturn external_ref simTime_dummy
  signal lastClkTime : std_logic_vector(63 downto 0) ;
  signal zminT : std_logic ;

begin
end module;
