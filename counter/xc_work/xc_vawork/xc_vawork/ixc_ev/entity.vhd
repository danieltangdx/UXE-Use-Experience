library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_ev is
  generic (
    W : std_logic_vector := signed(integer_to_std(1,32)) ;
    ASYNC : integer := 0
  ) ;
  port (
    ev : out std_logic ;
  s : in std_logic_vector(conv_integer((ext(W,$QKTN_MAX(W'length,32)) -
   integer_to_std(1,$QKTN_MAX(W'length,32)))) downto 0+integer'PRED(1)) ) ;
end ixc_ev ;
