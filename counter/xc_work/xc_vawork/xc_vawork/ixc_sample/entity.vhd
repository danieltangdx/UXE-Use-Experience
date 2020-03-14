library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_sample is
  generic (
    WIDTH : integer := 1 ;
    DUMMY2 : integer := 0
  ) ;
  port (
    sv : out std_logic_vector((WIDTH - 1) downto 0+integer'PRED(1)) ;
  v : in std_logic_vector((WIDTH - 1) downto 0+integer'PRED(1)) ) ;
end ixc_sample ;
