architecture module of ixc_seqClk is
  component Q_LPULSE
    port (
      A : in std_logic := 'X' ;
      Z : out std_logic ;
    S : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal reqHold : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
   0+integer'PRED(1)) ;
  signal reqI : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
   0+integer'PRED(1)) ;
  signal acks : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
   0+integer'PRED(1)) ;
  signal lastAck : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
   0+integer'PRED(1)) ;
  signal j : integer ;
  -- quickturn fast_clock fclk

begin

  process --:o2154
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      reqHold <= (reqI and not(acks)) ;
      lastAck <= acks ;
    end if ;
  end process ;

  process --:o2159
  (*)
    variable reqI_DUMMY0 : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
     0+integer'PRED(1)) ;
  begin
    reqI_DUMMY0 := reqI;
    reqI_DUMMY0 := (reqs or reqHold) ;
    if (or_reduce((lastAck and reqI_DUMMY0)) = '1') then
      acks <= lastAck ;
    else
      acks(0) <= reqI_DUMMY0(0) ;
      for j in 1 to integer'PRED(conv_integer(WIDTH)) loop --:o2165
        acks(j) <= (not(or_reduce(reqI_DUMMY0((j - 1) downto 0+integer'PRED(1)))
        ) and reqI_DUMMY0(j)) ;
      end loop;
    end if;
    reqI <= transport reqI_DUMMY0;
  end process ;
  bwOn <= boolean_to_std(reqI /= acks) ;
  DUMMY0 <= '1' when (bwOn)='1' else 'Z' ;
  genblk1 : for i in 0 to conv_integer(WIDTH) - 1 generate
  begin
    p0 : Q_LPULSE
      port map (
         Z => xclk(i)
        ,A => acks(i)
      ) ;
  end generate ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
