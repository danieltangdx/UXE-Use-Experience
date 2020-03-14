architecture module of ixc_ev is
  component Q_EVDECT
    port (
      Q : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  -- quickturn fast_clock fclk

begin
  Generate1 : if genblk1 : ((ASYNC)/=0) generate
    signal _zzsr : std_logic_vector(conv_integer((ext(W,$QKTN_MAX(W'length,32))
     - integer_to_std(1,$QKTN_MAX(W'length,32)))) downto 0+integer'PRED(1)) ;
  begin

    process --:o359
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        if (DUMMY0 = '1') then
          _zzsr <= s ;
        end if;
      end if ;
    end process ;
    ev <= (DUMMY0 and boolean_to_std(_zzsr /= s)) ;
  else DUMMY1 : generate
  begin
    genblk1 : for i in 0 to conv_integer(W) - 1 generate
    begin
      dect : Q_EVDECT
        port map (
           ev
          ,s(i)
          ,std_logic'('1')
        ) ;
    end generate ;
  end generate ;
end module;
