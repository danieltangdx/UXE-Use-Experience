architecture module of ixc_context_write is
  type DUMMY3 is array(integer range <>) of std_logic_vector((MEMWIDTH - 1)
   downto 0+integer'PRED(1)) ;
  component ixc_rforce
    generic (
      W : std_logic_vector := signed(integer_to_std(1,32))
    ) ;
    port (
      L : in std_logic_vector(conv_integer((ext(W,$QKTN_MAX(W'length,32)) -
       integer_to_std(1,$QKTN_MAX(W'length,32)))) downto 0+integer'PRED(1)) := 
      (others => 'X') ;
      V : in std_logic_vector(conv_integer((ext(W,$QKTN_MAX(W'length,32)) -
       integer_to_std(1,$QKTN_MAX(W'length,32)))) downto 0+integer'PRED(1)) := 
      (others => 'X') ;
    en : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal fclk : std_logic ;
  signal writePending : std_logic ;
  signal _zymem : DUMMY3(0 to conv_integer((ext(MEMDEPTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32))))+integer'PRED(1)) ;
  signal wdataD : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)))) downto 0+integer'PRED(1)) ;
  signal header : std_logic_vector(conv_integer((ext(NVEC,$QKTN_MAX
  (NVEC'length,32)) - integer_to_std(1,$QKTN_MAX(NVEC'length,32)))) downto
   0+integer'PRED(1)) ;
  signal headerP : std_logic_vector(conv_integer((ext(NVEC,$QKTN_MAX
  (NVEC'length,32)) - integer_to_std(1,$QKTN_MAX(NVEC'length,32)))) downto
   0+integer'PRED(1)) ;
  signal DUMMY4 : std_logic_vector(conv_integer((ext((ext(WIDTH,$QKTN_MAX
  (DWIDTH'length,NVEC'length)) - ext(NVEC,$QKTN_MAX(DWIDTH'length,NVEC'length))
  ),$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)) - integer_to_std
  (1,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)))) downto 0+integer'PRED
  (1)) ;
  signal DUMMY5 : std_logic_vector(conv_integer((ext((ext(WIDTH,$QKTN_MAX
  (DWIDTH'length,NVEC'length)) - ext(NVEC,$QKTN_MAX(DWIDTH'length,NVEC'length))
  ),$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)) - integer_to_std
  (1,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)))) downto 0+integer'PRED
  (1)) ;
  signal DUMMY6 :  std_logic ;
  -- quickturn use_hardmacro_pack _zymem
  -- quickturn fast_clock fclk

begin
  genblk1 : for i in 0 to conv_integer((ext(MEMDEPTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)))) - 1 generate
  begin

    process --:o1992
    (*)
    begin
      wdataD((((i + 1) * MEMWIDTH) - 1) downto (i * MEMWIDTH)+integer'PRED(1))
       <= ext(_zymem(i),abs(((((i + 1) * MEMWIDTH) - 1))-((i * MEMWIDTH)))+1) ;
    end process ;
  end generate ;
  Generate1 : if genblk2 : ((ext(ext(MEMDEPTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) * integer_to_std(MEMWIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)),$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length
  ),32))) > ext(WIDTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)))
   generate
  begin

    process --:o1998
    (*)
    begin
      wdataD(conv_integer((ext(WIDTH,$QKTN_MAX($QKTN_MAX
      (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
      (DWIDTH'length,NVEC'length),32)))) downto conv_integer((ext((ext
      (MEMDEPTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)) -
       integer_to_std(1,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32))) *
       integer_to_std(MEMWIDTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32
      )),$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32))))+integer'PRED(1))
       <= ext(_zymem(conv_integer((ext(MEMDEPTH,$QKTN_MAX($QKTN_MAX
      (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
      (DWIDTH'length,NVEC'length),32))))),abs((conv_integer((ext(WIDTH,$QKTN_MAX
      ($QKTN_MAX(DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX
      ($QKTN_MAX(DWIDTH'length,NVEC'length),32)))))-(conv_integer((ext((ext
      (MEMDEPTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)) -
       integer_to_std(1,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32))) *
       integer_to_std(MEMWIDTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32
      )),$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32))))))+1) ;
    end process ;
  else DUMMY7 : generate
  begin

    process --:o2003
    (*)
    begin
      wdataD(conv_integer(((ext(ext(MEMDEPTH,$QKTN_MAX($QKTN_MAX
      (DWIDTH'length,NVEC'length),32)) * integer_to_std(MEMWIDTH,$QKTN_MAX
      ($QKTN_MAX(DWIDTH'length,NVEC'length),32)),$QKTN_MAX($QKTN_MAX
      (DWIDTH'length,NVEC'length),32))) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
      (DWIDTH'length,NVEC'length),32)))) downto conv_integer((ext((ext
      (MEMDEPTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)) -
       integer_to_std(1,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32))) *
       integer_to_std(MEMWIDTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32
      )),$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32))))+integer'PRED(1))
       <= ext(_zymem(conv_integer((ext(MEMDEPTH,$QKTN_MAX($QKTN_MAX
      (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
      (DWIDTH'length,NVEC'length),32))))),abs((conv_integer(((ext(ext
      (MEMDEPTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)) *
       integer_to_std(MEMWIDTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32
      )),$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32))) - integer_to_std
      (1,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)))))-(conv_integer(
      (ext((ext(MEMDEPTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)) -
       integer_to_std(1,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32))) *
       integer_to_std(MEMWIDTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32
      )),$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32))))))+1) ;
    end process ;
  end generate ;

  process --:o2011
  (*)
  begin
    if ((DUMMY2 = '0')) then
      header <= ext(wdataD(conv_integer((ext(NVEC,$QKTN_MAX(NVEC'length,32)) -
       integer_to_std(1,$QKTN_MAX(NVEC'length,32)))) downto 0+integer'PRED(1)
      ),abs(conv_integer((ext(NVEC,$QKTN_MAX(NVEC'length,32)) - integer_to_std
      (1,$QKTN_MAX(NVEC'length,32)))))+1) ;
    end if;
  end process ;
  writePending <= boolean_to_std(header /= headerP) ;

  process --:o2018
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (((writePending)='1' and ((DUMMY0)='1' or (DUMMY1)='1'))) then
        headerP <= header ;
      end if;
    end if ;
  end process ;
  _zzfrcD : ixc_rforce
    generic map((ext(WIDTH,$QKTN_MAX(DWIDTH'length,NVEC'length)) - ext
    (NVEC,$QKTN_MAX(DWIDTH'length,NVEC'length))))
    port map (
       DUMMY4
      ,DUMMY5
      ,DUMMY6
    ) ;
  DUMMY4 <= ext(wdata,abs(conv_integer((ext((ext(WIDTH,$QKTN_MAX
  (DWIDTH'length,NVEC'length)) - ext(NVEC,$QKTN_MAX(DWIDTH'length,NVEC'length))
  ),$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)) - integer_to_std
  (1,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)))))+1) ;
  DUMMY5 <= ext(wdataD(conv_integer((ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)))) downto conv_integer(NVEC)+integer'PRED(1)
  ),abs(conv_integer((ext((ext(WIDTH,$QKTN_MAX(DWIDTH'length,NVEC'length)) - ext
  (NVEC,$QKTN_MAX(DWIDTH'length,NVEC'length))),$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)))))+1) ;
  DUMMY6 <= (writePending and (DUMMY0 or DUMMY1)) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
