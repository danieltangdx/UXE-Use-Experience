library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity Q_RBUFZP is
  port (
    Z : out std_logic ;
    A : in std_logic ;
  OE : in std_logic ) ;
end Q_RBUFZP ;
