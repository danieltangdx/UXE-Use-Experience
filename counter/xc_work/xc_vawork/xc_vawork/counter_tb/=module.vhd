architecture module of counter_tb is
  component counter
    port (
      clk : in std_logic := 'X' ;
    DUMMY0 : out std_logic_vector(31 downto 0) ) ;
  end component ;


begin
  dut : counter
     ;
end module;
