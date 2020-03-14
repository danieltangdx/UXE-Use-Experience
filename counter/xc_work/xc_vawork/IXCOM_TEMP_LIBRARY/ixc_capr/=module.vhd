architecture module of ixc_capR is
  signal fclk : std_logic ;
  signal enR : std_logic ;
  -- quickturn fast_clock fclk

begin

  process --:o1852
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      enR <= en ;
    end if ;
  end process ;

  process --:o1858
  (*)
  begin
    if (en /= enR) then
      cap <= '0' ;
    elsif (ev = '1') then
      cap <= '1' ;
    end if;
  end process ;
end module;
