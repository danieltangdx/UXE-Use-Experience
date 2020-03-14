architecture module of axis_eclk is
  component buf
    port(Z : out std_logic ; A : in std_logic) ;
  end component ;
  signal DUMMY0 : std_logic ;

begin
  i0 : buf port map (pclk,DUMMY0) ;
end module;
