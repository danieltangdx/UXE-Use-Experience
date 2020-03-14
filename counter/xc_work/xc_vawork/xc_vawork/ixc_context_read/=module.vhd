architecture module of ixc_context_read is
  type DUMMY0 is array(integer range <>) of std_logic_vector((MEMWIDTH - 1)
   downto 0+integer'PRED(1)) ;
  signal _zymem : DUMMY0(0 to conv_integer((ext(MEMDEPTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))
  )+integer'PRED(1)) ;
  -- quickturn use_hardmacro_pack _zymem

begin
  genblk1 : for i in 0 to conv_integer((ext(MEMDEPTH,$QKTN_MAX(WIDTH'length,32))
   - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) - 1 generate
  begin
    _zymem(i) <= ext(rdata((((i + 1) * MEMWIDTH) - 1) downto (i * MEMWIDTH
    )+integer'PRED(1)),abs((MEMWIDTH - 1))+1) ;
  end generate ;
  Generate1 : if genblk2 : ((ext(ext(MEMDEPTH,$QKTN_MAX(WIDTH'length,32)) *
   integer_to_std(MEMWIDTH,$QKTN_MAX(WIDTH'length,32)),$QKTN_MAX(WIDTH'length,32
  ))) > ext(WIDTH,$QKTN_MAX(WIDTH'length,32))) generate
  begin
    _zymem(conv_integer((ext(MEMDEPTH,$QKTN_MAX(WIDTH'length,32)) -
     integer_to_std(1,$QKTN_MAX(WIDTH'length,32))))) <= ext(rdata(conv_integer(
    (ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
    (WIDTH'length,32)))) downto conv_integer((ext((ext(MEMDEPTH,$QKTN_MAX
    (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32))) *
     integer_to_std(MEMWIDTH,$QKTN_MAX(WIDTH'length,32)),$QKTN_MAX
    (WIDTH'length,32))))+integer'PRED(1)),abs((MEMWIDTH - 1))+1) ;
  else DUMMY1 : generate
  begin
    _zymem(conv_integer((ext(MEMDEPTH,$QKTN_MAX(WIDTH'length,32)) -
     integer_to_std(1,$QKTN_MAX(WIDTH'length,32))))) <= ext(rdata(conv_integer((
    (ext(ext(MEMDEPTH,$QKTN_MAX(WIDTH'length,32)) * integer_to_std
    (MEMWIDTH,$QKTN_MAX(WIDTH'length,32)),$QKTN_MAX(WIDTH'length,32))) -
     integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto conv_integer((ext(
    (ext(MEMDEPTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
    (WIDTH'length,32))) * integer_to_std(MEMWIDTH,$QKTN_MAX(WIDTH'length,32)
    ),$QKTN_MAX(WIDTH'length,32))))+integer'PRED(1)),abs((MEMWIDTH - 1))+1) ;
  end generate ;
end module;
