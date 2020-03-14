library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity axis_tbcall is
  generic (
    level : integer := 0 ;
    anyEdge : integer := 0 ;
    BP : integer := 0
  ) ;
  port (
    s : in std_logic ;
    taskcall : in std_logic ;
    so : out std_logic ;
  pui : in std_logic ) ;
end axis_tbcall ;
