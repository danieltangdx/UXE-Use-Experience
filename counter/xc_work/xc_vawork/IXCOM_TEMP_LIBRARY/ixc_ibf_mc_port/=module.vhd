architecture module of ixc_ibf_mc_port is
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal fenN : std_logic ;
  signal callr : std_logic ;
  signal callrN : std_logic ;
  signal argl : std_logic_vector(15 downto 0) ;
  signal arglN : std_logic_vector(15 downto 0) ;
  signal lden : std_logic_vector(conv_integer(IARGPL1) downto 0+integer'PRED(1))
   ;
  signal ldenN : std_logic_vector(conv_integer(IARGPL1) downto 0+integer'PRED(1)
  ) ;
  signal i : integer ;
  signal oargB : std_logic_vector((512 - 1) downto 0) ;
  signal oen : std_logic ;
  signal opktl : std_logic_vector(15 downto 0) ;
  signal sten : std_logic_vector(conv_integer(OARGPL1) downto 0+integer'PRED(1))
   ;
  signal wlen : std_logic_vector(3 downto 0) ;
  signal oState : std_logic ;
  -- quickturn fast_clock fclk

begin

  process --:o1115
  (**) -- always_comb
  begin
    $axis_pulse( call, callr);
  end process ;

  process --:o1122
  (*)
  begin
    for i in 0 to integer'PRED(conv_integer(IARGPL1)) loop --:o1123
      if (lden(i) = '1') then
        iarg((i * 512)+(512-1) downto (i * 512)) <= CiData ;
      end if;
    end loop;
    if (lden(conv_integer(IARGPL1)) = '1') then
      iarg(conv_integer(IARGW1) downto conv_integer((ext(ext(IARGPL1,$QKTN_MAX
      (IARGW'length,32)) * integer_to_std(512,$QKTN_MAX(IARGW'length,32)
      ),$QKTN_MAX(IARGW'length,32))))+integer'PRED(1)) <= ext(CiData,abs(
      (conv_integer(IARGW1))-(conv_integer((ext(ext(IARGPL1,$QKTN_MAX
      (IARGW'length,32)) * integer_to_std(512,$QKTN_MAX(IARGW'length,32)
      ),$QKTN_MAX(IARGW'length,32))))))+1) ;
    end if;
  end process ;

  process --:o1129
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      callr <= callrN ;
      argl <= arglN ;
      lden <= ldenN ;
      fen <= fenN ;
    end if ;
  end process ;

  process --:o1136
  (*)
  begin
    if (argl /= "0000000000000000") then
      if (ext(argl,32) > "00000000000000000000000000000001") then
        arglN <= ext((ext(argl,32) - "00000000000000000000000000000001"),16) ;
        ldenN <= shl(lden,integer_to_std(1,32)) ;
        callrN <= callr ;
        fenN <= '0' ;
      else
        arglN <= "0000000000000000" ;
        ldenN <= ext("1",abs(conv_integer(IARGPL1))+1) ;
        callrN <= not(callr) ;
        fenN <= '1' ;
      end if;
    else
      if (CtId = tid) then
        arglN <= ext(IARGPL1,16) ;
        ldenN <= ext(ext(it_cond_op((IARGPL1)/="0",ext("10",$QKTN_MAX(abs
        (conv_integer(IARGPL1))+1,2)),ext("1",$QKTN_MAX(abs(conv_integer(IARGPL1
        ))+1,2))),abs(conv_integer(IARGPL1))+1),abs(conv_integer(IARGPL1))+1) ;
        callrN <= it_cond_op((IARGPL1)/="0",callr,not(callr)) ;
        fenN <= boolean_to_std(ext(IARGPL1,$QKTN_MAX(IARGW'length,32)) =
         integer_to_std(0,$QKTN_MAX(IARGW'length,32))) ;
      else
        arglN <= "0000000000000000" ;
        ldenN <= ext("1",abs(conv_integer(IARGPL1))+1) ;
        callrN <= callr ;
        fenN <= '0' ;
      end if;
    end if;
  end process ;
  Generate1 : if genblk1 : ((OARGPL)/="0") generate
  begin
    CoData <= oargB when (oen)='1' else std_logic_vector'
    ("ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ"
    ) ;
    CoDataEn <= '1' when (oen)='1' else 'Z' ;
    CoDataLen <= wlen when (oen)='1' else std_logic_vector'("ZZZZ") ;

    process --:o1179
    (*)
      variable oargB_DUMMY0 : std_logic_vector((512 - 1) downto 0) ;
    begin
      oargB_DUMMY0 := oargB;
      oargB_DUMMY0 :=
       "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
       ;
      if (ext(OARGPL,$QKTN_MAX(OARGW'length,32)) /= integer_to_std(0,$QKTN_MAX
      (OARGW'length,32))) then
        for i in 0 to integer'PRED(conv_integer(OARGPL1)) loop --:o1182
          oargB_DUMMY0 := (oargB_DUMMY0 or it_cond_op((sten(i))='1',oarg((i *
           512)+(512-1) downto (i * 512)),std_logic_vector'
          ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
          ))) ;
        end loop;
        oargB_DUMMY0 := ext(ext(ext(oargB_DUMMY0,$QKTN_MAX(abs((conv_integer
        (OARGW1))-(conv_integer((ext(ext(OARGPL1,$QKTN_MAX(OARGW'length,32)) *
         integer_to_std(512,$QKTN_MAX(OARGW'length,32)),$QKTN_MAX
        (OARGW'length,32))))))+1,512)) or it_cond_op((sten(conv_integer(OARGPL1)
        ))='1',ext(oarg(conv_integer(OARGW1) downto conv_integer((ext(ext
        (OARGPL1,$QKTN_MAX(OARGW'length,32)) * integer_to_std(512,$QKTN_MAX
        (OARGW'length,32)),$QKTN_MAX(OARGW'length,32))))+integer'PRED(1)
        ),$QKTN_MAX(abs((conv_integer(OARGW1))-(conv_integer((ext(ext
        (OARGPL1,$QKTN_MAX(OARGW'length,32)) * integer_to_std(512,$QKTN_MAX
        (OARGW'length,32)),$QKTN_MAX(OARGW'length,32))))))+1,512)),ext
        ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"        ,$QKTN_MAX(abs((conv_integer(OARGW1))-(conv_integer((ext(ext
        (OARGPL1,$QKTN_MAX(OARGW'length,32)) * integer_to_std(512,$QKTN_MAX
        (OARGW'length,32)),$QKTN_MAX(OARGW'length,32))))))+1,512))),512),512) ;
      end if;
      oargB <= transport oargB_DUMMY0;
    end process ;

    process --:o1189
    (fclk)
      variable sten_DUMMY1 : std_logic_vector(conv_integer(OARGPL1) downto
       0+integer'PRED(1)) ;
      variable opktl_DUMMY2 : std_logic_vector(15 downto 0) ;
    begin
      if (fclk'event and fclk = '1') then

        case oState is
          when  '0'  =>
            if (fenN = '1') then
              oen <= '1' ;
              sten_DUMMY1 := integer_to_std(1,abs(conv_integer(OARGPL1))+1) ;
              if (OARGPL1 /= "0") then
                wlen <= "1000" ;
                oState <= '1' ;
                opktl_DUMMY2 := ext(ext(ext(OARGPL1,$QKTN_MAX(OARGW'length,32))
                 - integer_to_std(1,$QKTN_MAX(OARGW'length,32)),16),16) ;
              else
                wlen <= ext(OFWLEN,4) ;
              end if;
            else
              sten_DUMMY1 := integer_to_std(0,abs(conv_integer(OARGPL1))+1) ;
              oen <= '0' ;
            end if;
          when  '1'  =>
            sten_DUMMY1 := shl(sten_DUMMY1,integer_to_std(1,32)) ;
            if (opktl_DUMMY2 /= "0000000000000000") then
              opktl_DUMMY2 := ext((ext(opktl_DUMMY2,32) -
               "00000000000000000000000000000001"),16) ;
              wlen <= "1000" ;
            else
              oState <= '0' ;
              wlen <= ext(OFWLEN,4) ;
            end if;
          when others => null ;
        end case;
      end if ;
      sten <= transport sten_DUMMY1;
      opktl <= opktl_DUMMY2;
    end process ;
  end generate ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
