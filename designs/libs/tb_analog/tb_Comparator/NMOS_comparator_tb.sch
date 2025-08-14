v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -310 60 -310 100 {lab=inp}
N -400 50 -400 90 {lab=inn}
N -150 70 -150 110 {lab=VDD}
N -220 60 -220 100 {lab=iref}
N -220 160 -220 200 {lab=GND}
N -150 170 -150 210 {lab=GND}
N -400 150 -400 190 {lab=GND}
N -310 160 -310 200 {lab=GND}
N -15 -120 -15 -60 {lab=VDD}
N -130 -10 -70 -10 {lab=inn}
N -130 10 -70 10 {lab=inp}
N 15 -100 15 -40 {lab=iref}
N -25 60 -25 90 {lab=GND}
N -400 -10 -400 50 {lab=inn}
N -400 -10 -130 -10 {lab=inn}
N 65 0 115 0 {lab=out}
N -70 10 -65 10 {lab=inp}
N -70 -10 -65 -10 {lab=inn}
C {devices/code_shown.sym} 470 -450 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
let fsig = 200k
let fnsig = 400k
let tper=1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr


let tstop = 2*tper
let tstep = 0.001*tper


**voltages
<<<<<<< Updated upstream
*alter @VINN[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton $&tper 3 ]
*alter @VINN[DC] = 2
alter @VINN[SIN] = [ 1.7 1.5 $&fnsig 0 0 ]

*alter @VINP[PULSE] = [ 0 3.3 1u $&tfr $&tfr $&ton $&tper 3 ]
alter @VINP[SIN] = [ 1.7 1.5 $&fsig 0 0 ]
alter @VINP[DC] = 3.3
=======
alter @VINN[PULSE] = [ 0 3.28 0 $&tfr $&tfr $&ton $&tper 3 ]
alter @VINN[DC] = 2
*alter @VINN[SIN] = [ 2.4 0.1 $&fnsig 0 0 ]

alter @VINP[PULSE] = [ 0 3.3 1u $&tfr $&tfr $&ton $&tper 3 ]
alter @VINP[DC] = 3.3
*alter @VINP[SIN] = [ 2.35 0.1 $&fsig 0 0 ]


>>>>>>> Stashed changes

**simulation
OP
*show all > op.log
show all


tran $&tstep $&tstop
plot v(inn) v(inp) v(out)
plot v(out)
write NMOS_comparator_tb.raw
.endc
"}
C {devices/code_shown.sym} 240 30 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {isource.sym} -220 130 2 0 {name=I0 value=10u}
C {vsource.sym} -150 140 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} -310 130 0 0 {name=VINP value=2 savecurrent=false}
C {gnd.sym} -220 200 0 0 {name=l1 lab=GND}
C {gnd.sym} -150 210 0 0 {name=l2 lab=GND}
C {gnd.sym} -400 190 0 0 {name=l3 lab=GND}
C {gnd.sym} -310 200 0 0 {name=l4 lab=GND}
C {gnd.sym} -25 90 0 0 {name=l7 lab=GND}
C {vdd.sym} -15 -120 0 0 {name=l8 lab=VDD}
C {vdd.sym} -150 70 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} -100 -10 0 0 {name=p1 sig_type=std_logic lab=inn}
C {lab_wire.sym} -100 10 0 0 {name=p2 sig_type=std_logic lab=inp}
C {lab_wire.sym} 15 -70 1 0 {name=p3 sig_type=std_logic lab=iref}
C {lab_wire.sym} -220 80 0 0 {name=p4 sig_type=std_logic lab=iref}
C {lab_wire.sym} -310 80 0 0 {name=p6 sig_type=std_logic lab=inp}
C {noconn.sym} 115 0 2 0 {name=l5}
C {lab_wire.sym} 95 0 0 0 {name=p5 sig_type=std_logic lab=out}
C {vsource.sym} -400 120 0 0 {name=VINN value=1 savecurrent=false}
C {libs/core_analog/Comparator/Nmos_Comparator.sym} -45 -60 0 0 {name=x1}
