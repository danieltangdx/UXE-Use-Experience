LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY ixc_assign_32 IS
  GENERIC (
    W : integer := 1
  ) ;
  PORT (
    L : OUT std_logic_vector((W - 1) DOWNTO 0+integer'PRED(1)) ;
  R : IN std_logic_vector((W - 1) DOWNTO 0+integer'PRED(1)) ) ;
END;


                