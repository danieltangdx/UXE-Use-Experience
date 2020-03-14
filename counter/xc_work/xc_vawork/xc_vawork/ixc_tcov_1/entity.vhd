library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_tcov_1 is
  generic (
    WIDTH : std_logic_vector := signed(integer_to_std(505,32))
  ) ;
  port (
  din : in std_logic_vector(0 to conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))
  )+integer'PRED(1)) ) ;
end ixc_tcov_1 ;
