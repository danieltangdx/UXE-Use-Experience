architecture module of ixc_event_driver is
  signal fclk : std_logic ;
  signal _zzsR : std_logic_vector((WIDTH - 1) downto 0+integer'PRED(1)) ;
  signal _zzdR : std_logic ;
  -- quickturn fast_clock fclk

begin

  process --:o940
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      _zzsR <= sI ;
      _zzdR <= d ;
    end if ;
  end process ;
  d <= not(_zzdR) when _zzsR /= sI else 'Z' ;
  sR <= _zzsR ;
end module;
