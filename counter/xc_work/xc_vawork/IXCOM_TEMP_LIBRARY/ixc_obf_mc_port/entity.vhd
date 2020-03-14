library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_obf_mc_port is
  generic (
    DW : std_logic_vector := signed(integer_to_std(512,32)) ;
    SHARE : integer := 0 ;
    USETIME : std_logic_vector := signed(integer_to_std(1,32)) ;
    BUFL : std_logic_vector := signed(integer_to_std(4,32))
  ) ;
  port (
    tkout : out std_logic ;
    tkin : in std_logic ;
    ireq : in std_logic ;
    cbid : in std_logic_vector(19 downto 0) ;
    len : in std_logic_vector(11 downto 0) ;
    idata : in std_logic_vector(conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) -
     integer_to_std(1,$QKTN_MAX(DW'length,32)))) downto 0+integer'PRED(1)) ;
    CGFtsReq : out std_logic ;
    CGFcbid : out std_logic_vector(19 downto 0) ;
    CGFlen : out std_logic_vector(11 downto 0) ;
    CGFidata : out std_logic_vector((512 - 1) downto 0) ;
    CGLBreq : out std_logic ;
    CLBrd : in std_logic_vector(3 downto 0) ;
    CLBwr : in std_logic_vector(3 downto 0) ;
    CLBfull : in std_logic ;
  CGFfull : in std_logic ) ;
  constant BW : std_logic_vector := it_cond_op(SHARE = 0,(ext(DW,$QKTN_MAX
  (DW'length,32)) + integer_to_std(1,$QKTN_MAX(DW'length,32))),it_cond_op(SHARE
   = 1,(ext(DW,$QKTN_MAX(DW'length,32)) + integer_to_std(13,$QKTN_MAX
  (DW'length,32))),it_cond_op(SHARE = 2,(ext(DW,$QKTN_MAX(DW'length,32)) +
   integer_to_std(21,$QKTN_MAX(DW'length,32))),(ext(DW,$QKTN_MAX(DW'length,32))
   + integer_to_std(33,$QKTN_MAX(DW'length,32)))))) ;
  constant XW : std_logic_vector := it_cond_op(ext(DW,$QKTN_MAX(DW'length,32)) >
   integer_to_std(512,$QKTN_MAX(DW'length,32)),integer_to_std(512,$QKTN_MAX
  (DW'length,32)),ext(DW,$QKTN_MAX(DW'length,32))) ;
  constant SEL1 : std_logic_vector := it_cond_op(ext(DW,$QKTN_MAX(DW'length,32))
   > integer_to_std(512,$QKTN_MAX(DW'length,32)),((ext(DW,$QKTN_MAX(DW'length,32
  )) - integer_to_std(1,$QKTN_MAX(DW'length,32))) / integer_to_std(512,$QKTN_MAX
  (DW'length,32))),integer_to_std(0,$QKTN_MAX(DW'length,32))) ;
  constant LBADW : integer := it_cond_op(ext(BUFL,$QKTN_MAX(BUFL'length,32)) <
   integer_to_std(2,$QKTN_MAX(BUFL'length,32)),1,it_cond_op(ext(BUFL,$QKTN_MAX
  (BUFL'length,32)) < integer_to_std(4,$QKTN_MAX(BUFL'length,32)),2,it_cond_op
  (ext(BUFL,$QKTN_MAX(BUFL'length,32)) < integer_to_std(8,$QKTN_MAX
  (BUFL'length,32)),3,4))) ;
end ixc_obf_mc_port ;
