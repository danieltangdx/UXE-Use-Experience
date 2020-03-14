architecture module of ixc_delay is
  signal fclk : std_logic ;
  -- quickturn fast_clock fclk

begin

  process --:o842
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      dv <= v ;
    end if ;
  end process ;
end module;
