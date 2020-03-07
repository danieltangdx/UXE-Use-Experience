TEST = vid_test1

vlan:
	vlan  -sv 		-f design_818\

            #    -incdir ../src/v
ixcom:
	ixcom -64 +dut+arinc818_ip -top arinc818_ip\
		-nccompile +tb_import_systf+fdisplay \
		+xcDesignTop+vid_tb_top.dut=arinc818_ip\
  		 -ua  -timescale 1ps/100fs

irun:
	irun -64bit  -c -sv -f xc_work/irun.f -vtimescale 1ps/100fs -uvm \
    +incdir+./vid_test_src/clk_agent\
    +incdir+./vid_test_src/rst_agent\
    +incdir+./vid_test_src/vid_agent \
    +incdir+./vid_test_src/vid_env \
    +incdir+./vid_test_src/vid_tb\
		+incdir+./vid_test_src/vid_testcase\
    ./vid_test_src/vid_agent/bmp_pkg.sv \
    ./vid_test_src/clk_agent/clk_agent_pkg.sv \
    ./vid_test_src/clk_agent/clkif.sv \
    ./vid_test_src/rst_agent/rst_agent_pkg.sv \
		./vid_test_src/rst_agent/rst_if.sv \
		./vid_test_src/vid_agent/vid_agent_pkg.sv \
		./vid_test_src/vid_agent/vid_if.sv \
    ./vid_test_src/vid_env/vid_env_pkg.sv \
    ./vid_test_src/vid_testcase/vid_test_pkg.sv \
    ./vid_test_src/vid_tb/vid_tb_top.sv\
	  -access +rwc -nowarn CUVIHR  -top vid_tb_top

pxp_run:
	xeDebug --ncsim +UVM_TESTNAME=$(TEST) -- -gui -input run.tcl &

clean:
	rm -rf AxisWork cellList dbFiles INCA_libs PDB QTDB\
		tmp waves.shm WORK xc_work CLOCK_SOURCES DBEngine.msg\
		irun.history irun.key irun.log ixcom.log monitor158550.msg\
		monitor159206.msg ncls.log vlan.log xe.lck xe.msg xeCompile.key\
		xeCompile.log xedebugenv.gui xedebugenv.tcl xeDebug.key xeDebug.log\
		818.bak.phy 818.phy 818.shm lic.log simvision384423.diag monitor315540.msg\
		simvision.log trace.bak.phy trace.phy trace.shm waveform.bak.phy waveform.phy\
		waveform.shm waves.bak.phy waves.phy
