library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_call_clk is
  generic (
    N : integer := 1 ;
    EDGE : std_logic_vector := signed(integer_to_std(0,32)) ;
    EXPORT : integer := 0
  ) ;
  port (
    clkout : out std_logic ;
    clkin : in std_logic ;
    h2s_notify : in std_logic_vector((N - 1) downto 0+integer'PRED(1)) ;
  s2h_notify : in std_logic_vector((N - 1) downto 0+integer'PRED(1)) ) ;
end ixc_call_clk ;
