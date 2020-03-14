architecture module of ixc_obf_pg is
  component Q_BUF
    port (
      Z : out std_logic ;
    A : in std_logic := 'X' ) ;
  end component ;

  component Q_OR02
    port (
      Z : out std_logic ;
      A0 : in std_logic := 'X' ;
    A1 : in std_logic := 'X' ) ;
  end component ;

  component Q_OR03
    port (
      Z : out std_logic ;
      A0 : in std_logic := 'X' ;
      A1 : in std_logic := 'X' ;
    A2 : in std_logic := 'X' ) ;
  end component ;

  component Q_OR04
    port (
      Z : out std_logic ;
      A0 : in std_logic := 'X' ;
      A1 : in std_logic := 'X' ;
      A2 : in std_logic := 'X' ;
    A3 : in std_logic := 'X' ) ;
  end component ;


begin
  ix : Q_BUF
    port map (
       ci(0)
      ,si
    ) ;
  Generate1 : if genblk1 : (ext(R,$QKTN_MAX(R'length,32)) > integer_to_std
  (1,$QKTN_MAX(R'length,32))) generate
  begin
    ix : Q_OR02
      port map (
         ci(1)
        ,si
        ,co(0)
      ) ;
  end generate ;
  Generate2 : if genblk2 : (ext(R,$QKTN_MAX(R'length,32)) > integer_to_std
  (2,$QKTN_MAX(R'length,32))) generate
  begin
    ix : Q_OR03
      port map (
         ci(2)
        ,si
        ,co(0)
        ,co(1)
      ) ;
  end generate ;
  Generate3 : if genblk3 : (ext(R,$QKTN_MAX(R'length,32)) > integer_to_std
  (3,$QKTN_MAX(R'length,32))) generate
  begin
    ix : Q_OR04
      port map (
         ci(3)
        ,si
        ,co(0)
        ,co(1)
        ,co(2)
      ) ;
  end generate ;
  genblk4 : for i in 4 to conv_integer(R) - 1 generate
  begin
    ci(i) <= or_reduce(std_logic_vector'(si & co((i - 1) downto 0+integer'PRED(1
    )))) ;
  end generate ;
  Generate4 : if genblk5 : (ext(R,$QKTN_MAX(R'length,32)) = integer_to_std
  (1,$QKTN_MAX(R'length,32))) generate
  begin
    iy : Q_BUF
      port map (
         so
        ,co(0)
      ) ;
  elsif DUMMY0 : (ext(R,$QKTN_MAX(R'length,32)) = integer_to_std(2,$QKTN_MAX
  (R'length,32))) generate
  begin
    iy : Q_OR02
      port map (
         so
        ,co(0)
        ,co(1)
      ) ;
  elsif DUMMY1 : (ext(R,$QKTN_MAX(R'length,32)) = integer_to_std(3,$QKTN_MAX
  (R'length,32))) generate
  begin
    iy : Q_OR03
      port map (
         so
        ,co(0)
        ,co(1)
        ,co(2)
      ) ;
  elsif DUMMY2 : (ext(R,$QKTN_MAX(R'length,32)) = integer_to_std(4,$QKTN_MAX
  (R'length,32))) generate
  begin
    iy : Q_OR04
      port map (
         so
        ,co(0)
        ,co(1)
        ,co(2)
        ,co(3)
      ) ;
  else DUMMY3 : generate
  begin
    so <= or_reduce(co) ;
  end generate ;
end module;
