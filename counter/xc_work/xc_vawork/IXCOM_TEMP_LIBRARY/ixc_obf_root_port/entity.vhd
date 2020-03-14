library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_obf_root_port is
  port (
    tkout : out std_logic ;
    tkin : in std_logic ;
  LGFreq : in std_logic ) ;
end ixc_obf_root_port ;
