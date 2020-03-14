architecture module of axis_delay is
  component buf
    port(Z : out std_logic ; A : in std_logic) ;
  end component ;

begin
  i0 : buf port map (z,a) ;
end module;
