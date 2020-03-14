architecture module of axis_latch is

begin

  process --:o673
  (c,d,s,r)
  begin
    if (r = '0') then
      q <= '0' ;
    elsif (s = '0') then
      q <= '1' ;
    elsif (c = '1') then
      q <= d ;
    end if;
  end process ;
end module;
