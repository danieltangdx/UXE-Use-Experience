library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_obf_pg is
  generic (
    R : std_logic_vector := signed(integer_to_std(4,32))
  ) ;
  port (
    so : out std_logic ;
    ci : out std_logic_vector(conv_integer((ext(R,$QKTN_MAX(R'length,32)) -
     integer_to_std(1,$QKTN_MAX(R'length,32)))) downto 0+integer'PRED(1)) ;
    co : in std_logic_vector(conv_integer((ext(R,$QKTN_MAX(R'length,32)) -
     integer_to_std(1,$QKTN_MAX(R'length,32)))) downto 0+integer'PRED(1)) ;
  si : in std_logic ) ;
end ixc_obf_pg ;
