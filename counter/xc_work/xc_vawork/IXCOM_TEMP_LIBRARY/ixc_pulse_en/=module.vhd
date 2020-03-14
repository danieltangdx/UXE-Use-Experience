architecture module of ixc_pulse_en is
  signal fclk : std_logic ;
  signal tg : std_logic ;
  signal _zzSr : std_logic ;
  signal _zzTg : std_logic ;
  -- quickturn fast_clock fclk

begin

  process --:o915
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      _zzSr <= s ;
      _zzTg <= tg ;
    end if ;
  end process ;
  tg <= not(_zzTg) when ((en)='1' and ((s xor _zzSr)='1')) else _zzTg ;

  process --:o922
  (**) -- always_comb
  begin
    $axis_pulse( p, tg);
  end process ;
end module;
