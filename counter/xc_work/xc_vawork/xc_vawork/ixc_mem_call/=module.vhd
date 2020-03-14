architecture module of ixc_mem_call is
  type DUMMY5 is array(integer range <>) of std_logic_vector(S2HMEMW1 downto
   0+integer'PRED(1)) ;
  type DUMMY6 is array(integer range <>) of std_logic_vector(H2SMEMW1 downto
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

  signal fclk : std_logic ;
  signal DUMMY1 : std_logic ;
  signal callEvent : std_logic ;
  signal DUMMY3 : std_logic ;
  signal DUMMY4 : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal osfBusy : std_logic ;
  signal isfBusy : std_logic ;
  signal _zys2hmem : DUMMY5(0 to conv_integer((ext(S2HMDEP,$QKTN_MAX
  (S2HDW'length,32)) - integer_to_std(1,$QKTN_MAX(S2HDW'length,32)))
  )+integer'PRED(1)) ;
  signal s2hmport : std_logic_vector(S2HMEMW1 downto 0+integer'PRED(1)) ;
  signal s2hxtail : std_logic_vector(S2HMEMW1 downto 0+integer'PRED(1)) ;
  signal s2hmark : std_logic ;
  signal s2hmarkN : std_logic ;
  signal ns2hd : std_logic ;
  signal _zyh2smem : DUMMY6(0 to conv_integer(((ext(H2SMDEP,$QKTN_MAX
  (H2SDW'length,32)) + integer_to_std(NEEDLTID,$QKTN_MAX(H2SDW'length,32))) -
   integer_to_std(1,$QKTN_MAX(H2SDW'length,32))))+integer'PRED(1)) ;
  signal h2smport : std_logic_vector(H2SMEMW1 downto 0+integer'PRED(1)) ;
  signal nh2sd : std_logic ;
  signal h2s_notifyOv : std_logic ;
  signal wptr : std_logic_vector((WPTRWID - 1) downto 0+integer'PRED(1)) ;
  signal rptr : std_logic_vector((RPTRWID - 1) downto 0+integer'PRED(1)) ;
  signal h2sstate : std_logic_vector(1 downto 0) ;
  signal s2hstate : std_logic_vector(1 downto 0) ;
  -- quickturn fast_clock fclk
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
  else DUMMY7 : generate
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
    Generate3 : if genblk1 : (ext(H2SMDEP,$QKTN_MAX(H2SDW'length,32)) =
     integer_to_std(1,$QKTN_MAX(H2SDW'length,32))) generate
    begin

      process --:o1468
      (*)
      begin
        _zyh2smem(0) <= ext(h2s_data,abs(H2SMEMW1)+1) ;
      end process ;
    else DUMMY8 : generate
    begin
      DUMMY3 <= '1' when ((nh2sd)='1' or (osfBusy)='1') else 'Z' ;

      process --:o1476
      (fclk)
        variable DUMMY9 : std_logic_vector(0 to 31) ;
      begin
        if (fclk'event and fclk = '1') then
          DUMMY9 := ext(h2sstate,32);

          case DUMMY9  is
            when integer_to_std(ST_IDLE,32) =>
              if (((DUMMY0)='1' or (DUMMY1)='1')) then
                h2sstate <= integer_to_std(ST_ACTIVE,2) ;
              end if;
            when integer_to_std(ST_ACTIVE,32) =>
              if (nh2sd = '1') then
                osfBusy <= '1' ;
                h2sstate <= integer_to_std(ST_MRDWR,2) ;
                wptr <= integer_to_std(0,abs((WPTRWID - 1))+1) ;
              end if;
            when integer_to_std(ST_MRDWR,32) =>
              if (ext(wptr,$QKTN_MAX(abs((WPTRWID - 1))+1,$QKTN_MAX
              (H2SDW'length,32))) = ext(H2SNBLK1,$QKTN_MAX(abs((WPTRWID - 1)
              )+1,$QKTN_MAX(H2SDW'length,32)))) then
                osfBusy <= '0' ;
                h2sstate <= integer_to_std(ST_IDLE,2) ;
              else
                wptr <= ext(ext(ext(wptr,$QKTN_MAX(abs((WPTRWID - 1))+1,32)) +
                 integer_to_std(1,$QKTN_MAX(abs((WPTRWID - 1))+1,32)),abs(
                (WPTRWID - 1))+1),abs((WPTRWID - 1))+1) ;
              end if;
            when others => null ;
          end case;
          h2s_notifyOv <= h2s_notify ;
        end if ;
      end process ;

      process --:o1501
      (*)
      begin
        _zyh2smem(conv_integer(wptr)) <= h2smport ;
      end process ;

      process --:o1505
      (*)
      begin
        nh2sd <= boolean_to_std(h2s_notify /= h2s_notifyOv) ;
      end process ;

      process --:o1509
      (*)
        variable h2smport_DUMMY0 : std_logic_vector(H2SMEMW1 downto
         0+integer'PRED(1)) ;
        variable i : integer := 0 ;
      begin
        h2smport_DUMMY0 := h2smport;
        h2smport_DUMMY0 := ext("00000000000000000000000000000000",abs(H2SMEMW1
        )+1) ;
        for i in 0 to integer'PRED(conv_integer(H2SNBLK1)) loop --:o1511
          h2smport_DUMMY0 := ext(ext(ext(h2smport_DUMMY0,$QKTN_MAX(abs(H2SMEMW1
          )+1,$QKTN_MAX((H2SMEMW),32))) or it_cond_op(ext(wptr,$QKTN_MAX(abs(
          (WPTRWID - 1))+1,32)) = integer_to_std(i,$QKTN_MAX(abs((WPTRWID - 1)
          )+1,32)),ext(h2s_data((i * H2SMEMW)+(H2SMEMW-1) downto (i * H2SMEMW)
          ),$QKTN_MAX(abs(H2SMEMW1)+1,$QKTN_MAX((H2SMEMW),32))),ext
          ("00000000000000000000000000000000",$QKTN_MAX(abs(H2SMEMW1
          )+1,$QKTN_MAX((H2SMEMW),32)))),abs(H2SMEMW1)+1),abs(H2SMEMW1)+1) ;
        end loop;
        h2smport_DUMMY0 := ext(ext(ext(h2smport_DUMMY0,$QKTN_MAX(abs(H2SMEMW1
        )+1,$QKTN_MAX(abs((conv_integer(H2SDW1))-(conv_integer((ext(ext
        (H2SNBLK1,$QKTN_MAX(H2SDW'length,32)) * integer_to_std(H2SMEMW,$QKTN_MAX
        (H2SDW'length,32)),$QKTN_MAX(H2SDW'length,32))))))+1,32))) or it_cond_op
        (ext(wptr,$QKTN_MAX(abs((WPTRWID - 1))+1,$QKTN_MAX(H2SDW'length,32))) =
         ext(H2SNBLK1,$QKTN_MAX(abs((WPTRWID - 1))+1,$QKTN_MAX(H2SDW'length,32))
        ),ext(h2s_data(conv_integer(H2SDW1) downto conv_integer((ext(ext
        (H2SNBLK1,$QKTN_MAX(H2SDW'length,32)) * integer_to_std(H2SMEMW,$QKTN_MAX
        (H2SDW'length,32)),$QKTN_MAX(H2SDW'length,32))))+integer'PRED(1)
        ),$QKTN_MAX(abs(H2SMEMW1)+1,$QKTN_MAX(abs((conv_integer(H2SDW1))-
        (conv_integer((ext(ext(H2SNBLK1,$QKTN_MAX(H2SDW'length,32)) *
         integer_to_std(H2SMEMW,$QKTN_MAX(H2SDW'length,32)),$QKTN_MAX
        (H2SDW'length,32))))))+1,32))),ext
        ("00000000000000000000000000000000",$QKTN_MAX(abs(H2SMEMW1)+1,$QKTN_MAX
        (abs((conv_integer(H2SDW1))-(conv_integer((ext(ext(H2SNBLK1,$QKTN_MAX
        (H2SDW'length,32)) * integer_to_std(H2SMEMW,$QKTN_MAX(H2SDW'length,32)
        ),$QKTN_MAX(H2SDW'length,32))))))+1,32)))),abs(H2SMEMW1)+1),abs(H2SMEMW1
        )+1) ;
        h2smport <= transport h2smport_DUMMY0;
      end process ;
    end generate ;
  end generate ;
  Generate4 : if genblk3 : (NEEDLTID > 0) generate
  begin

    process --:o1523
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
  Generate5 : if genblk4 : (ext(S2HDW,$QKTN_MAX(S2HDW'length,32)) >
   integer_to_std(0,$QKTN_MAX(S2HDW'length,32))) generate
  begin
    Generate6 : if genblk1 : (ext(S2HMDEP,$QKTN_MAX(S2HDW'length,32)) =
     integer_to_std(1,$QKTN_MAX(S2HDW'length,32))) generate
    begin

      process --:o1533
      (*)
      begin
        s2h_data <= ext(_zys2hmem(0),abs(conv_integer(S2HDW1))+1) ;
      end process ;
    else DUMMY10 : generate
    begin
      DUMMY4 <= '1' when ((ns2hd)='1' or (isfBusy)='1') else 'Z' ;

      process --:o1541
      (fclk)
        variable DUMMY11 : std_logic_vector(0 to 31) ;
      begin
        if (fclk'event and fclk = '1') then
          DUMMY11 := ext(s2hstate,32);

          case DUMMY11  is
            when integer_to_std(ST_IDLE,32) =>
              if (ns2hd = '1') then
                isfBusy <= '1' ;
                s2hstate <= integer_to_std(ST_ACTIVE,2) ;
              end if;
            when integer_to_std(ST_ACTIVE,32) =>
              isfBusy <= '1' ;
              s2hstate <= integer_to_std(ST_MRDWR,2) ;
              rptr <= integer_to_std(0,abs((RPTRWID - 1))+1) ;
            when integer_to_std(ST_MRDWR,32) =>
              if (ext(rptr,$QKTN_MAX(abs((RPTRWID - 1))+1,$QKTN_MAX
              (S2HDW'length,32))) = ext(S2HNBLK1,$QKTN_MAX(abs((RPTRWID - 1)
              )+1,$QKTN_MAX(S2HDW'length,32)))) then
                isfBusy <= '0' ;
                s2hstate <= integer_to_std(ST_IDLE,2) ;
                rptr <= ext(ext(ext(S2HMDEP,$QKTN_MAX(abs((RPTRWID - 1)
                )+1,$QKTN_MAX(S2HDW'length,32))) - integer_to_std(1,$QKTN_MAX
                (abs((RPTRWID - 1))+1,$QKTN_MAX(S2HDW'length,32))),abs((RPTRWID
                 - 1))+1),abs((RPTRWID - 1))+1) ;
              else
                rptr <= ext(ext(ext(rptr,$QKTN_MAX(abs((RPTRWID - 1))+1,32)) +
                 integer_to_std(1,$QKTN_MAX(abs((RPTRWID - 1))+1,32)),abs(
                (RPTRWID - 1))+1),abs((RPTRWID - 1))+1) ;
              end if;
            when others => null ;
          end case;
          s2hmark <= s2hmarkN ;
        end if ;
      end process ;

      process --:o1568
      (*)
        variable s2hxtail_DUMMY1 : std_logic_vector(S2HMEMW1 downto
         0+integer'PRED(1)) ;
        variable ns2hd_DUMMY2 : std_logic ;
      begin
        s2hxtail_DUMMY1 := s2hxtail;
        ns2hd_DUMMY2 := ns2hd;
        s2hxtail_DUMMY1 := _zys2hmem(conv_integer((ext(S2HMDEP,$QKTN_MAX
        (S2HDW'length,32)) - integer_to_std(1,$QKTN_MAX(S2HDW'length,32))))) ;
        ns2hd_DUMMY2 := boolean_to_std(s2hxtail_DUMMY1(S2HMEMW1) /= s2hmark) ;
        if (ns2hd_DUMMY2 = '1') then
          s2hmarkN <= s2hxtail_DUMMY1(S2HMEMW1) ;
        else
          s2hmarkN <= s2hmark ;
        end if;
        s2hxtail <= transport s2hxtail_DUMMY1;
        ns2hd <= ns2hd_DUMMY2;
      end process ;

      process --:o1578
      (*)
      begin
        s2hmport <= _zys2hmem(conv_integer(rptr)) ;
      end process ;

      process --:o1582
      (*)
        variable i : integer := 0 ;
      begin
        for i in 0 to integer'PRED(conv_integer(S2HNBLK1)) loop --:o1583
          if (ext(rptr,$QKTN_MAX(abs((RPTRWID - 1))+1,32)) = integer_to_std
          (i,$QKTN_MAX(abs((RPTRWID - 1))+1,32))) then
            s2h_data((i * S2HMEMW)+(S2HMEMW-1) downto (i * S2HMEMW)) <= ext
            (s2hmport,(S2HMEMW)) ;
          end if;
        end loop;
        if (ext(rptr,$QKTN_MAX(abs((RPTRWID - 1))+1,$QKTN_MAX(S2HDW'length,32)))
         = ext(S2HNBLK1,$QKTN_MAX(abs((RPTRWID - 1))+1,$QKTN_MAX(S2HDW'length,32
        )))) then
          s2h_data(conv_integer(S2HDW1) downto conv_integer((ext(ext
          (S2HNBLK1,$QKTN_MAX(S2HDW'length,32)) * integer_to_std
          (S2HMEMW,$QKTN_MAX(S2HDW'length,32)),$QKTN_MAX(S2HDW'length,32)))
          )+integer'PRED(1)) <= ext(s2hmport,abs((conv_integer(S2HDW1))-
          (conv_integer((ext(ext(S2HNBLK1,$QKTN_MAX(S2HDW'length,32)) *
           integer_to_std(S2HMEMW,$QKTN_MAX(S2HDW'length,32)),$QKTN_MAX
          (S2HDW'length,32))))))+1) ;
        end if;
      end process ;
    end generate ;
  end generate ;
  cchk : Q_CCLKCHK
    port map (
       h2s_notify
    ) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
