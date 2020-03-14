architecture module of ixc_mem_call_direct is
  type DUMMY0 is array(integer range <>) of std_logic_vector(S2HMEMW1 downto
   0+integer'PRED(1)) ;
  type DUMMY1 is array(integer range <>) of std_logic_vector(H2SMEMW1 downto
   0+integer'PRED(1)) ;
  component ixc_osf1_evcap
    port (
      pvec : in std_logic := 'X' ;
    pvecEv : out std_logic ) ;
  end component ;

  component ixc_osf_evcap
    port (
      pvec : in std_logic := 'X' ;
    pvecEv : out std_logic ) ;
  end component ;

  component Q_CCLKCHK
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal callEvent : std_logic ;
  signal _zys2hmem : DUMMY0(0 to conv_integer((ext(S2HMDEP,$QKTN_MAX
  (S2HDW'length,32)) - integer_to_std(1,$QKTN_MAX(S2HDW'length,32)))
  )+integer'PRED(1)) ;
  signal _zyh2smem : DUMMY1(0 to conv_integer(((ext(H2SMDEP,$QKTN_MAX
  (H2SDW'length,32)) + integer_to_std(NEEDLTID,$QKTN_MAX(H2SDW'length,32))) -
   integer_to_std(1,$QKTN_MAX(H2SDW'length,32))))+integer'PRED(1)) ;
  -- quickturn use_hardmacro_pack _zys2hmem
  -- quickturn use_hardmacro_pack _zyh2smem

begin
  Generate1 : if genblk1 : ((ISSVA)/=0) generate
  begin
    osfevcap : ixc_osf1_evcap
      port map (
         h2s_notify
        ,to_osf
      ) ;
  else DUMMY2 : generate
  begin
    osfevcap : ixc_osf_evcap
      port map (
         h2s_notify
        ,to_osf
      ) ;
  end generate ;
  s2h_notify <= from_isf ;
  Generate2 : if genblk2 : (ext(H2SDW,$QKTN_MAX(H2SDW'length,32)) >
   integer_to_std(0,$QKTN_MAX(H2SDW'length,32))) generate
  begin

    process --:o1687
    (*)
      variable i : integer := 0 ;
    begin
      for i in 0 to integer'PRED(conv_integer(H2SNBLK1)) loop --:o1688
        _zyh2smem(i) <= ext(h2s_data((i * H2SMEMW)+(H2SMEMW-1) downto (i *
         H2SMEMW)),abs(H2SMEMW1)+1) ;
      end loop;
      _zyh2smem(conv_integer(H2SNBLK1)) <= ext(h2s_data(conv_integer(H2SDW1)
       downto conv_integer((ext(ext(H2SNBLK1,$QKTN_MAX(H2SDW'length,32)) *
       integer_to_std(H2SMEMW,$QKTN_MAX(H2SDW'length,32)),$QKTN_MAX
      (H2SDW'length,32))))+integer'PRED(1)),abs(H2SMEMW1)+1) ;
    end process ;
  end generate ;
  Generate3 : if genblk3 : (NEEDLTID > 0) generate
  begin

    process --:o1698
    (*)
    begin
      _zyh2smem(conv_integer(H2SMDEP)) <= ext(std_logic_vector'((ext
      (maid,$QKTN_MAX(abs(conv_integer(MAIDW1))+1,16)) or ext
      ("0000000000000000",$QKTN_MAX(abs(conv_integer(MAIDW1))+1,16))) & (ext
      (ltid,$QKTN_MAX(abs(conv_integer(LTIDW1))+1,16)) or ext
      ("0000000000000000",$QKTN_MAX(abs(conv_integer(LTIDW1))+1,16)))),abs
      (H2SMEMW1)+1) ;
    end process ;
  end generate ;
  Generate4 : if genblk4 : (ext(S2HDW,$QKTN_MAX(S2HDW'length,32)) >
   integer_to_std(0,$QKTN_MAX(S2HDW'length,32))) generate
  begin

    process --:o1707
    (*)
      variable i : integer := 0 ;
    begin
      for i in 0 to integer'PRED(conv_integer(S2HNBLK1)) loop --:o1708
        s2h_data((i * S2HMEMW)+(S2HMEMW-1) downto (i * S2HMEMW)) <= ext
        (_zys2hmem(i),(S2HMEMW)) ;
      end loop;
      s2h_data(conv_integer(S2HDW1) downto conv_integer((ext(ext
      (S2HNBLK1,$QKTN_MAX(S2HDW'length,32)) * integer_to_std(S2HMEMW,$QKTN_MAX
      (S2HDW'length,32)),$QKTN_MAX(S2HDW'length,32))))+integer'PRED(1)) <= ext
      (_zys2hmem(conv_integer(S2HNBLK1)),abs((conv_integer(S2HDW1))-
      (conv_integer((ext(ext(S2HNBLK1,$QKTN_MAX(S2HDW'length,32)) *
       integer_to_std(S2HMEMW,$QKTN_MAX(S2HDW'length,32)),$QKTN_MAX
      (S2HDW'length,32))))))+1) ;
    end process ;
  end generate ;
  cchk : Q_CCLKCHK
    port map (
       h2s_notify
    ) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
