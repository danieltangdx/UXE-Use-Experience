architecture module of ixc_sample is
  signal fclk : std_logic ;
  signal doSample : std_logic ;
  signal _zzsv : std_logic_vector((WIDTH - 1) downto 0+integer'PRED(1)) ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  -- quickturn fast_clock fclk

begin
  Generate1 : if genblk1 : (DUMMY2 = 3) generate
  begin
    sv <= v ;
  elsif DUMMY3 : (DUMMY2 = 2) generate
  begin

    process --:o443
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        if (DUMMY0 = '1') then
          _zzsv <= v ;
        end if;
      end if ;
    end process ;
    sv <= _zzsv ;
  else DUMMY4 : generate
  begin
    doSample <= (DUMMY0 or DUMMY1) ;

    process --:o453
    (*)
    begin
      if (doSample = '1') then
        _zzsv <= v ;
      end if;
    end process ;
    sv <= _zzsv ;
  end generate ;
end module;
