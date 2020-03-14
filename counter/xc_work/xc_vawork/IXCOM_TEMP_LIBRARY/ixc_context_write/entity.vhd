library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_context_write is
  generic (
    DWIDTH : std_logic_vector := signed(integer_to_std(32,32)) ;
    NVEC : std_logic_vector := signed(integer_to_std(1,32))
  ) ;
  port (
  wdata : in std_logic_vector(conv_integer((ext(DWIDTH,$QKTN_MAX
  (DWIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(DWIDTH'length,32)))) downto
   0+integer'PRED(1)) ) ;
  constant WIDTH : std_logic_vector := (ext(DWIDTH,$QKTN_MAX
  (DWIDTH'length,NVEC'length)) + ext(NVEC,$QKTN_MAX(DWIDTH'length,NVEC'length)))
   ;
  constant MEMWIDTH : integer := it_cond_op(ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) <= integer_to_std(32,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)),32,it_cond_op(ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) <= integer_to_std(64,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)),64,it_cond_op(ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) <= integer_to_std(128,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)),128,it_cond_op(ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) <= integer_to_std(256,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)),256,512)))) ;
  constant MEMDEPTH : std_logic_vector := ((ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) + integer_to_std(511,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32))) / integer_to_std(512,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32))) ;
end ixc_context_write ;
