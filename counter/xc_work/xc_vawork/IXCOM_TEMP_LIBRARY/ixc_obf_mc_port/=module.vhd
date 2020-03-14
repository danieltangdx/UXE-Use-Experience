architecture module of ixc_obf_mc_port is
  type DUMMY1 is array(integer range <>) of std_logic_vector(conv_integer((ext
  (BW,$QKTN_MAX(DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32))))
   downto 0+integer'PRED(1)) ;
  component Q_CCLKCHK
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal LBrd : std_logic_vector((LBADW - 1) downto 0+integer'PRED(1)) ;
  signal LBwr : std_logic_vector((LBADW - 1) downto 0+integer'PRED(1)) ;
  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal enq : std_logic ;
  signal en : std_logic ;
  signal ack : std_logic ;
  signal odata : std_logic_vector(conv_integer((ext(DW,$QKTN_MAX(DW'length,32))
   - integer_to_std(1,$QKTN_MAX(DW'length,32)))) downto 0+integer'PRED(1)) ;
  signal oreq : std_logic ;
  signal ocbid : std_logic_vector(19 downto 0) ;
  signal xcbid : std_logic_vector(19 downto 0) ;
  signal olen : std_logic_vector(11 downto 0) ;
  signal xlen : std_logic_vector(11 downto 0) ;
  signal sel : std_logic_vector(conv_integer(SEL1) downto 0+integer'PRED(1)) ;
  signal xdata : std_logic_vector(conv_integer((ext(XW,$QKTN_MAX(32,DW'length))
   - integer_to_std(1,$QKTN_MAX(32,DW'length)))) downto 0+integer'PRED(1)) ;
  signal _zzLB : DUMMY1(0 to conv_integer((ext(BUFL,$QKTN_MAX(BUFL'length,32)) -
   integer_to_std(1,$QKTN_MAX(BUFL'length,32))))+integer'PRED(1)) ;
  signal i : integer ;
  signal ireqR : std_logic ;
  -- quickturn fast_clock fclk
  -- quickturn no_hardmacro _zzLB

begin
  LBrd <= ext(CLBrd,abs((LBADW - 1))+1) ;
  LBwr <= ext(CLBwr,abs((LBADW - 1))+1) ;
  enq <= ((ireq xor ireqR) and not(DUMMY0)) ;
  cchk : Q_CCLKCHK
    port map (
       ireq
    ) ;
  tkout <= boolean_to_std(oreq /= ack) ;
  CGFcbid <= xcbid when (en)='1' else std_logic_vector'("ZZZZZZZZZZZZZZZZZZZZ")
   ;
  CGFlen <= xlen when (en)='1' else std_logic_vector'("ZZZZZZZZZZZZ") ;
  CGFidata(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
  (1,$QKTN_MAX(32,DW'length)))) downto 0) <= ext(xdata,abs(conv_integer((ext
  (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1)
   when (en)='1' else ext(it_multiple_concat(std_logic'('Z'),conv_integer(XW)
  ),abs(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
  (1,$QKTN_MAX(32,DW'length)))))+1) ;

  process --:o821
  (*)
    variable xdata_DUMMY0 : std_logic_vector(conv_integer((ext(XW,$QKTN_MAX
    (32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length)))) downto
     0+integer'PRED(1)) ;
  begin
    xdata_DUMMY0 := xdata;
    if (ext(DW,$QKTN_MAX(DW'length,32)) <= integer_to_std(512,$QKTN_MAX
    (DW'length,32))) then
      xdata_DUMMY0 := ext(odata,abs(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)
      ) - integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1) ;
    else
      xdata_DUMMY0 := ext
      ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",abs
      (conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
      (1,$QKTN_MAX(32,DW'length)))))+1) ;
      for i in 0 to integer'PRED(conv_integer(SEL1)) loop --:o826
        xdata_DUMMY0 := ext(ext(ext(xdata_DUMMY0,$QKTN_MAX(abs(conv_integer((ext
        (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length))
        )))+1,512)) or it_cond_op((sel(i))='1',ext(odata((i * 512)+(512-1)
         downto (i * 512)),$QKTN_MAX(abs(conv_integer((ext(XW,$QKTN_MAX
        (32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1,512)
        ),ext
        ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",$QKTN_MAX
        (abs(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
        (1,$QKTN_MAX(32,DW'length)))))+1,512))),abs(conv_integer((ext
        (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length))
        )))+1),abs(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) -
         integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1) ;
      end loop;
      xdata_DUMMY0 := ext(ext(ext(xdata_DUMMY0,$QKTN_MAX(abs(conv_integer((ext
      (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length))))
      )+1,$QKTN_MAX(abs((conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) -
       integer_to_std(1,$QKTN_MAX(DW'length,32)))))-(conv_integer((ext(ext
      (SEL1,$QKTN_MAX(DW'length,32)) * integer_to_std(512,$QKTN_MAX(DW'length,32
      )),$QKTN_MAX(DW'length,32))))))+1,512))) or it_cond_op((sel(conv_integer
      (SEL1)))='1',ext(odata(conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) -
       integer_to_std(1,$QKTN_MAX(DW'length,32)))) downto conv_integer((ext(ext
      (SEL1,$QKTN_MAX(DW'length,32)) * integer_to_std(512,$QKTN_MAX(DW'length,32
      )),$QKTN_MAX(DW'length,32))))+integer'PRED(1)),$QKTN_MAX(abs(conv_integer(
      (ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length
      )))))+1,$QKTN_MAX(abs((conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) -
       integer_to_std(1,$QKTN_MAX(DW'length,32)))))-(conv_integer((ext(ext
      (SEL1,$QKTN_MAX(DW'length,32)) * integer_to_std(512,$QKTN_MAX(DW'length,32
      )),$QKTN_MAX(DW'length,32))))))+1,512))),ext
      ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",$QKTN_MAX
      (abs(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
      (1,$QKTN_MAX(32,DW'length)))))+1,$QKTN_MAX(abs((conv_integer((ext
      (DW,$QKTN_MAX(DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32))))
      )-(conv_integer((ext(ext(SEL1,$QKTN_MAX(DW'length,32)) * integer_to_std
      (512,$QKTN_MAX(DW'length,32)),$QKTN_MAX(DW'length,32))))))+1,512)))),abs
      (conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
      (1,$QKTN_MAX(32,DW'length)))))+1),abs(conv_integer((ext(XW,$QKTN_MAX
      (32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1) ;
    end if;
    xdata <= transport xdata_DUMMY0;
  end process ;
  Generate1 : if genblk1 : (ext(DW,$QKTN_MAX(DW'length,32)) <= integer_to_std
  (512,$QKTN_MAX(DW'length,32))) generate
  begin

    process --:o834
    (*)
    begin
      xcbid <= ocbid ;
      xlen <= olen ;
    end process ;

    process --:o838
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        if (DUMMY0 = '1') then
          ack <= ireq ;
          en <= '0' ;
        elsif ((((tkout)='1' and (not(tkin))='1') and (not(CGFfull))='1')) then
          en <= '1' ;
          ack <= oreq ;
        else
          en <= '0' ;
        end if;
      end if ;
    end process ;
  else DUMMY2 : generate
  begin

    process --:o852
      variable xlen_DUMMY1 : std_logic_vector(11 downto 0) ;
      variable sel_DUMMY2 : std_logic_vector(conv_integer(SEL1) downto
       0+integer'PRED(1)) ;
    begin
      wait until (fclk'event and fclk = '1') ;
      if (DUMMY0 = '1') then
        ack <= ireq ;
        en <= '0' ;
      elsif ((((tkout)='1' and (not(tkin))='1') and (not(CGFfull))='1')) then
        xlen_DUMMY1 := olen ;
        xcbid <= ocbid ;
        sel_DUMMY2 := ext("1",abs(conv_integer(SEL1))+1) ;
        en <= '1' ;
        while( ext(xlen_DUMMY1,32) > "00000000000000000000000000010000" ) loop
         --:o862
          wait until (fclk'event and fclk = '1') ;
          if (not(CGFfull) = '1') then
            xlen_DUMMY1 := ext((ext(xlen_DUMMY1,32) -
             "00000000000000000000000000010000"),12) ;
            sel_DUMMY2 := shl(sel_DUMMY2,integer_to_std(1,32)) ;
            xcbid <= "11111111111111111111" ;
          end if;
        end loop;
        ack <= oreq ;
      else
        en <= '0' ;
      end if;
      xlen <= transport xlen_DUMMY1;
      sel <= sel_DUMMY2;
    end process ;
  end generate ;

  process --:o879
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if ((CLBfull = '0')) then
        ireqR <= ireq ;
      end if;
    end if ;
  end process ;
  CGLBreq <= '1' when (enq)='1' else 'Z' ;
  CGFtsReq <= '1' when ((ext(enq,USETIME'length) and ext(USETIME,USETIME'length)
  )/="0") else 'Z' ;
  Generate2 : if genblk2 : (SHARE = 0) generate
  begin

    process --:o888
    (*)
      variable _zzLB_DUMMY3 : DUMMY1(0 to conv_integer((ext(BUFL,$QKTN_MAX
      (BUFL'length,32)) - integer_to_std(1,$QKTN_MAX(BUFL'length,32)))
      )+integer'PRED(1)) ;
      constant DUMMY3 : integer := abs(conv_integer((ext(DW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1 ;
      variable DUMMY4 : std_logic_vector(1 to DUMMY3+1) ;
    begin
      _zzLB_DUMMY3 := _zzLB;
      _zzLB_DUMMY3(conv_integer(LBwr)) := ext(std_logic_vector'(ireq & idata
      ),abs(conv_integer((ext(BW,$QKTN_MAX(DW'length,32)) - integer_to_std
      (1,$QKTN_MAX(DW'length,32)))))+1) ;
      DUMMY4 := ext(_zzLB_DUMMY3(conv_integer(LBrd)),abs(conv_integer((ext
      (DW,$QKTN_MAX(DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32))))
      )+2) ;
      odata <= DUMMY4(2 to DUMMY3+1) ;
      oreq <= DUMMY4(1) ;
      ocbid <= cbid ;
      olen <= len ;
      _zzLB <= transport _zzLB_DUMMY3;
    end process ;
  elsif DUMMY5 : (SHARE = 1) generate
  begin

    process --:o895
    (*)
      variable _zzLB_DUMMY4 : DUMMY1(0 to conv_integer((ext(BUFL,$QKTN_MAX
      (BUFL'length,32)) - integer_to_std(1,$QKTN_MAX(BUFL'length,32)))
      )+integer'PRED(1)) ;
      constant DUMMY6 : integer := abs(conv_integer((ext(DW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1 ;
      variable DUMMY7 : std_logic_vector(1 to DUMMY6+13) ;
    begin
      _zzLB_DUMMY4 := _zzLB;
      _zzLB_DUMMY4(conv_integer(LBwr)) := ext(std_logic_vector'(ireq & idata &
       len),abs(conv_integer((ext(BW,$QKTN_MAX(DW'length,32)) - integer_to_std
      (1,$QKTN_MAX(DW'length,32)))))+1) ;
      DUMMY7 := ext(_zzLB_DUMMY4(conv_integer(LBrd)),abs(conv_integer((ext
      (DW,$QKTN_MAX(DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32))))
      )+14) ;
      olen <= DUMMY7(DUMMY6+2 to DUMMY6+13) ;
      odata <= DUMMY7(2 to DUMMY6+1) ;
      oreq <= DUMMY7(1) ;
      ocbid <= cbid ;
      _zzLB <= transport _zzLB_DUMMY4;
    end process ;
  elsif DUMMY8 : (SHARE = 2) generate
  begin

    process --:o901
    (*)
      variable _zzLB_DUMMY5 : DUMMY1(0 to conv_integer((ext(BUFL,$QKTN_MAX
      (BUFL'length,32)) - integer_to_std(1,$QKTN_MAX(BUFL'length,32)))
      )+integer'PRED(1)) ;
      constant DUMMY9 : integer := abs(conv_integer((ext(DW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1 ;
      variable DUMMY10 : std_logic_vector(1 to DUMMY9+21) ;
    begin
      _zzLB_DUMMY5 := _zzLB;
      _zzLB_DUMMY5(conv_integer(LBwr)) := ext(std_logic_vector'(ireq & idata &
       cbid),abs(conv_integer((ext(BW,$QKTN_MAX(DW'length,32)) - integer_to_std
      (1,$QKTN_MAX(DW'length,32)))))+1) ;
      DUMMY10 := ext(_zzLB_DUMMY5(conv_integer(LBrd)),abs(conv_integer((ext
      (DW,$QKTN_MAX(DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32))))
      )+22) ;
      ocbid <= DUMMY10(DUMMY9+2 to DUMMY9+21) ;
      odata <= DUMMY10(2 to DUMMY9+1) ;
      oreq <= DUMMY10(1) ;
      olen <= len ;
      _zzLB <= transport _zzLB_DUMMY5;
    end process ;
  else DUMMY11 : generate
  begin

    process --:o907
    (*)
      variable _zzLB_DUMMY6 : DUMMY1(0 to conv_integer((ext(BUFL,$QKTN_MAX
      (BUFL'length,32)) - integer_to_std(1,$QKTN_MAX(BUFL'length,32)))
      )+integer'PRED(1)) ;
      constant DUMMY12 : integer := abs(conv_integer((ext(DW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1 ;
      variable DUMMY13 : std_logic_vector(1 to DUMMY12+33) ;
    begin
      _zzLB_DUMMY6 := _zzLB;
      _zzLB_DUMMY6(conv_integer(LBwr)) := ext(std_logic_vector'(ireq & idata &
       cbid & len),abs(conv_integer((ext(BW,$QKTN_MAX(DW'length,32)) -
       integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1) ;
      DUMMY13 := ext(_zzLB_DUMMY6(conv_integer(LBrd)),abs(conv_integer((ext
      (DW,$QKTN_MAX(DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32))))
      )+34) ;
      olen <= DUMMY13(DUMMY12+22 to DUMMY12+33) ;
      ocbid <= DUMMY13(DUMMY12+2 to DUMMY12+21) ;
      odata <= DUMMY13(2 to DUMMY12+1) ;
      oreq <= DUMMY13(1) ;
      _zzLB <= transport _zzLB_DUMMY6;
    end process ;
  end generate ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
