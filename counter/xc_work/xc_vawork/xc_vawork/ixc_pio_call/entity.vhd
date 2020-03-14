library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_pio_call is
  generic (
    S2HDW : integer := 1 ;
    H2SDW : integer := 1 ;
    MAIDW : integer := 0 ;
    LTIDW : integer := 0 ;
    ISSVA : integer := 0 ;
    constant S2HDW1 : integer := it_cond_op(S2HDW = 0,0,(S2HDW - 1)) ;
    constant H2SDW1 : integer := it_cond_op(H2SDW = 0,0,(H2SDW - 1)) ;
    constant MAIDW1 : integer := it_cond_op(MAIDW = 0,0,(MAIDW - 1)) ;
    constant LTIDW1 : integer := it_cond_op(LTIDW = 0,0,(LTIDW - 1))
  ) ;
  port (
    s2h_notify : out std_logic ;
    s2h_data : out std_logic_vector(S2HDW1 downto 0+integer'PRED(1)) ;
    from_isf : in std_logic ;
    h2s_notify : in std_logic ;
    h2s_data : in std_logic_vector(H2SDW1 downto 0+integer'PRED(1)) ;
    to_osf : out std_logic ;
    maid : in std_logic_vector(MAIDW1 downto 0+integer'PRED(1)) ;
  ltid : in std_logic_vector(LTIDW1 downto 0+integer'PRED(1)) ) ;
end ixc_pio_call ;
