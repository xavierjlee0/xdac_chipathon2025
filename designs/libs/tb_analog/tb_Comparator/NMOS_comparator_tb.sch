v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -310 70 -310 110 {lab=inp}
N -400 50 -400 90 {lab=inn}
N -100 210 -100 250 {lab=#net1}
N -220 120 -220 160 {lab=iref}
N -220 220 -220 260 {lab=GND}
N -100 310 -100 350 {lab=GND}
N -400 250 -400 290 {lab=GND}
N -310 260 -310 300 {lab=GND}
N -5 -90 -5 -30 {lab=VDD}
N -130 -10 -70 -10 {lab=inn}
N -130 30 -70 30 {lab=inp}
N -25 -90 -25 -30 {lab=iref}
N -5 50 -5 80 {lab=GND}
N -400 -10 -400 50 {lab=inn}
N -400 -10 -130 -10 {lab=inn}
N 55 10 105 10 {lab=out}
N -70 30 -65 30 {lab=inp}
N -70 -10 -65 -10 {lab=inn}
N 95 150 95 190 {lab=GND}
N -100 110 -100 150 {lab=VDD}
N -180 140 -180 160 {lab=iref}
N -220 140 -180 140 {lab=iref}
N -180 220 -180 240 {lab=GND}
N -220 240 -180 240 {lab=GND}
N -310 110 -310 120 {lab=inp}
N -400 90 -400 110 {lab=inn}
N -400 170 -400 190 {lab=#net2}
N -310 180 -310 200 {lab=#net3}
N 95 70 95 90 {lab=#net4}
C {devices/code_shown.sym} 470 -450 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
let fsig = 200k
let fnsig = 20k
let tper=1/fsig
let tfr = 0.5*tper
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
*alter @VINN[PULSE] = [ 0 2.4 0 $&tfr $&tfr $&ton $&tper 3 ]
alter @VINN[DC] = 2
*alter @VINN[SIN] = [ 2.4 0.1 $&fnsig 0 0 ]

*alter @VINP[PULSE] = [ 0 3.3 1u $&tfr $&tfr $&ton $&tper 3 ]
alter @VINP[DC] = 3.3
alter @VINP[SIN] = [ 2.20 0.5 $&fsig 0 0 ]


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
C {isource.sym} -220 190 2 0 {name=I0 value=10u}
C {vsource.sym} -100 280 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} -310 230 0 0 {name=VINP value=2 savecurrent=false}
C {gnd.sym} -220 260 0 0 {name=l1 lab=GND}
C {gnd.sym} -100 350 0 0 {name=l2 lab=GND}
C {gnd.sym} -400 290 0 0 {name=l3 lab=GND}
C {gnd.sym} -310 300 0 0 {name=l4 lab=GND}
C {gnd.sym} -5 80 0 0 {name=l7 lab=GND}
C {vdd.sym} -5 -90 0 0 {name=l8 lab=VDD}
C {vdd.sym} -100 110 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} -100 -10 0 0 {name=p1 sig_type=std_logic lab=inn}
C {lab_wire.sym} -100 30 0 0 {name=p2 sig_type=std_logic lab=inp}
C {lab_wire.sym} -25 -60 1 0 {name=p3 sig_type=std_logic lab=iref}
C {lab_wire.sym} -220 140 0 0 {name=p4 sig_type=std_logic lab=iref}
C {lab_wire.sym} -310 80 0 0 {name=p6 sig_type=std_logic lab=inp}
C {noconn.sym} 105 10 2 0 {name=l5}
C {lab_wire.sym} 85 10 0 0 {name=p5 sig_type=std_logic lab=out}
C {vsource.sym} -400 220 0 0 {name=VINN value=1 savecurrent=false}
C {libs/core_analog/Comparator/Nmos_Comparator.sym} -45 -30 0 0 {name=x1}
C {capa.sym} 95 120 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 95 190 0 0 {name=l6 lab=GND}
C {res.sym} -310 150 0 0 {name=R3
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} -400 140 0 0 {name=R1
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} -100 180 0 0 {name=R2
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} -180 190 0 0 {name=R4
value=1MEG
footprint=1206
device=resistor
m=1}
C {vsource.sym} 95 40 0 0 {name=V2 value=0 savecurrent=false}
