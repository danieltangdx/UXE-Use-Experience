library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_pulse_en is
  port (
    p : out std_logic ;
    s : in std_logic ;
  en : in std_logic ) ;
end ixc_pulse_en ;
