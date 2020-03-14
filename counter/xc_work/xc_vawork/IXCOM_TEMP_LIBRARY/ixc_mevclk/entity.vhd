library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_mevClk is
  generic (
    WIDTH : std_logic_vector := signed(integer_to_std(4,32)) ;
    DUMMY1 : std_logic_vector := signed(integer_to_std(0,32)) ;
    IS_EDGED : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
     0+integer'PRED(1)) := integer_to_std(0,abs(conv_integer((ext
    (WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
    (WIDTH'length,32)))))+1) ;
    POLARITY : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
     0+integer'PRED(1)) := integer_to_std(0,abs(conv_integer((ext
    (WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
    (WIDTH'length,32)))))+1) ;
    DS : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
     integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0+integer'PRED(1)) :=
     integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
     integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)
  ) ;
  port (
    xclk : out std_logic ;
    clks : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32
    )) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0+integer'PRED(1)
    ) ;
    ens : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)
    ) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0+integer'PRED(1))
     ;
    DUMMY2 : in std_logic ;
    clkOn : out std_logic ;
  bwOn : out std_logic ) ;
end ixc_mevClk ;
