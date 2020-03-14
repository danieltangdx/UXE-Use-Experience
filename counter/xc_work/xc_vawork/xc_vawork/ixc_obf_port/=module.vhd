architecture module of ixc_obf_port is
  type DUMMY10 is array(integer range <>) of std_logic_vector(conv_integer((ext
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

  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic_vector(19 downto 0) ;
  signal DUMMY2 : std_logic_vector(11 downto 0) ;
  signal DUMMY3 : std_logic_vector((512 - 1) downto 0) ;
  signal DUMMY4 : std_logic ;
  signal LBrd : std_logic_vector((LBADW - 1) downto 0+integer'PRED(1)) ;
  signal LBwr : std_logic_vector((LBADW - 1) downto 0+integer'PRED(1)) ;
  signal DUMMY7 : std_logic ;
  signal DUMMY8 : std_logic ;
  signal DUMMY9 : std_logic ;
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
  signal DUMMY5 : std_logic_vector(3 downto 0) ;
  signal DUMMY6 : std_logic_vector(3 downto 0) ;
  signal _zzLB : DUMMY10(0 to conv_integer((ext(BUFL,$QKTN_MAX(BUFL'length,32))
   - integer_to_std(1,$QKTN_MAX(BUFL'length,32))))+integer'PRED(1)) ;
  signal i : integer ;
  signal ireqR : std_logic ;
  -- quickturn fast_clock fclk
  -- quickturn no_hardmacro _zzLB

begin
  LBrd <= ext(DUMMY5,abs((LBADW - 1))+1) ;
  LBwr <= ext(DUMMY6,abs((LBADW - 1))+1) ;
  enq <= ((ireq xor ireqR) and not(DUMMY9)) ;
  cchk : Q_CCLKCHK
    port map (
       ireq
    ) ;
  tkout <= boolean_to_std(oreq /= ack) ;
  DUMMY1 <= xcbid when (en)='1' else std_logic_vector'("ZZZZZZZZZZZZZZZZZZZZ") ;
  DUMMY2 <= xlen when (en)='1' else std_logic_vector'("ZZZZZZZZZZZZ") ;
  DUMMY3(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
  (1,$QKTN_MAX(32,DW'length)))) downto 0) <= ext(xdata,abs(conv_integer((ext
  (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1)
   when (en)='1' else ext(it_multiple_concat(std_logic'('Z'),conv_integer(XW)
  ),abs(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
  (1,$QKTN_MAX(32,DW'length)))))+1) ;

  process --:o357
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
      for i in 0 to integer'PRED(conv_integer(SEL1)) loop --:o362
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

    process --:o370
    (*)
    begin
      xcbid <= ocbid ;
      xlen <= olen ;
    end process ;

    process --:o374
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        if (DUMMY9 = '1') then
          ack <= ireq ;
          en <= '0' ;
        elsif ((((tkout)='1' and (not(tkin))='1') and (not(DUMMY8))='1')) then
          en <= '1' ;
          ack <= oreq ;
        else
          en <= '0' ;
        end if;
      end if ;
    end process ;
  else DUMMY11 : generate
  begin

    process --:o388
      variable xlen_DUMMY1 : std_logic_vector(11 downto 0) ;
      variable sel_DUMMY2 : std_logic_vector(conv_integer(SEL1) downto
       0+integer'PRED(1)) ;
    begin
      wait until (fclk'event and fclk = '1') ;
      if (DUMMY9 = '1') then
        ack <= ireq ;
        en <= '0' ;
      elsif ((((tkout)='1' and (not(tkin))='1') and (not(DUMMY8))='1')) then
        xlen_DUMMY1 := olen ;
        xcbid <= ocbid ;
        sel_DUMMY2 := ext("1",abs(conv_integer(SEL1))+1) ;
        en <= '1' ;
        while( ext(xlen_DUMMY1,32) > "00000000000000000000000000010000" ) loop
         --:o398
          wait until (fclk'event and fclk = '1') ;
          if (not(DUMMY8) = '1') then
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

  process --:o415
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if ((DUMMY7 = '0')) then
        ireqR <= ireq ;
      end if;
    end if ;
  end process ;
  DUMMY4 <= '1' when (enq)='1' else 'Z' ;
  DUMMY0 <= '1' when ((ext(enq,USETIME'length) and ext(USETIME,USETIME'length)
  )/="0") else 'Z' ;
  Generate2 : if genblk2 : (SHARE = 0) generate
  begin

    process --:o424
    (*)
      variable _zzLB_DUMMY3 : DUMMY10(0 to conv_integer((ext(BUFL,$QKTN_MAX
      (BUFL'length,32)) - integer_to_std(1,$QKTN_MAX(BUFL'length,32)))
      )+integer'PRED(1)) ;
      constant DUMMY12 : integer := abs(conv_integer((ext(DW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1 ;
      variable DUMMY13 : std_logic_vector(1 to DUMMY12+1) ;
    begin
      _zzLB_DUMMY3 := _zzLB;
      _zzLB_DUMMY3(conv_integer(LBwr)) := ext(std_logic_vector'(ireq & idata
      ),abs(conv_integer((ext(BW,$QKTN_MAX(DW'length,32)) - integer_to_std
      (1,$QKTN_MAX(DW'length,32)))))+1) ;
      DUMMY13 := ext(_zzLB_DUMMY3(conv_integer(LBrd)),abs(conv_integer((ext
      (DW,$QKTN_MAX(DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32))))
      )+2) ;
      odata <= DUMMY13(2 to DUMMY12+1) ;
      oreq <= DUMMY13(1) ;
      ocbid <= cbid ;
      olen <= len ;
      _zzLB <= transport _zzLB_DUMMY3;
    end process ;
  elsif DUMMY14 : (SHARE = 1) generate
  begin

    process --:o431
    (*)
      variable _zzLB_DUMMY4 : DUMMY10(0 to conv_integer((ext(BUFL,$QKTN_MAX
      (BUFL'length,32)) - integer_to_std(1,$QKTN_MAX(BUFL'length,32)))
      )+integer'PRED(1)) ;
      constant DUMMY15 : integer := abs(conv_integer((ext(DW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1 ;
      variable DUMMY16 : std_logic_vector(1 to DUMMY15+13) ;
    begin
      _zzLB_DUMMY4 := _zzLB;
      _zzLB_DUMMY4(conv_integer(LBwr)) := ext(std_logic_vector'(ireq & idata &
       len),abs(conv_integer((ext(BW,$QKTN_MAX(DW'length,32)) - integer_to_std
      (1,$QKTN_MAX(DW'length,32)))))+1) ;
      DUMMY16 := ext(_zzLB_DUMMY4(conv_integer(LBrd)),abs(conv_integer((ext
      (DW,$QKTN_MAX(DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32))))
      )+14) ;
      olen <= DUMMY16(DUMMY15+2 to DUMMY15+13) ;
      odata <= DUMMY16(2 to DUMMY15+1) ;
      oreq <= DUMMY16(1) ;
      ocbid <= cbid ;
      _zzLB <= transport _zzLB_DUMMY4;
    end process ;
  elsif DUMMY17 : (SHARE = 2) generate
  begin

    process --:o437
    (*)
      variable _zzLB_DUMMY5 : DUMMY10(0 to conv_integer((ext(BUFL,$QKTN_MAX
      (BUFL'length,32)) - integer_to_std(1,$QKTN_MAX(BUFL'length,32)))
      )+integer'PRED(1)) ;
      constant DUMMY18 : integer := abs(conv_integer((ext(DW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1 ;
      variable DUMMY19 : std_logic_vector(1 to DUMMY18+21) ;
    begin
      _zzLB_DUMMY5 := _zzLB;
      _zzLB_DUMMY5(conv_integer(LBwr)) := ext(std_logic_vector'(ireq & idata &
       cbid),abs(conv_integer((ext(BW,$QKTN_MAX(DW'length,32)) - integer_to_std
      (1,$QKTN_MAX(DW'length,32)))))+1) ;
      DUMMY19 := ext(_zzLB_DUMMY5(conv_integer(LBrd)),abs(conv_integer((ext
      (DW,$QKTN_MAX(DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32))))
      )+22) ;
      ocbid <= DUMMY19(DUMMY18+2 to DUMMY18+21) ;
      odata <= DUMMY19(2 to DUMMY18+1) ;
      oreq <= DUMMY19(1) ;
      olen <= len ;
      _zzLB <= transport _zzLB_DUMMY5;
    end process ;
  else DUMMY20 : generate
  begin

    process --:o443
    (*)
      variable _zzLB_DUMMY6 : DUMMY10(0 to conv_integer((ext(BUFL,$QKTN_MAX
      (BUFL'length,32)) - integer_to_std(1,$QKTN_MAX(BUFL'length,32)))
      )+integer'PRED(1)) ;
      constant DUMMY21 : integer := abs(conv_integer((ext(DW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1 ;
      variable DUMMY22 : std_logic_vector(1 to DUMMY21+33) ;
    begin
      _zzLB_DUMMY6 := _zzLB;
      _zzLB_DUMMY6(conv_integer(LBwr)) := ext(std_logic_vector'(ireq & idata &
       cbid & len),abs(conv_integer((ext(BW,$QKTN_MAX(DW'length,32)) -
       integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1) ;
      DUMMY22 := ext(_zzLB_DUMMY6(conv_integer(LBrd)),abs(conv_integer((ext
      (DW,$QKTN_MAX(DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32))))
      )+34) ;
      olen <= DUMMY22(DUMMY21+22 to DUMMY21+33) ;
      ocbid <= DUMMY22(DUMMY21+2 to DUMMY21+21) ;
      odata <= DUMMY22(2 to DUMMY21+1) ;
      oreq <= DUMMY22(1) ;
      _zzLB <= transport _zzLB_DUMMY6;
    end process ;
  end generate ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
