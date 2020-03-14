architecture module of axis_jkffp is

begin

  process --:o733
  (c,r,s)
    variable DUMMY0 : std_logic_vector(0 to 1) ;
  begin
    if (r = '0') then
      q <= '0' ;
    elsif (s = '0') then
      q <= '1' ;
    elsif (c'event and c = '1') then
      if (e = '1') then
        DUMMY0 := std_logic_vector'(j & k);

        case DUMMY0  is
          when  "01"  =>
            q <= '0' ;
          when  "10"  =>
            q <= '1' ;
          when  "11"  =>
            q <= not(q) ;
          when others => null ;
        end case;
      end if;
    end if ;
  end process ;
end module;
