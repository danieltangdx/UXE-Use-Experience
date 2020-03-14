library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity axis_jkffp is
  port (
    q : out std_logic ;
    j : in std_logic ;
    k : in std_logic ;
    c : in std_logic ;
    s : in std_logic ;
    r : in std_logic ;
  e : in std_logic ) ;
end axis_jkffp ;
