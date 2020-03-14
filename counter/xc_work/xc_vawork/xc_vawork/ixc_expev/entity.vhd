library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_expEv is
  generic (
    w : std_logic_vector := signed(integer_to_std(1,32))
  ) ;
  port (
    so : out std_logic ;
  s : in std_logic_vector(conv_integer((ext(w,$QKTN_MAX(w'length,32)) -
   integer_to_std(1,$QKTN_MAX(w'length,32)))) downto 0+integer'PRED(1)) ) ;
end ixc_expEv ;
