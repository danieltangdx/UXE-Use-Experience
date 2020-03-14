library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_mem_call is
  generic (
    S2HDW : std_logic_vector := signed(integer_to_std(1,32)) ;
    H2SDW : std_logic_vector := signed(integer_to_std(1,32)) ;
    MAIDW : std_logic_vector := signed(integer_to_std(0,32)) ;
    LTIDW : std_logic_vector := signed(integer_to_std(0,32)) ;
    ISSVA : integer := 0 ;
    constant S2HDW1 : std_logic_vector := it_cond_op(ext(S2HDW,$QKTN_MAX
    (S2HDW'length,32)) = integer_to_std(0,$QKTN_MAX(S2HDW'length,32)
    ),integer_to_std(0,$QKTN_MAX(S2HDW'length,32)),(ext(S2HDW,$QKTN_MAX
    (S2HDW'length,32)) - integer_to_std(1,$QKTN_MAX(S2HDW'length,32)))) ;
    constant H2SDW1 : std_logic_vector := it_cond_op(ext(H2SDW,$QKTN_MAX
    (H2SDW'length,32)) = integer_to_std(0,$QKTN_MAX(H2SDW'length,32)
    ),integer_to_std(0,$QKTN_MAX(H2SDW'length,32)),(ext(H2SDW,$QKTN_MAX
    (H2SDW'length,32)) - integer_to_std(1,$QKTN_MAX(H2SDW'length,32)))) ;
    constant MAIDW1 : std_logic_vector := it_cond_op(ext(MAIDW,$QKTN_MAX
    (MAIDW'length,32)) = integer_to_std(0,$QKTN_MAX(MAIDW'length,32)
    ),integer_to_std(0,$QKTN_MAX(MAIDW'length,32)),(ext(MAIDW,$QKTN_MAX
    (MAIDW'length,32)) - integer_to_std(1,$QKTN_MAX(MAIDW'length,32)))) ;
    constant LTIDW1 : std_logic_vector := it_cond_op(ext(LTIDW,$QKTN_MAX
    (LTIDW'length,32)) = integer_to_std(0,$QKTN_MAX(LTIDW'length,32)
    ),integer_to_std(0,$QKTN_MAX(LTIDW'length,32)),(ext(LTIDW,$QKTN_MAX
    (LTIDW'length,32)) - integer_to_std(1,$QKTN_MAX(LTIDW'length,32))))
  ) ;
  port (
    s2h_notify : out std_logic ;
    s2h_data : out std_logic_vector(conv_integer(S2HDW1) downto 0+integer'PRED(1
    )) ;
    from_isf : in std_logic ;
    h2s_notify : in std_logic ;
    h2s_data : in std_logic_vector(conv_integer(H2SDW1) downto 0+integer'PRED(1)
    ) ;
    to_osf : out std_logic ;
    maid : in std_logic_vector(conv_integer(MAIDW1) downto 0+integer'PRED(1)) ;
  ltid : in std_logic_vector(conv_integer(LTIDW1) downto 0+integer'PRED(1)) ) ;
  constant S2HMEMW : integer := it_cond_op(ext(S2HDW,$QKTN_MAX(S2HDW'length,32))
   <= integer_to_std(32,$QKTN_MAX(S2HDW'length,32)),32,it_cond_op(ext
  (S2HDW,$QKTN_MAX(S2HDW'length,32)) <= integer_to_std(64,$QKTN_MAX
  (S2HDW'length,32)),64,it_cond_op(ext(S2HDW,$QKTN_MAX(S2HDW'length,32)) <=
   integer_to_std(256,$QKTN_MAX(S2HDW'length,32)),256,512))) ;
  constant H2SMEMW : integer := it_cond_op(ext(H2SDW,$QKTN_MAX(H2SDW'length,32))
   <= integer_to_std(32,$QKTN_MAX(H2SDW'length,32)),32,it_cond_op(ext
  (H2SDW,$QKTN_MAX(H2SDW'length,32)) <= integer_to_std(64,$QKTN_MAX
  (H2SDW'length,32)),64,it_cond_op(ext(H2SDW,$QKTN_MAX(H2SDW'length,32)) <=
   integer_to_std(256,$QKTN_MAX(H2SDW'length,32)),256,512))) ;
  constant S2HMEMW1 : integer := it_cond_op(S2HMEMW = 0,0,(S2HMEMW - 1)) ;
  constant H2SMEMW1 : integer := it_cond_op(H2SMEMW = 0,0,(H2SMEMW - 1)) ;
  constant S2HNBLK : std_logic_vector := ((ext(S2HDW,$QKTN_MAX(S2HDW'length,32))
   + integer_to_std(S2HMEMW1,$QKTN_MAX(S2HDW'length,32))) / integer_to_std
  (S2HMEMW,$QKTN_MAX(S2HDW'length,32))) ;
  constant H2SNBLK : std_logic_vector := ((ext(H2SDW,$QKTN_MAX(H2SDW'length,32))
   + integer_to_std(H2SMEMW1,$QKTN_MAX(H2SDW'length,32))) / integer_to_std
  (H2SMEMW,$QKTN_MAX(H2SDW'length,32))) ;
  constant S2HNBLK1 : std_logic_vector := it_cond_op(ext(S2HNBLK,$QKTN_MAX
  (S2HDW'length,32)) = integer_to_std(0,$QKTN_MAX(S2HDW'length,32)
  ),integer_to_std(0,$QKTN_MAX(S2HDW'length,32)),(ext(S2HNBLK,$QKTN_MAX
  (S2HDW'length,32)) - integer_to_std(1,$QKTN_MAX(S2HDW'length,32)))) ;
  constant H2SNBLK1 : std_logic_vector := it_cond_op(ext(H2SNBLK,$QKTN_MAX
  (H2SDW'length,32)) = integer_to_std(0,$QKTN_MAX(H2SDW'length,32)
  ),integer_to_std(0,$QKTN_MAX(H2SDW'length,32)),(ext(H2SNBLK,$QKTN_MAX
  (H2SDW'length,32)) - integer_to_std(1,$QKTN_MAX(H2SDW'length,32)))) ;
  constant S2HMDEP : std_logic_vector := it_cond_op(ext(S2HNBLK,$QKTN_MAX
  (S2HDW'length,32)) > integer_to_std(0,$QKTN_MAX(S2HDW'length,32)),it_cond_op
  (ext(S2HDW,$QKTN_MAX(S2HDW'length,32)) < (ext(integer_to_std(S2HMEMW,$QKTN_MAX
  (S2HDW'length,32)) * ext(S2HNBLK,$QKTN_MAX(S2HDW'length,32)),$QKTN_MAX
  (S2HDW'length,32))),ext(S2HNBLK,$QKTN_MAX(S2HDW'length,32)),(ext
  (S2HNBLK,$QKTN_MAX(S2HDW'length,32)) + integer_to_std(1,$QKTN_MAX
  (S2HDW'length,32)))),integer_to_std(1,$QKTN_MAX(S2HDW'length,32))) ;
  constant H2SMDEP : std_logic_vector := it_cond_op(ext(H2SNBLK,$QKTN_MAX
  (H2SDW'length,32)) > integer_to_std(0,$QKTN_MAX(H2SDW'length,32)),ext
  (H2SNBLK,$QKTN_MAX(H2SDW'length,32)),integer_to_std(1,$QKTN_MAX
  (H2SDW'length,32))) ;
  constant WPTRWID : integer := it_cond_op($clog2( H2SMDEP) > 0,$clog2( H2SMDEP
  ),1) ;
  constant RPTRWID : integer := it_cond_op($clog2( S2HMDEP) > 0,$clog2( S2HMDEP
  ),1) ;
  constant NEEDLTID : integer := it_cond_op((ext(MAIDW,$QKTN_MAX(MAIDW'length,32
  )) > integer_to_std(0,$QKTN_MAX(MAIDW'length,32)) or ext(LTIDW,$QKTN_MAX
  (LTIDW'length,32)) > integer_to_std(0,$QKTN_MAX(LTIDW'length,32))),1,0) ;
  constant ST_IDLE : integer := 0 ;
  constant ST_ACTIVE : integer := 1 ;
  constant ST_MRDWR : integer := 2 ;
end ixc_mem_call ;
