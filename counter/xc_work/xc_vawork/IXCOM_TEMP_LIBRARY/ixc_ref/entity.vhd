library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_ref is
  generic (
    WIDTH : integer := 1
  ) ;
  port (
  i : inout std_logic_vector((WIDTH - 1) downto 0+integer'PRED(1)) ) ;
end ixc_ref ;
