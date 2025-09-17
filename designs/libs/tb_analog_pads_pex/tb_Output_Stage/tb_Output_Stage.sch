v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1430 -600 -1430 -560 {lab=GND}
N -1350 -600 -1350 -560 {lab=GND}
N -1430 -800 -1430 -760 {lab=VDD}
N -1430 -700 -1430 -660 {lab=#net1}
N -920 -800 -920 -760 {lab=VDD}
N -920 -530 -920 -490 {lab=GND}
N -870 -680 -820 -680 {lab=out}
N -840 -620 -840 -580 {lab=GND}
N -1060 -660 -1060 -650 {lab=n_gate}
N -1060 -650 -1000 -650 {lab=n_gate}
N -820 -680 -780 -680 {lab=out}
N -800 -620 -800 -600 {lab=GND}
N -840 -600 -800 -600 {lab=GND}
N -1060 -710 -1060 -680 {lab=p_gate}
N -1060 -710 -1000 -710 {lab=p_gate}
N -1350 -680 -1350 -660 {lab=#net2}
N -1350 -680 -1230 -680 {lab=#net2}
N -1230 -660 -1230 -570 {lab=GND}
N -1350 -570 -1230 -570 {lab=GND}
N -1360 -190 -1360 -160 {lab=GND}
N -1360 -310 -1360 -250 {lab=#net3}
N -1360 -390 -1360 -370 {lab=VDDd}
N -1360 -390 -1350 -390 {lab=VDDd}
N -1350 -440 -1350 -390 {lab=VDDd}
N -1440 -190 -1440 -160 {lab=GND}
N -1440 -420 -1440 -370 {lab=VSSd}
N -1440 -310 -1440 -250 {lab=#net4}
N -920 -600 -920 -590 {lab=#net5}
C {devices/code_shown.sym} -680 -1040 0 0 {name=NGSPICE only_toplevel=true
value="
.global VDDd VSSd

.control
save all
let fsig = 20k
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
plot v(out) p_gate n_gate
plot v(out)/8 v1#branch v4#branch
plot v4#branch

meas tran v_max MAX v(out)
meas tran v_min MIN v(out)
let vpp = $&v_max - $&v_min
print vpp

write Output_Stage_tb.raw
.endc
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
C {vdd.sym} -920 -800 0 0 {name=l1 lab=VDD}
C {gnd.sym} -920 -490 0 0 {name=l2 lab=GND}
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
C {libs/core_analog/op_Deadtime_Driver/op_Deadtime_Driver.sym} -1080 -670 0 0 {name=x2}
C {vsource.sym} -1360 -220 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} -1360 -160 0 0 {name=l8 lab=GND}
C {res.sym} -1360 -340 0 0 {name=R2
value=10
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -1350 -410 0 0 {name=p3 sig_type=std_logic lab=VDDd}
C {vsource.sym} -1440 -220 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} -1440 -160 0 0 {name=l9 lab=GND
value=0}
C {lab_wire.sym} -1440 -380 0 0 {name=p4 sig_type=std_logic lab=VSSd}
C {devices/code_shown.sym} -1030 -340 0 0 {name=Models1 only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"}
C {res.sym} -1440 -340 0 0 {name=R4
value=10
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -1000 -710 0 0 {name=p2 sig_type=std_logic lab=p_gate}
C {lab_wire.sym} -1000 -650 0 0 {name=p5 sig_type=std_logic lab=n_gate

}
C {vsource.sym} -920 -560 0 0 {name=V4 value=0 savecurrent=false}
