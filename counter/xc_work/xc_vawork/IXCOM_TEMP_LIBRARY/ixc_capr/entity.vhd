library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_capR is
  port (
    cap : out std_logic ;
    ev : in std_logic ;
  en : in std_logic ) ;
end ixc_capR ;
