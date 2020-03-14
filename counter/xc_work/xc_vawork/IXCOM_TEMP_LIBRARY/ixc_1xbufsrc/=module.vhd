architecture module of ixc_1xbufsrc is
  component buf
    port(Z : out std_logic ; A : in std_logic) ;
  end component ;

begin
  i0 : buf port map (cout,cin) ;
end module;
