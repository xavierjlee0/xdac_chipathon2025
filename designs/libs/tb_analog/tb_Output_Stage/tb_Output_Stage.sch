v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1430 -600 -1430 -560 {lab=GND}
N -1350 -600 -1350 -560 {lab=GND}
N -1350 -690 -1350 -660 {lab=#net1}
N -1430 -800 -1430 -760 {lab=VDD}
N -1430 -700 -1430 -660 {lab=#net2}
N -1350 -690 -1280 -690 {lab=#net1}
N -920 -800 -920 -760 {lab=VDD}
N -920 -600 -920 -560 {lab=GND}
N -1220 -710 -1220 -690 {lab=#net3}
N -1220 -710 -1000 -710 {lab=#net3}
N -1280 -690 -1280 -660 {lab=#net1}
N -1280 -660 -1060 -660 {lab=#net1}
N -870 -680 -820 -680 {lab=out}
N -840 -620 -840 -580 {lab=GND}
N -1060 -660 -1060 -650 {lab=#net1}
N -1060 -650 -1000 -650 {lab=#net1}
N -820 -680 -780 -680 {lab=out}
N -800 -620 -800 -600 {lab=GND}
N -840 -600 -800 -600 {lab=GND}
C {devices/code_shown.sym} -680 -1040 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
let fsig = 500k
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
plot v(out)
meas tran v_max MAX v(out)
meas tran v_min MIN v(out)
let vpp = $&v_max - $&v_min
print vpp

write Output_Stage_tb.raw
.endc
"}
C {devices/code_shown.sym} -680 -390 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vdd.sym} -1430 -800 0 0 {name=l3 lab=VDD}
C {vsource.sym} -1350 -630 0 0 {name=Vin value=3.3 savecurrent=false}
C {vsource.sym} -1430 -630 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -1430 -560 0 0 {name=l4 lab=GND}
C {gnd.sym} -1350 -560 0 0 {name=l5 lab=GND}
C {res.sym} -1430 -730 2 0 {name=R1
value=100m
footprint=1206
device=resistor
m=1}
C {res.sym} -1250 -690 3 0 {name=R2
value=10
footprint=1206
device=resistor
m=1}
C {vdd.sym} -920 -800 0 0 {name=l1 lab=VDD}
C {gnd.sym} -920 -560 0 0 {name=l2 lab=GND}
C {noconn.sym} -780 -680 2 0 {name=l6}
C {res.sym} -840 -650 0 0 {name=R3
value=8
footprint=1206
device=resistor
m=1}
C {gnd.sym} -840 -580 0 0 {name=l7 lab=GND}
C {lab_wire.sym} -830 -680 0 0 {name=p1 sig_type=std_logic lab=out}
C {capa.sym} -800 -650 0 0 {name=C1
m=1
value=400p
footprint=1206
device="ceramic capacitor"}
C {libs/core_analog/Output_Stage/Output_Stage.sym} -950 -680 0 0 {name=x1}
