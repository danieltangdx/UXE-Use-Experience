architecture module of axis_mux2 is

begin
  DUMMY0 <= (((in1 and not(sel)) or (in2 and sel)) or (in1 and in2)) ;
end module;
