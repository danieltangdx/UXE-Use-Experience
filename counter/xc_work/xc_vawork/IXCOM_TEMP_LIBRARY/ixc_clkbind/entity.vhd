library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_clkbind is
  generic (
    WIDTH : integer := 1
  ) ;
  port (
    L : out std_logic_vector((WIDTH - 1) downto 0+integer'PRED(1)) ;
  R : in std_logic_vector((WIDTH - 1) downto 0+integer'PRED(1)) ) ;
end ixc_clkbind ;
