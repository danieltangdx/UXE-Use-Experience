library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_not_touch is
  generic (
    N : std_logic_vector := signed(integer_to_std(1,32))
  ) ;
  port (
  d : in std_logic_vector(conv_integer((ext(N,$QKTN_MAX(N'length,32)) -
   integer_to_std(1,$QKTN_MAX(N'length,32)))) downto 0+integer'PRED(1)) ) ;
end ixc_not_touch ;
