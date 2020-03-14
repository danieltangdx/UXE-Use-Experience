library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity IXC_OFIFO is
  port (
    ackClk : in std_logic ;
  ackLen : in std_logic_vector(17 downto 0) ) ;
  constant LBSIZE : integer := 4 ;
  constant LOG2_GFIFO_WORD_SIZE : integer := 4 ;
  constant LOG2_GFIFO_NUM_WORDS : integer := 14 ;
  constant LOG2_GFIFO_SIZE : integer := 18 ;
  constant ASYNC_OFF_THRESHOLD : integer := 65536 ;
end IXC_OFIFO ;
