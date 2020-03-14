library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity IXC_IFIFO is
  port (
    ackClkX : out std_logic ;
  ackLenX : out std_logic_vector(17 downto 0) ) ;
  constant VLEN : integer := 0 ;
  constant TID : integer := 16 ;
  constant ARGL : integer := 32 ;
  constant ACKL : integer := 32 ;
  constant ODLY : integer := 48 ;
  constant MARK : integer := 63 ;
  constant MARKN : integer := 62 ;
  constant RST : integer := 61 ;
  constant LOG2_SFIFO_WORD_SIZE : integer := 3 ;
  constant LOG2_SFIFO_NUM_WORDS : integer := 14 ;
  constant LOG2_SFIFO_SIZE : integer := 17 ;
end IXC_IFIFO ;
