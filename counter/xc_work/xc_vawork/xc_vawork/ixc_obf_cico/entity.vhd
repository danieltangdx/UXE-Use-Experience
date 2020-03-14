library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_obf_cico is
  generic (
    N : std_logic_vector := signed(integer_to_std(16,32))
  ) ;
  port (
    ci : out std_logic_vector(conv_integer((ext(N,$QKTN_MAX(N'length,32)) -
     integer_to_std(1,$QKTN_MAX(N'length,32)))) downto 0+integer'PRED(1)) ;
  co : in std_logic_vector(conv_integer((ext(N,$QKTN_MAX(N'length,32)) -
   integer_to_std(1,$QKTN_MAX(N'length,32)))) downto 0+integer'PRED(1)) ) ;
  constant G : integer := 4 ;
  constant M : std_logic_vector := (ext(N,$QKTN_MAX(N'length,32)) /
   integer_to_std(4,$QKTN_MAX(N'length,32))) ;
  constant R : std_logic_vector := (ext(N,$QKTN_MAX(N'length,32)) - (ext
  (integer_to_std(4,$QKTN_MAX(N'length,32)) * ext(M,$QKTN_MAX(N'length,32)
  ),$QKTN_MAX(N'length,32)))) ;
end ixc_obf_cico ;
