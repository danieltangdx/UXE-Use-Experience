library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity axis_eclk is
  generic (
    beh : integer := 1
  ) ;
  port (
    pclk : out std_logic ;
  DUMMY1 : in std_logic ) ;
end axis_eclk ;
