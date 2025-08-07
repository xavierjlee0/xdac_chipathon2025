v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -70 -70 -70 -40 {lab=GND}
N 0 -70 0 -40 {lab=GND}
N -70 -190 -70 -130 {lab=#net1}
N 0 -210 0 -130 {lab=#net2}
N -70 -270 -70 -250 {lab=VDDd}
N 0 -290 0 -270 {lab=in}
N 0 -290 80 -290 {lab=in}
N -70 -270 -60 -270 {lab=VDDd}
N -60 -320 -60 -270 {lab=VDDd}
N 100 -70 100 -40 {lab=GND}
N 100 -180 100 -130 {lab=Vssd}
N 250 -270 270 -270 {lab=nmos}
N 250 -290 310 -290 {lab=pmos}
N 270 -270 330 -270 {lab=nmos}
N 80 -270 80 -230 {lab=#net3}
C {title.sym} 160 30 0 0 {name=l1 author="Christopher O Amankwaa"}
C {vsource.sym} -70 -100 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 0 -100 0 0 {name=Vin value="1.5 AC 1.2" savecurrent=false}
C {gnd.sym} -70 -40 0 0 {name=l2 lab=GND}
C {gnd.sym} 0 -40 0 0 {name=l3 lab=GND}
C {res.sym} -70 -220 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 0 -240 0 0 {name=R2
value=100
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 40 -290 0 0 {name=p5 sig_type=std_logic lab=in}
C {lab_wire.sym} -60 -290 0 0 {name=p3 sig_type=std_logic lab=VDDd}
C {vsource.sym} 100 -100 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 100 -40 0 0 {name=l4 lab=GND
value=0}
C {lab_wire.sym} 100 -140 0 0 {name=p4 sig_type=std_logic lab=Vssd}
C {noconn.sym} 310 -290 2 0 {name=l7}
C {noconn.sym} 330 -270 2 0 {name=l8}
C {lab_wire.sym} 290 -290 0 0 {name=p2 sig_type=std_logic lab=pmos}
C {lab_wire.sym} 310 -270 0 0 {name=p1 sig_type=std_logic lab=nmos}
C {devices/code_shown.sym} 1120 -100 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1130 -1100 0 0 {name=NGSPICE only_toplevel=true
value="

.global VDDd VSSd
.control
save all
**Frequency & time settings
let fsig = 900k
let tper=1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr

let tstop = 4 * tper
let tstep = 0.001*tper


**voltages
alter @Vin[PULSE] = [ 0 2.3 0 $&tfr $&tfr $&ton $&tper 3 ]
alter @Vin[DC] = 0
*alter @Vin[SIN] = [ 1.7 1.5 $&fsig 0 0 ]

**simulation
OP
*show all > op.log
show all

tran $&tstep $&tstop

**Rise and Fall time for delay checking
meas tran trise_p TRIG v(pmos) VAL=0.66 RISE=3 TARG v(pmos) VAL=3.0 RISE=3
meas tran trise_n TRIG v(nmos) VAL=0.66 RISE=3 TARG v(nmos) VAL=3.0 RISE=3

meas tran tfall_p TRIG v(pmos) VAL=3.0 FALL=2 TARG v(pmos) VAL=0.66 FALL=2
meas tran tfall_n TRIG v(nmos) VAL=3.0 FALL=2 TARG v(nmos) VAL=0.66 FALL=2

plot nmos pmos

**Buffer overshoot checker

meas tran nmos_min MIN v(nmos)
meas tran nmos_max MAX v(nmos)

**AC simulation
AC dec 100 1 10e6
*plot db(v(nmos)) db(v(pmos))
*plot 180*cph(v(nmos))/pi 180*cph(v(pmos))/pi

write Deadtime_Driver_tb.raw
.endc
"}
C {libs/core_analog/Deadtime_Driver/op_Deadtime_Driver.sym} 230 -280 0 0 {name=x1}
C {gnd.sym} 80 -230 0 0 {name=l5 lab=GND
value=0}
