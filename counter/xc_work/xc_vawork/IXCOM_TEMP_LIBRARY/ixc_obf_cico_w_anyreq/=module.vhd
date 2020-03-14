architecture module of ixc_obf_cico_w_anyreq is
  component ixc_obf_cico_w_anyreq
    generic (
      N : std_logic_vector := signed(integer_to_std(16,32))
    ) ;
    port (
      ci : out std_logic_vector(conv_integer((ext(N,$QKTN_MAX(N'length,32)) -
       integer_to_std(1,$QKTN_MAX(N'length,32)))) downto 0+integer'PRED(1)) ;
      co : in std_logic_vector(conv_integer((ext(N,$QKTN_MAX(N'length,32)) -
       integer_to_std(1,$QKTN_MAX(N'length,32)))) downto 0+integer'PRED(1)) := 
      (others => 'X') ;
    anyReq : out std_logic ) ;
  end component ;

  component ixc_obf_pg
    generic (
      R : std_logic_vector := signed(integer_to_std(4,32))
    ) ;
    port (
      so : out std_logic ;
      ci : out std_logic_vector(conv_integer((ext(R,$QKTN_MAX(R'length,32)) -
       integer_to_std(1,$QKTN_MAX(R'length,32)))) downto 0+integer'PRED(1)) ;
      co : in std_logic_vector(conv_integer((ext(R,$QKTN_MAX(R'length,32)) -
       integer_to_std(1,$QKTN_MAX(R'length,32)))) downto 0+integer'PRED(1)) := 
      (others => 'X') ;
    si : in std_logic := 'X' ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal so : std_logic_vector(conv_integer(M) downto 0+integer'PRED(1)) ;
  signal si : std_logic_vector(conv_integer(M) downto 0+integer'PRED(1)) ;

begin
  Generate1 : if genblk1 : (ext(N,$QKTN_MAX(N'length,32)) > integer_to_std
  (4,$QKTN_MAX(N'length,32))) generate
    signal DUMMY1 : std_logic_vector(conv_integer((ext((ext(M,$QKTN_MAX
    (M'length,32)) + integer_to_std(1,$QKTN_MAX(M'length,32))),$QKTN_MAX
    (M'length,32)) - integer_to_std(1,$QKTN_MAX(M'length,32)))) downto
     0+integer'PRED(1)) ;
    signal DUMMY2 : std_logic_vector(conv_integer((ext((ext(M,$QKTN_MAX
    (M'length,32)) + integer_to_std(1,$QKTN_MAX(M'length,32))),$QKTN_MAX
    (M'length,32)) - integer_to_std(1,$QKTN_MAX(M'length,32)))) downto
     0+integer'PRED(1)) ;
  begin
    nl : ixc_obf_cico_w_anyreq
      generic map((ext(M,$QKTN_MAX(M'length,32)) + integer_to_std(1,$QKTN_MAX
      (M'length,32))))
      port map (
         DUMMY1
        ,DUMMY2
        ,anyReq
      ) ;
    si <= ext(DUMMY1,abs(conv_integer(M))+1) ;
    DUMMY2 <= ext(so,abs(conv_integer(((ext(M,$QKTN_MAX(M'length,32)) +
     integer_to_std(1,$QKTN_MAX(M'length,32))) - integer_to_std(1,$QKTN_MAX
    (M'length,32)))))+1) ;
  else DUMMY3 : generate
  begin
    si(0) <= '0' ;
    anyReq <= (so(0) and not(DUMMY0)) ;
  end generate ;
  genblk2 : for i in 0 to conv_integer(M) - 1 generate
  begin
    pgx : ixc_obf_pg
      generic map(integer_to_std(4,32))
      port map (
         so(i)
        ,ci((i * 4)+(G-1) downto (i * 4))
        ,co((i * 4)+(G-1) downto (i * 4))
        ,si(i)
      ) ;
  end generate ;
  Generate2 : if genblk3 : ((R)/="0") generate
    signal DUMMY4 : std_logic_vector(conv_integer((ext(R,$QKTN_MAX(N'length,32))
     - integer_to_std(1,$QKTN_MAX(N'length,32)))) downto 0+integer'PRED(1)) ;
    signal DUMMY5 : std_logic_vector(conv_integer((ext(R,$QKTN_MAX(N'length,32))
     - integer_to_std(1,$QKTN_MAX(N'length,32)))) downto 0+integer'PRED(1)) ;
  begin
    pgr : ixc_obf_pg
      generic map(R)
      port map (
         so(conv_integer(M))
        ,DUMMY4
        ,DUMMY5
        ,si(conv_integer(M))
      ) ;
    ci(conv_integer((ext(N,$QKTN_MAX(N'length,32)) - integer_to_std(1,$QKTN_MAX
    (N'length,32)))) downto conv_integer((ext(ext(M,$QKTN_MAX(N'length,32)) *
     integer_to_std(4,$QKTN_MAX(N'length,32)),$QKTN_MAX(N'length,32)))
    )+integer'PRED(1)) <= ext(DUMMY4,abs((conv_integer((ext(N,$QKTN_MAX
    (N'length,32)) - integer_to_std(1,$QKTN_MAX(N'length,32)))))-(conv_integer(
    (ext(ext(M,$QKTN_MAX(N'length,32)) * integer_to_std(4,$QKTN_MAX(N'length,32)
    ),$QKTN_MAX(N'length,32))))))+1) ;
    DUMMY5 <= ext(co(conv_integer((ext(N,$QKTN_MAX(N'length,32)) -
     integer_to_std(1,$QKTN_MAX(N'length,32)))) downto conv_integer((ext(ext
    (M,$QKTN_MAX(N'length,32)) * integer_to_std(4,$QKTN_MAX(N'length,32)
    ),$QKTN_MAX(N'length,32))))+integer'PRED(1)),abs(conv_integer((ext
    (R,$QKTN_MAX(N'length,32)) - integer_to_std(1,$QKTN_MAX(N'length,32)))))+1)
     ;
  end generate ;
end module;
