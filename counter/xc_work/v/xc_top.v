`timescale 1ns/1ns
`include "uxe_axis_smem.v"
`include "uxe_axis_prim.v"
`include "axBMod.v"
`include "axEMod.v"
`include "ixc_prims.v"
module xc_top;

bit evdOn;
bit hwOutInit;
bit hwOutInit1;
bit cpi_capture_enable;
bit assertion_coverage_reset_t;
int xsiid;
event hwMatchEvent;
event hmpiSwTbcEvent;
event hwOutEvent;
event evalAxisMem;
`define MARG_VMEM_WIDTH 64
`define MARG_VMEM_BLOCK 1048576
`define MARG_DEPOSIT_WIDTH 32
`define MARG_DPI_WIDTH 32
`define MARG_DEPOSIT_UA_WIDTH 1
`define MARG_MEM_FILENAME_WIDTH 8
`define MARG_MEM_FILEFORMAT_WIDTH 8
bit extend_behp_cyc;
bit emucbPending;
int po_id;
reg [0:0] po_v;
reg po_b;
int po_int;

bit evalSch = 0;
bit evalStart;
event doEvalSch;
bit doSwapIn;
bit doCompTbx;
bit evalDone;
bit dpiTrace;
bit dpiProf;
bit no_emucb;
bit dp_capture_enable = 0;
wire nullClk;
import "DPI-C" function int xcDesSig();
import "DPI-C" context function void xcInit(input int version);
// pragma dpiopt noncontext
import "DPI-C" pure function int xcInEvent(input int i, input logic v);
// pragma dpiopt noncontext
import "DPI-C" pure function int xcOutMatch(input int i, input logic v);
// pragma dpiopt noncontext
import "DPI-C" pure function int xcOutMatchVec(input int i, input logic [0:0] v);
import "DPI-C" function int xcOutEvent(output logic v);
import "DPI-C" function int xcOutEventInt(output int v);
import "DPI-C" function int xcOutEventVec(output bit [0:0] v);
// pragma dpiopt noncontext
import "DPI-C" function int xcOutUpdate(input int i, output bit [0:0] v);
// pragma dpiopt noncontext
import "DPI-C" pure function int xcOutSwTbc(input int i, input bit v);
// pragma dpiopt noncontext
import "DPI-C" pure function int xcOutSwTbcVec(input int i, input bit [0:0] v);
import "DPI-C" context function int xcEvalAutorun(input int extPending);
import "DPI-C" function int xcEvalAutorunNC(input int extPending);
// pragma dpiopt noncontext
import "DPI-C" pure function int xcEvalExtend();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcEvalTurbo();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcEvalTurboNoStop();
import "DPI-C" context function void xcStartNbrun(output longint delay);
import "DPI-C" function void xcStartNbrunNC(output longint delay);
import "DPI-C" context function int xcCheckNbrun(output longint delay);
import "DPI-C" context function void GFIFO_flush();
import "DPI-C" function int xcNextEvent(output longint delay, input int extPending);
import "DPI-C" context function int xcNextTbEvent(output longint delay);
import "DPI-C" function int xcNextTbEventNC(output longint delay);
import "DPI-C" function void hipsUpdatePO();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcTbcEvent();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcTbc2Event();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcTbc4Event();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcSchOutEvent();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcSchOutEvent1stPhase();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcSchOutEvent2ndPhase();
import "DPI-C" context function int xcTurboOff();
import "DPI-C" context function int xcEmuOff();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcSwapIn();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcCompTbx();
import "DPI-C" context function int xcPropStopEnd();
// pragma dpiopt noncontext
import "DPI-C" function int xcAxisMread(input int memid, input logic [31:0] addr, output logic [31:0] data);
import "DPI-C" function int xcAxisMwrite(input int memid, input logic [31:0] addr, input logic [31:0] data);
import "DPI-C" function void ixc_time_init(input int unit, input int b);
import "DPI-C" context function void hmpi_initial_call(input int maId);
import "DPI-C" context function void emucb_final();
import "DPI-C" function int xcNextEclk(output longint delay, input int flags);
`include "xc_top_incl.v"

always@(posedge nullClk) void'(xcDesSig());

initial xcInit(3);

function void xcvtf_bufDispFlush;
 fork
 join_none
endfunction

final begin
  emucb_final();
end

// { input section

always@(posedge cpi_capture_enable) begin
end

// } input section

// { deposit section

// deposit event capture is replaced by marg_deposit

// } deposit section

// { output section

// { scalar POs
// } scalar POs
// { vector POs
// } vector POs

always@(hwOutInit) hwOutInit1  = hwOutInit;

always@(hwOutEvent) tkOutEvent();

task tkOutEvent;
begin
 po_id = xcOutEvent(po_b);
 po_id = xcOutEventVec(po_v);
 po_id = xcOutEventInt(po_int);
end
endtask

task tkTbcEvent;
 int tbc_id;
begin
 tbc_id = xcTbcEvent();
 while(tbc_id >= 0) begin
  case(tbc_id)
  default:;
  endcase
  tbc_id = xcTbcEvent();
 end
end
endtask

task tkTbc2Event;
 int tbc_id;
begin
 tbc_id = xcTbc2Event();
 while(tbc_id >= 0) begin
  case(tbc_id)
  default:;
  endcase
  tbc_id = xcTbc2Event();
 end
end
endtask

task tkTbc4Event;
 int tbc_id;
begin
 tbc_id = xcTbc4Event();
 while(tbc_id >= 0) begin
  case(tbc_id)
  default:;
  endcase
  tbc_id = xcTbc4Event();
 end
end
endtask

event outEventStart;
bit outEventDone = 0;
always@(outEventStart)
 outEventDone <= ~outEventDone;

task tkPropStop;
 input int stops;
begin
 if(stops) begin
   if(stops & 1) tkTbcEvent;
   if(stops & 2) tkTbc2Event;
   if(stops & 4) xcvtf_bufDispFlush;
   ->outEventStart;
   @outEventDone;
 end
 extend_behp_cyc = xcPropStopEnd();
end
endtask

always@(hwMatchEvent) begin
end

export "DPI-C" function xcOutSwUpdate;
function void xcOutSwUpdate;
endfunction

always@(hmpiSwTbcEvent)
  xcOutSwUpdate;

// } output section

always @(doEvalSch) begin
 evalSch = ~evalSch;
 @evalStart;
end

longint delay;
int stops;
int poClkEvent;

bit hwrun = 0;
task tkHwRun;
 int ret;
 while(hwrun || extend_behp_cyc) begin
    @evalStart;
    ret = xcEvalTurboNoStop();
    if(ret == 0) continue;
    poClkEvent = xcSchOutEvent1stPhase();
    if (poClkEvent)
      tkOutEvent;
    if(poClkEvent[1] && xcSchOutEvent2ndPhase()) begin
      ->outEventStart;
      @outEventDone;
      tkOutEvent;
    end
    void'(xcPropStopEnd());
 end
 void'(xcTurboOff());
endtask
always@(posedge hwrun) begin
  evalSch = ~evalSch;
  @evalStart;
  extend_behp_cyc = 0;
  emucbPending = 0;
  tkHwRun;
end

bit tbrun = 0;
always@(posedge tbrun) begin
 extend_behp_cyc = 0;
 emucbPending = 1;
 evalSch = ~evalSch;
 @evalStart;
 while(tbrun || extend_behp_cyc) begin
    if(emucbPending)
      stops = xcNextTbEvent(delay);
    else
      stops = xcNextTbEventNC(delay);
    case(stops & 'h300)
    'h000:
      begin
        #(delay);
        hipsUpdatePO();
      end
    'h100:
      begin
        #(delay);
        stops = stops & 'hff;
        poClkEvent = xcSchOutEvent1stPhase();
        if (poClkEvent)
          tkOutEvent;
        if(poClkEvent[1] && xcSchOutEvent2ndPhase()) begin
          ->outEventStart;
          @outEventDone;
          tkOutEvent;
        end
      end
    'h200: break;
    'h300:
      begin
        stops = stops & 'hff;
        if(xcSchOutEvent())
          tkOutEvent;
      end
    endcase
    evalSch = ~evalSch;
    @evalStart;
    void'(xcPropStopEnd());
 end
 void'(xcTurboOff());
end

bit autorun = 0;
always@(posedge autorun) begin
 extend_behp_cyc = 0;
 emucbPending = 1;
 evalSch = ~evalSch;
 @evalStart;
 while(autorun || extend_behp_cyc) begin
  if(emucbPending)
    stops = xcEvalAutorun(extend_behp_cyc);
  else
    stops = xcEvalAutorunNC(extend_behp_cyc);
  if(xcSchOutEvent())
    tkOutEvent;
    evalSch = ~evalSch;
    @evalStart;
    void'(xcPropStopEnd());
 end
 void'(xcEmuOff());
end

event nbrunEvDone;
bit nbrun = 0;
always@(posedge nbrun) begin
 extend_behp_cyc = 0;
 emucbPending = 1;
 evalSch = ~evalSch;
 @evalStart;
 while(nbrun) begin
    if(emucbPending) xcStartNbrun(delay); else xcStartNbrunNC(delay);
    stops = 0;
    while(stops == 0) begin
      fork
        #(delay);
        @nbrunEvDone;
      join_any
      ->nbrunEvDone;
      evalSch = ~evalSch;
      @evalStart;
      stops = xcCheckNbrun(delay);
    end
    if(xcSchOutEvent())
      tkOutEvent;
    extend_behp_cyc = 0;
    emucbPending = 0;
    if(stops & 'hff) begin
      ->outEventStart;
      @outEventDone;
      if(stops & 1)
        tkTbcEvent;
      if(stops & 2)
        tkTbc2Event;
      if(stops & 4)
        xcvtf_bufDispFlush;
      evalSch = ~evalSch;
      @evalStart;
    end else begin
      evalSch = ~evalSch;
      @evalStart;
    end
    {emucbPending,extend_behp_cyc} = xcPropStopEnd();
 end
 evalSch = ~evalSch;
 @evalStart;
 void'(xcTurboOff());
end

task tkSwapIn;
begin
 void'(xcSwapIn());
end
endtask

task tkCompTbx;
begin
 void'(xcCompTbx());
end
endtask

xc_sch_eval xc_sch_eval(evalStart,evalSch);
xc_swapin xc_swapin(doSwapIn);
xc_comptbx xc_comptbx(doCompTbx);
export "DPI-C" function xc_stop;
function void xc_stop();
  $stop;
endfunction
parameter hasSWeclk = 0;
endmodule

program xc_sch_eval(evalStart,evalSch);
output bit evalStart;
input bit evalSch;
 initial begin
  evalStart = ~evalStart;
  while(1) begin
   @(evalSch)
    evalStart = ~evalStart;
  end
 end
endprogram

program xc_swapin(doSwapIn);
input bit doSwapIn;
 initial begin
  if (doSwapIn)
    xc_top.tkSwapIn;
  while(1) begin
   @(posedge doSwapIn)
    xc_top.tkSwapIn;
  end
 end
endprogram

program xc_comptbx(doCompTbx);
input bit doCompTbx;
 initial begin
  while(1) begin
   @(posedge doCompTbx)
    xc_top.tkCompTbx;
  end
 end
endprogram

