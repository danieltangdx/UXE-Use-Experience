library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity axis_mux2 is
  port (
    DUMMY0 : out std_logic ;
    sel : in std_logic ;
    in1 : in std_logic ;
  in2 : in std_logic ) ;
end axis_mux2 ;
