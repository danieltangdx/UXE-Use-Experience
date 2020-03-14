architecture module of ixc_not_touch is
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;


begin
  genblk1 : for i in 0 to conv_integer(N) - 1 generate
  begin
    nt : Q_NOT_TOUCH
      port map (
         d(i)
      ) ;
  end generate ;
end module;
