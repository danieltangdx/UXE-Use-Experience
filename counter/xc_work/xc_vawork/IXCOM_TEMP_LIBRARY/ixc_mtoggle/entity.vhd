library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_mtoggle is
  generic (
    WIDTH : std_logic_vector := signed(integer_to_std(4,32)) ;
    RTLONLY : integer := 1 ;
    PULSE : integer := 0
  ) ;
  port (
    p : out std_logic ;
  v : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0+integer'PRED(1)) ) ;
end ixc_mtoggle ;
