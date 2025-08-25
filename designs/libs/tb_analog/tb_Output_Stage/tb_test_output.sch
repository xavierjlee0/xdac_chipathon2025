v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -10 -50 -10 -20 {lab=GND}
N -10 -170 -10 -110 {lab=#net1}
N -10 -250 -10 -230 {lab=VDDd}
N -10 -250 0 -250 {lab=VDDd}
N 0 -300 0 -250 {lab=VDDd}
N -90 -50 -90 -20 {lab=GND}
N -90 -280 -90 -230 {lab=VSSd}
N -90 -170 -90 -110 {lab=#net2}
N 80 -60 80 -20 {lab=GND}
N 80 -260 80 -220 {lab=VDD}
N 80 -160 80 -120 {lab=#net3}
N 200 -160 250 -160 {lab=#net4}
N 200 -160 200 -120 {lab=#net4}
N 250 -140 250 -30 {lab=GND}
N 200 -30 250 -30 {lab=GND}
N 200 -60 200 -30 {lab=GND}
N 200 -30 200 -10 {lab=GND}
N 420 -180 420 -160 {lab=#net5}
N 420 -180 600 -180 {lab=#net5}
N 420 -140 420 -120 {lab=#net6}
N 420 -120 600 -120 {lab=#net6}
N 680 -290 680 -230 {lab=VDD}
N 680 -70 680 -30 {lab=#net7}
N 730 -150 790 -150 {lab=out}
N 790 -150 840 -150 {lab=out}
N 790 -90 840 -90 {lab=GND}
N 820 -90 820 -50 {lab=GND}
N 680 30 680 70 {lab=GND}
C {vsource.sym} -10 -80 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} -10 -20 0 0 {name=l8 lab=GND}
C {res.sym} -10 -200 0 0 {name=R2
value=10
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 0 -270 0 0 {name=p3 sig_type=std_logic lab=VDDd}
C {vsource.sym} -90 -80 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} -90 -20 0 0 {name=l9 lab=GND
value=0}
C {lab_wire.sym} -90 -240 0 0 {name=p4 sig_type=std_logic lab=VSSd}
C {res.sym} -90 -200 0 0 {name=R4
value=10
footprint=1206
device=resistor
m=1}
C {vdd.sym} 80 -260 0 0 {name=l3 lab=VDD}
C {vsource.sym} 80 -90 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 80 -20 0 0 {name=l4 lab=GND}
C {res.sym} 80 -190 2 0 {name=R1
value=100m
footprint=1206
device=resistor
m=1}
C {vsource.sym} 200 -90 0 0 {name=Vin value=3.3 savecurrent=false}
C {libs/core_analog/Output_Stage/Output_Stage.sym} 650 -150 0 0 {name=x1}
C {libs/core_analog/op_Deadtime_Driver/op_Deadtime_Driver.sym} 400 -150 0 0 {name=x2}
C {vdd.sym} 680 -290 0 0 {name=l2 lab=VDD}
C {res.sym} 790 -120 0 0 {name=R3
value=8
footprint=1206
device=resistor
m=1}
C {capa.sym} 840 -120 0 0 {name=C1
m=1
value=400p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 820 -50 0 0 {name=l5 lab=GND}
C {gnd.sym} 200 -10 0 0 {name=l6 lab=GND}
C {vsource.sym} 680 0 0 0 {name=V4 value=0 savecurrent=false}
C {gnd.sym} 680 70 0 0 {name=l7 lab=GND}
C {devices/code_shown.sym} 210 140 0 0 {name=Models1 only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"}
C {lab_wire.sym} 810 -150 0 0 {name=p1 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 1580 -780 0 0 {name=NGSPICE1 only_toplevel=true
value="
.temp 27
.options savecurrents
.global VDDd VSSd
.control
save all
**Frequency & time settings
let fsig = 20k
let tper=1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr

let tstop = 4 * tper
let tstep = 0.001*tper


**voltages
alter @Vin[PULSE] = [ 0 2.3 0 $&tfr $&tfr $&ton $&tper 3 ]
alter @Vin[DC] = 3.3
*alter @Vin[SIN] = [ 1.7 1.5 $&fsig 0 0 ]

**simulation
OP
*show all > op.log
show all

**Temperature analysis
tran $&tstep $&tstop
let t = $temp
print t
*plot nmos pmos
plot out
meas tran tfall_p WHEN v(pmos)=0.68 FALL=3
meas tran tfall_n WHEN v(nmos)=0.68 FALL=3

meas tran trise_p WHEN v(pmos)=0.68 RISE=3
meas tran trise_n WHEN v(nmos)=0.68 RISE=3

let delay_fall = $&tfall_p - $&tfall_n
let delay_rise = $&trise_p - $&trise_n

print delay_fall
print delay_rise

**check shoot-through
plot @r5[i] v3#branch v4#branch

*@m.xm1.m0[id]
*plot @m.xm1.m0[id]

plot v4#branch

meas tran v_max MAX v(out)
meas tran v_min MIN v(out)
let vpp = $&v_max - $&v_min
print vpp
write Deadtime_Driver_temp_tb.txt
.endc
"}
