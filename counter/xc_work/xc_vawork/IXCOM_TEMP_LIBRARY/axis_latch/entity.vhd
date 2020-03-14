library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity axis_latch is
  port (
    q : out std_logic ;
    d : in std_logic ;
    c : in std_logic ;
    s : in std_logic ;
  r : in std_logic ) ;
end axis_latch ;
