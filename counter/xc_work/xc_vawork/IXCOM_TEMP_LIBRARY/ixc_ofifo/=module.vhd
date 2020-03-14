architecture module of IXC_OFIFO is
  type DUMMY11 is array(integer range <>) of std_logic_vector(511 downto 0) ;
  type DUMMY12 is array(integer range <>) of std_logic_vector(63 downto 0) ;
  type DUMMY13 is array(integer range <>) of std_logic_vector(64 downto 0) ;
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component Q_RDN
    port(Z : out std_logic) ;
  end component ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal fclk : std_logic ;
  signal DUMMY2 : std_logic ;
  signal reset : std_logic ;
  signal DUMMY4 : std_logic ;
  signal DUMMY5 : std_logic_vector(63 downto 0) ;
  signal DUMMY7 : std_logic ;
  signal DUMMY8 : std_logic ;
  signal DUMMY6 : std_logic ;
  signal GFcbid : std_logic_vector(19 downto 0) ;
  -- quickturn external_ref GFcbid
  signal GFlen : std_logic_vector(11 downto 0) ;
  -- quickturn external_ref GFlen
  signal GFidata : std_logic_vector(511 downto 0) ;
  -- quickturn external_ref GFidata
  signal GFreq : std_logic ;
  -- quickturn external_ref GFreq
  signal GFfull : std_logic ;
  -- quickturn external_ref GFfull
  signal GFtsReq : std_logic ;
  -- quickturn external_ref GFtsReq
  signal GLBreq : std_logic ;
  -- quickturn external_ref GLBreq
  signal LBempty : std_logic ;
  signal LBfull : std_logic ;
  signal DUMMY9 : std_logic ;
  signal flushTbc : std_logic ;
  signal DUMMY3 : std_logic ;
  signal GFbusy1 : std_logic ;
  signal GFbusy2 : std_logic ;
  signal GFbusy3 : std_logic ;
  signal wclk : std_logic ;
  signal GFtsAdd : std_logic ;
  signal LBrd : std_logic_vector(3 downto 0) ;
  signal LBwr : std_logic_vector(3 downto 0) ;
  signal LBwrI : std_logic_vector(3 downto 0) ;
  signal LBfill : std_logic_vector(3 downto 0) ;
  signal argLen : std_logic_vector(11 downto 0) ;
  signal wLen : std_logic_vector(18 downto 0) ;
  signal rLen : std_logic_vector(17 downto 0) ;
  signal wSync : std_logic ;
  signal rSync : std_logic ;
  signal ixc_gfm_gFifo : DUMMY11(0 to 16383) ;
  signal xdata : std_logic_vector(543 downto 0) ;
  signal tCount : std_logic_vector(63 downto 0) ;
  signal fastPollMem : DUMMY12(0 to 1) ;
  signal DUMMY10 : std_logic ;
  signal gfifoAddr0 : std_logic_vector(13 downto 0) ;
  signal gfifoAddr0N : std_logic_vector(13 downto 0) ;
  signal gfifoAddr1 : std_logic_vector(13 downto 0) ;
  signal gfifoAddr1N : std_logic_vector(13 downto 0) ;
  signal gfifoData : std_logic_vector(1023 downto 0) ;
  signal gfifoDataN : std_logic_vector(1023 downto 0) ;
  signal writeLen : std_logic_vector(5 downto 0) ;
  signal reqD : std_logic ;
  signal GFfullD : std_logic ;
  signal gFill : std_logic_vector(5 downto 0) ;
  signal gFillN : std_logic_vector(5 downto 0) ;
  signal gfifoWptr : std_logic_vector(13 downto 0) ;
  signal gfifoWptrN : std_logic_vector(13 downto 0) ;
  signal shiftCount : std_logic_vector(8 downto 0) ;
  signal shiftedXdata : std_logic_vector(1023 downto 0) ;
  signal TsBuf : DUMMY13(0 to 7) ;
  signal gfTsVal : std_logic_vector(63 downto 0) ;
  signal gfTsLen : std_logic_vector(11 downto 0) ;
  signal gfTsReqO : std_logic ;
  signal gfTsValO : std_logic_vector(63 downto 0) ;
  signal gfTsEn : std_logic ;
  -- quickturn fast_clock fclk
  -- quickturn use_hardmacro_pack ixc_gfm_gFifo
  -- quickturn use_hardmacro_pack fastPollMem
  -- quickturn no_hardmacro TsBuf

begin
  Generate1 : for GenerateIndex in 19 downto 0 generate
    _UnNamed_Inst_17 : Q_RDN port map (GFcbid(GenerateIndex)) ;
  end generate;
  Generate2 : for GenerateIndex in 11 downto 0 generate
    _UnNamed_Inst_18 : Q_RDN port map (GFlen(GenerateIndex)) ;
  end generate;
  Generate3 : for GenerateIndex in 511 downto 0 generate
    _UnNamed_Inst_19 : Q_RDN port map (GFidata(GenerateIndex)) ;
  end generate;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
