v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 490 610 {}
N 450 880 450 920 {lab=inp}
N 330 780 330 820 {lab=inn}
N 980 910 980 950 {lab=VDD}
N 640 880 640 920 {lab=iref}
N 640 980 640 1020 {lab=GND}
N 980 1010 980 1050 {lab=GND}
N 330 880 330 920 {lab=GND}
N 450 980 450 1020 {lab=GND}
N 660 770 720 770 {lab=inp}
N 910 750 960 750 {lab=out}
N 610 680 720 680 {lab=VDD}
N 330 760 330 780 {lab=inn}
N 860 810 860 830 {lab=GND}
N 470 730 680 730 {lab=inn}
N 410 730 470 730 {lab=inn}
N 680 730 720 730 {lab=inn}
N 330 730 410 730 {lab=inn}
N 330 730 330 760 {lab=inn}
N 450 770 660 770 {lab=inp}
N 450 770 450 880 {lab=inp}
N 780 790 780 820 {lab=GND}
N 760 790 760 880 {lab=iref}
N 640 880 760 880 {lab=iref}
N 720 680 780 680 {lab=VDD}
N 780 680 780 710 {lab=VDD}
N 840 750 860 750 {lab=out}
N 860 750 910 750 {lab=out}
C {devices/code_shown.sym} 1100 0 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
let fsig = 250k
let fnsig = 42k

let tper=1/fsig
let tfr = 0.5*tper
let ton = 0.5*tper-2*tfr


let tstop =2 * tper
let tstep = 0.001*tper


**voltages
alter @VINN[PULSE] = [ 0.5 2.5 0 $&tfr $&tfr 100p $&tper 15 ]
*alter @VINN[DC] = 0
*alter @VINN[SIN] = [ 1 0.6 $&fnsig 0 0 ]

*alter @VINP[PULSE] = [ 0 3.0 1u $&tfr $&tfr $&ton $&tper 3 ]
alter @VINP[SIN] = [ 1.5 0.9 $&fnsig 0 0 ]

*alter @VINP[DC] = 3.3

**simulation
OP
*show all > op.log
show all


tran $&tstep $&tstop
plot inn inp out


write PMOS_comparator_tb.raw
.endc
"}
C {devices/code_shown.sym} 1120 910 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {isource.sym} 640 950 0 0 {name=I0 value=10u}
C {vsource.sym} 980 980 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 450 950 0 0 {name=VINP value=1.7 savecurrent=false}
C {gnd.sym} 640 1020 0 0 {name=l1 lab=GND}
C {gnd.sym} 980 1050 0 0 {name=l2 lab=GND}
C {gnd.sym} 330 920 0 0 {name=l3 lab=GND}
C {gnd.sym} 450 1020 0 0 {name=l4 lab=GND}
C {gnd.sym} 780 820 0 0 {name=l7 lab=GND}
C {vdd.sym} 610 680 0 0 {name=l8 lab=VDD}
C {vdd.sym} 980 910 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 670 730 0 0 {name=p1 sig_type=std_logic lab=inn}
C {lab_wire.sym} 690 770 0 0 {name=p2 sig_type=std_logic lab=inp}
C {lab_wire.sym} 640 900 0 0 {name=p4 sig_type=std_logic lab=iref}
C {lab_wire.sym} 450 900 0 0 {name=p6 sig_type=std_logic lab=inp}
C {capa.sym} 860 780 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 860 830 0 0 {name=l6 lab=GND}
C {noconn.sym} 960 750 2 0 {name=l5}
C {lab_wire.sym} 940 750 0 0 {name=p5 sig_type=std_logic lab=out}
C {vsource.sym} 330 850 0 0 {name=VINN value=2 savecurrent=false}
C {libs/core_analog/Comparator/Pmos_Comparator.sym} 740 710 0 0 {name=x1}
