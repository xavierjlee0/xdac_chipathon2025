v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 20 -90 20 -60 {lab=GND}
N 90 -90 90 -60 {lab=GND}
N 20 -210 20 -150 {lab=#net1}
N 90 -230 90 -150 {lab=#net2}
N 20 -290 20 -270 {lab=VDD}
N 90 -310 90 -290 {lab=in}
N 90 -310 170 -310 {lab=in}
N 170 -350 170 -330 {lab=VDD}
N 170 -290 170 -260 {lab=GND}
N 340 -330 400 -330 {lab=pmos}
N 340 -310 400 -310 {lab=nmos}
C {devices/code_shown.sym} 1050 -1040 0 0 {name=NGSPICE only_toplevel=true
value="
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
meas tran trise_p TRIG v(pmos) VAL=3.0 FALL=3 TARG v(pmos) VAL=0.66 FALL=3
meas tran trise_n TRIG v(nmos) VAL=3.0 FALL=3 TARG v(nmos) VAL=0.66 FALL=3

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
C {title.sym} 160 30 0 0 {name=l1 author="Christopher O Amankwaa"}
C {vsource.sym} 20 -120 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 90 -120 0 0 {name=Vin value="1.5 AC 1.2" savecurrent=false}
C {gnd.sym} 20 -60 0 0 {name=l2 lab=GND}
C {gnd.sym} 90 -60 0 0 {name=l3 lab=GND}
C {vdd.sym} 20 -290 0 0 {name=l4 lab=VDD}
C {res.sym} 20 -240 0 0 {name=R1
value=100m
footprint=1206
device=resistor
m=1}
C {res.sym} 90 -260 0 0 {name=R2
value=100
footprint=1206
device=resistor
m=1}
C {vdd.sym} 170 -350 0 0 {name=l5 lab=VDD}
C {gnd.sym} 170 -260 0 0 {name=l6 lab=GND}
C {noconn.sym} 400 -330 2 0 {name=l7}
C {noconn.sym} 400 -310 2 0 {name=l8}
C {lab_wire.sym} 380 -330 0 0 {name=p1 sig_type=std_logic lab=pmos}
C {lab_wire.sym} 380 -310 0 0 {name=p2 sig_type=std_logic lab=nmos}
C {lab_wire.sym} 130 -310 0 0 {name=p3 sig_type=std_logic lab=in}
C {devices/code_shown.sym} 1050 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {libs/core_analog/Deadtime_Driver/Deadtime_Driver.sym} 320 -310 0 0 {name=x1}
