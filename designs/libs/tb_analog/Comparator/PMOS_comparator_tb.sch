v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 420 790 420 830 {lab=inp}
N 330 780 330 820 {lab=inn}
N 540 810 540 850 {lab=VDD}
N 480 790 480 830 {lab=iref}
N 480 890 480 930 {lab=GND}
N 540 910 540 950 {lab=GND}
N 330 880 330 920 {lab=GND}
N 420 890 420 930 {lab=GND}
N 600 760 660 760 {lab=inn}
N 600 720 660 720 {lab=inp}
N 770 640 770 700 {lab=iref}
N 830 740 880 740 {lab=out}
N 620 810 720 810 {lab=GND}
N 610 640 720 640 {lab=VDD}
N 720 640 720 680 {lab=VDD}
N 330 760 330 780 {lab=inn}
N 390 760 600 760 {lab=inn}
N 330 760 390 760 {lab=inn}
C {devices/code_shown.sym} 1200 280 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
let fsig = 200k
let fnsig = 400k
let tper=1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr


let tstop =2 * tper
let tstep = 0.001*tper


**voltages
*alter @VINN[PULSE] = [ 0 3.1 0 $&tfr $&tfr $&ton $&tper 3 ]
*alter @VINN[DC] = 0
alter @VINN[SIN] = [ 1.7 1.5 $&fnsig 0 0 ]

*alter @VINP[PULSE] = [ 0 3.0 1u $&tfr $&tfr $&ton $&tper 3 ]
alter @VINP[SIN] = [ 1.7 1.5 $&fsig 0 0 ]
*alter @VINP[DC] = 3.3

**simulation
OP
*show all > op.log
show all


tran $&tstep $&tstop

write PMOS_comparator_tb.raw
.endc
"}
C {devices/code_shown.sym} 1200 900 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {isource.sym} 480 860 0 0 {name=I0 value=10u}
C {vsource.sym} 540 880 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 420 860 0 0 {name=VINP value=.3 savecurrent=false}
C {gnd.sym} 480 930 0 0 {name=l1 lab=GND}
C {gnd.sym} 540 950 0 0 {name=l2 lab=GND}
C {gnd.sym} 330 920 0 0 {name=l3 lab=GND}
C {gnd.sym} 420 930 0 0 {name=l4 lab=GND}
C {gnd.sym} 620 810 0 0 {name=l7 lab=GND}
C {vdd.sym} 610 640 0 0 {name=l8 lab=VDD}
C {vdd.sym} 540 810 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 630 760 0 0 {name=p1 sig_type=std_logic lab=inn}
C {lab_wire.sym} 630 720 0 0 {name=p2 sig_type=std_logic lab=inp}
C {lab_wire.sym} 770 670 1 0 {name=p3 sig_type=std_logic lab=iref}
C {lab_wire.sym} 480 810 0 0 {name=p4 sig_type=std_logic lab=iref}
C {lab_wire.sym} 420 810 0 0 {name=p6 sig_type=std_logic lab=inp}
C {noconn.sym} 880 740 2 0 {name=l5}
C {lab_wire.sym} 860 740 0 0 {name=p5 sig_type=std_logic lab=out}
C {vsource.sym} 330 850 0 0 {name=VINN value=.8 savecurrent=false}
C {libs/core_analog/Comparator/Pmos_Comparator.sym} 680 680 0 0 {name=x1}
