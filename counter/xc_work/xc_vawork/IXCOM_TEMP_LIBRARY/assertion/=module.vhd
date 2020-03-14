architecture module of ASSERTION is
  signal DUMMY0 : std_logic ;
  -- quickturn uplevel DUMMY0 1
  signal FAILURE : std_logic ;
  -- quickturn keep_net FAILURE

begin
  FAILURE <= DUMMY0 ;
end module;
