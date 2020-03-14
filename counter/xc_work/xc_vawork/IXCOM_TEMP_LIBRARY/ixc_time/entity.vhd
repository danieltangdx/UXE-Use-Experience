library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_time is
  generic (
    DBW : integer := 5 ;
    TUSF : integer := 1 ;
    TUSFW : integer := 0 ;
    CYC1X : integer := 1
  ) ;
end ixc_time ;
