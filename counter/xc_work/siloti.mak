VERICOM_OPTIONS= -rcFile ./xc_work/siloti.rc -comment_transoff_regions -quiet -silent
VHDLCOM_OPTIONS= -rcFile ./xc_work/siloti.rc -quiet -silent
XHOME= /tools/cadence/UXE171_p98/tools.lnx86
compile_siloti: siloti_pkg
	vericom $(VERICOM_OPTIONS) +define+SILOTI -sv -lib xc_ncwork $(XHOME)/etc/ixcom/axBMod.v
	vericom $(VERICOM_OPTIONS) +define+SILOTI -sv -lib xc_ncwork $(XHOME)/etc/ixcom/axEMod.v
	vhdlcom $(VHDLCOM_OPTIONS) -lib AXIS $(XHOME)/packages/src/AXIS/axis.vhd
	vhdlcom $(VHDLCOM_OPTIONS) -lib NCUTILS $(XHOME)/packages/src/NCUTILS/ncutilities.vhd
	vericom $(VERICOM_OPTIONS) -2001 -lib xc_ncwork $(XHOME)/etc/ixcom/siloti_stubs.v

xc_pkg:
	echo Compiling packages


xcva_pkg:
	echo Compiling packages


siloti_pkg:
	@echo Compiling packages

clean: 
	@rm -rf vericomLog vhdlcomLog silotiLog ./xc_work/novaslibs/xc_ncwork.lib++ ./xc_work/novaslibs/AXIS.lib++ ./xc_work/novaslibs/work.lib++ ./xc_work/novaslibs/NCUTILS.lib++
run_siloti: 
	siloti -rcFile ./xc_work/siloti.rc -nologo -cont_ba_err -nclib -sigexp -de -verdi -top "counter_tb "
