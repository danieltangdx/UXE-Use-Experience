library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_frequency is
  generic (
    FREQ : integer := (-1) ;
    BFREQ : integer := (-1) ;
    DUMMY0 : integer := (-1)
  ) ;
  port (
    clk : in std_logic ;
  clkBase : in std_logic ) ;
end ixc_frequency ;
