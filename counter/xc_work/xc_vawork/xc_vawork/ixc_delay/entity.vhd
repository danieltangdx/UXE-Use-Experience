library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_delay is
  generic (
    W : integer := 1
  ) ;
  port (
    dv : out std_logic_vector((W - 1) downto 0+integer'PRED(1)) ;
  v : in std_logic_vector((W - 1) downto 0+integer'PRED(1)) ) ;
end ixc_delay ;
