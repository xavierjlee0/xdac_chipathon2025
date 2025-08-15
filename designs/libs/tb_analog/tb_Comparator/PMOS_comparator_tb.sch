v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 420 790 420 830 {lab=inp}
N 330 780 330 820 {lab=inn}
N 630 890 630 930 {lab=#net1}
N 480 790 480 830 {lab=iref}
N 480 890 480 930 {lab=GND}
N 630 990 630 1030 {lab=GND}
N 330 970 330 1010 {lab=GND}
N 420 970 420 1010 {lab=GND}
N 600 760 660 760 {lab=inn}
N 600 720 660 720 {lab=inp}
N 700 780 700 840 {lab=iref}
N 780 740 830 740 {lab=out}
N 610 660 720 660 {lab=VDD}
N 720 660 720 700 {lab=VDD}
N 330 760 330 780 {lab=inn}
N 390 760 600 760 {lab=inn}
N 330 760 390 760 {lab=inn}
N 720 780 720 800 {lab=GND}
N 630 820 630 830 {lab=VDD}
N 540 820 540 840 {lab=iref}
N 480 820 540 820 {lab=iref}
N 540 900 540 910 {lab=GND}
N 480 910 540 910 {lab=GND}
N 330 880 330 910 {lab=#net2}
N 420 890 420 910 {lab=#net3}
N 820 740 820 770 {lab=out}
N 820 830 820 870 {lab=GND}
C {devices/code_shown.sym} 1200 280 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
let fsig = 20k
let fnsig = 200k
let tper=1/fsig
let tfr = 0.5*tper
let ton = 0.5*tper-2*tfr


let tstop =2 * tper
let tstep = 0.001*tper


**voltages
*alter @VINN[PULSE] = [ 0 3.1 0 $&tfr $&tfr $&ton $&tper 3 ]
*alter @VINN[DC] = 0
alter @VINN[SIN] = [ 1.7 1.5 $&fnsig 0 0 ]

alter @VINP[PULSE] = [ 0 3.0 1u $&tfr $&tfr $&ton $&tper 3 ]
*alter @VINP[SIN] = [ 1.7 1.5 $&fsig 0 0 ]
alter @VINP[DC] = 2

**simulation
OP
*show all > op.log
show all


tran $&tstep $&tstop
plot v(inp) v(inn) v(out)
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
C {vsource.sym} 630 960 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 420 940 0 0 {name=VINP value=.3 savecurrent=false}
C {gnd.sym} 480 930 0 0 {name=l1 lab=GND}
C {gnd.sym} 630 1030 0 0 {name=l2 lab=GND}
C {gnd.sym} 330 1010 0 0 {name=l3 lab=GND}
C {gnd.sym} 420 1010 0 0 {name=l4 lab=GND}
C {gnd.sym} 720 800 0 0 {name=l7 lab=GND}
C {vdd.sym} 610 660 0 0 {name=l8 lab=VDD}
C {vdd.sym} 630 820 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 630 760 0 0 {name=p1 sig_type=std_logic lab=inn}
C {lab_wire.sym} 630 720 0 0 {name=p2 sig_type=std_logic lab=inp}
C {lab_wire.sym} 700 810 1 0 {name=p3 sig_type=std_logic lab=iref}
C {lab_wire.sym} 480 810 0 0 {name=p4 sig_type=std_logic lab=iref}
C {lab_wire.sym} 420 810 0 0 {name=p6 sig_type=std_logic lab=inp}
C {noconn.sym} 830 740 2 0 {name=l5}
C {lab_wire.sym} 810 740 0 0 {name=p5 sig_type=std_logic lab=out}
C {vsource.sym} 330 940 0 0 {name=VINN value=.8 savecurrent=false}
C {libs/core_analog/Comparator/Pmos_Comparator.sym} 680 700 0 0 {name=x1}
C {res.sym} 630 860 0 0 {name=R1
value=100
footprint=1206
device=resistor
m=1}
C {res.sym} 540 870 0 0 {name=R2
value=1MEG
footprint=1206
device=resistor
m=1}
C {res.sym} 420 860 0 0 {name=R3
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} 330 850 0 0 {name=R4
value=10
footprint=1206
device=resistor
m=1}
C {capa.sym} 820 800 0 0 {name=C1
m=1
value=0.05p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 820 870 0 0 {name=l6 lab=GND}
