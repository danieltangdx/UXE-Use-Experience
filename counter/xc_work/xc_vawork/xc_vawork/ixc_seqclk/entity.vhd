library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_seqClk is
  generic (
    WIDTH : std_logic_vector := signed(integer_to_std(4,32))
  ) ;
  port (
    xclk : out std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
     0+integer'PRED(1)) ;
    reqs : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32
    )) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0+integer'PRED(1)
    ) ;
  bwOn : out std_logic ) ;
end ixc_seqClk ;
