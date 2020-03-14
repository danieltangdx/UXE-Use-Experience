library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_edge is
  generic (
    DIR : integer := 0 ;
    ASYNC : integer := 0
  ) ;
  port (
    ev : out std_logic ;
  s : in std_logic ) ;
end ixc_edge ;
