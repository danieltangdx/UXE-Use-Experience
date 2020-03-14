library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_event_driver is
  generic (
    WIDTH : integer := 1
  ) ;
  port (
    d : inout std_logic ;
    sI : in std_logic_vector((WIDTH - 1) downto 0+integer'PRED(1)) ;
  sR : out std_logic_vector((WIDTH - 1) downto 0+integer'PRED(1)) ) ;
end ixc_event_driver ;
