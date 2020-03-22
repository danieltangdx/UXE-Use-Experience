TEST = vid_test1

#######################################################################
#
# vlan compile the file for ixcom
#
#######################################################################
vlan:
# complie file use the file list,
#	vlan -sv -f counter\
# complie the file by file name
	vlan -sv -f counter -incdir ./rtl
#######################################################################
#
# ixcom elab/codegen hardware or software model, compile the DUT
#
#######################################################################
ixcom:
	ixcom -64 +dut+counter -top counter\
		-nccompile +tb_import_systf+fdisplaygit clone https://github.com/seisman/how-to-write-makefile.git
		+xcDesignTop+counter_tb.dut=counter\
	  -timescale 1ps/100fs
#######################################################################
#
# irun compile the TBelab/codegen hardware or software model
#
#######################################################################
irun:
	irun -64bit  -c  -f xc_work/irun.f -vtimescale 1ps/100fs \
	-top counter_tb

pxp_run:
	xeDebug --ncsim +UVM_TESTNAME=$(TEST) -- -gui -input run.tcl &

clean:
	rm -rf AxisWork cellList dbFiles INCA_libs PDB QTDB\
		tmp waves.shm WORK xc_work CLOCK_SOURCES DBEngine.msg\
		irun.history irun.key irun.log ixcom.log monitor158550.msg\
		monitor159206.msg ncls.log vlan.log xe.lck xe.msg xeCompile.key\
		xeCompile.log xedebugenv.gui xedebugenv.tcl xeDebug.key xeDebug.log\
		counter.bak.phy counter.phy counter.shm lic.log simvision384423.diag monitor315540.msg\
		simvision.log trace.bak.phy trace.phy trace.shm waveform.bak.phy waveform.phy\
		waveform.shm waves.bak.phy waves.phy


