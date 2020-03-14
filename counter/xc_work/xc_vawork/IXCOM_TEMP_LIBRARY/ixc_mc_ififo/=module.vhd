architecture module of IXC_MC_IFIFO is
  type DUMMY4 is array(integer range <>) of std_logic_vector(255 downto 0) ;
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal fclk : std_logic ;
  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic ;
  signal ackClk : std_logic ;
  signal ackClkN : std_logic ;
  signal ackLen : std_logic_vector(17 downto 0) ;
  signal DUMMY5 : std_logic_vector(15 downto 0) ;
  -- quickturn external_ref DUMMY5
  signal iData : std_logic_vector(511 downto 0) ;
  -- quickturn external_ref iData
  signal ixc_gfm_aFifo : DUMMY4(0 to 32767) ;
  signal ixc_gfm_bFifo : DUMMY4(0 to 32767) ;
  signal wptr : std_logic_vector(16 downto 0) ;
  signal wptrN : std_logic_vector(16 downto 0) ;
  signal xptr : std_logic_vector(16 downto 0) ;
  signal xptrN : std_logic_vector(16 downto 0) ;
  signal afifoXdata : std_logic_vector(255 downto 0) ;
  signal afifoXdataFinal : std_logic_vector(255 downto 0) ;
  signal rptr : std_logic_vector(16 downto 0) ;
  signal rptrN : std_logic_vector(16 downto 0) ;
  signal afifoRaddr0 : std_logic_vector(14 downto 0) ;
  signal afifoRaddr1 : std_logic_vector(14 downto 0) ;
  signal afifoRaddr2 : std_logic_vector(14 downto 0) ;
  signal afifoRdata : std_logic_vector(767 downto 0) ;
  signal rdDelta : std_logic_vector(17 downto 0) ;
  signal afifoRdCnt : std_logic_vector(63 downto 0) ;
  signal markBits : std_logic_vector(3 downto 0) ;
  signal markBitsN : std_logic_vector(3 downto 0) ;
  signal newMarkBits : std_logic_vector(3 downto 0) ;
  signal newMarkBitsD : std_logic_vector(3 downto 0) ;
  signal dataBits : std_logic_vector(3 downto 0) ;
  signal offset : std_logic_vector(23 downto 0) ;
  signal offsetN : std_logic_vector(23 downto 0) ;
  signal moveForward : std_logic ;
  signal moveForwardN : std_logic ;
  signal active : std_logic ;
  signal activeD : std_logic ;
  signal xval : std_logic_vector(63 downto 0) ;
  signal nps : std_logic ;
  signal eob : std_logic ;
  signal SFIFOLock : std_logic ;
  signal i : integer ;
  signal head : std_logic_vector(63 downto 0) ;
  signal xhead : std_logic_vector(63 downto 0) ;
  signal vhead : std_logic_vector(63 downto 0) ;
  signal pktl : std_logic_vector(15 downto 0) ;
  signal pktlN : std_logic_vector(15 downto 0) ;
  signal DUMMY6 : std_logic_vector(15 downto 0) ;
  signal vlenN : std_logic_vector(15 downto 0) ;
  signal rstDone : std_logic ;
  signal rstDoneD : std_logic ;
  signal rstDoneD2 : std_logic ;
  signal rstDoneD3 : std_logic ;
  signal rstDoneD4 : std_logic ;
  signal DUMMY7 : std_logic_vector(11 downto 0) ;
  signal odlyN : std_logic_vector(11 downto 0) ;
  signal vmode : std_logic ;
  signal tmpData : std_logic_vector(575 downto 0) ;
  signal oSt : std_logic ;
  signal oMark : std_logic_vector(63 downto 0) ;
  signal oData : std_logic_vector(511 downto 0) ;
  -- quickturn external_ref oData
  signal oDataD : std_logic_vector(511 downto 0) ;
  signal oDataD2 : std_logic_vector(511 downto 0) ;
  signal oDataEn : std_logic ;
  -- quickturn external_ref oDataEn
  signal oDataEnD : std_logic ;
  signal oDataEnD2 : std_logic ;
  signal oDataLen : std_logic_vector(3 downto 0) ;
  -- quickturn external_ref oDataLen
  signal oDataLenD : std_logic_vector(3 downto 0) ;
  signal oDataLenD2 : std_logic_vector(3 downto 0) ;
  signal bfifoData : std_logic_vector(767 downto 0) ;
  signal bFill : std_logic_vector(3 downto 0) ;
  signal bfifoAddr0 : std_logic_vector(14 downto 0) ;
  signal bfifoAddr1 : std_logic_vector(15 downto 0) ;
  signal bfifoAddr2 : std_logic_vector(15 downto 0) ;
  signal bfifoWptr : std_logic_vector(14 downto 0) ;
  signal shiftCount : std_logic_vector(7 downto 0) ;
  signal shiftedOData : std_logic_vector(767 downto 0) ;
  -- quickturn fast_clock fclk
  -- quickturn use_hardmacro_pack ixc_gfm_aFifo
  -- quickturn use_hardmacro_pack ixc_gfm_bFifo

begin
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
