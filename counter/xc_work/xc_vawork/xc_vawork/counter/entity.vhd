library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity counter is
  port (
    clk : in std_logic ;
  DUMMY0 : out std_logic_vector(31 downto 0) ) ;
  -- quickturn keep_net clk
  -- quickturn preserve DUMMY0
end counter ;
