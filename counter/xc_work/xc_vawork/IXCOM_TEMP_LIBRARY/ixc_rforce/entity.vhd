library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_rforce is
  generic (
    W : std_logic_vector := signed(integer_to_std(1,32))
  ) ;
  port (
    L : in std_logic_vector(conv_integer((ext(W,$QKTN_MAX(W'length,32)) -
     integer_to_std(1,$QKTN_MAX(W'length,32)))) downto 0+integer'PRED(1)) ;
    V : in std_logic_vector(conv_integer((ext(W,$QKTN_MAX(W'length,32)) -
     integer_to_std(1,$QKTN_MAX(W'length,32)))) downto 0+integer'PRED(1)) ;
  en : in std_logic ) ;
end ixc_rforce ;
