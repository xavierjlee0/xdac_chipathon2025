v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -70 -190 -70 -160 {lab=GND}
N 0 -190 0 -160 {lab=GND}
N -70 -310 -70 -250 {lab=#net1}
N 0 -330 0 -250 {lab=#net2}
N -70 -390 -70 -370 {lab=VDDd}
N 0 -410 0 -390 {lab=in}
N 0 -410 80 -410 {lab=in}
N -70 -390 -60 -390 {lab=VDDd}
N -60 -440 -60 -390 {lab=VDDd}
N -150 -190 -150 -160 {lab=GND}
N -150 -420 -150 -370 {lab=Vssd}
N 250 -390 270 -390 {lab=nmos}
N 250 -410 310 -410 {lab=pmos}
N 400 -390 460 -390 {lab=nmos}
N 80 -390 80 -350 {lab=GND}
N -150 -310 -150 -250 {lab=#net3}
N 310 -410 440 -410 {lab=pmos}
N 270 -390 400 -390 {lab=nmos}
N -220 -180 -220 -150 {lab=GND}
N -220 -300 -220 -240 {lab=#net4}
N -220 -410 -220 -360 {lab=VDD}
N 700 -390 820 -390 {lab=out}
N 750 -240 790 -240 {lab=GND}
N 790 -240 800 -240 {lab=GND}
N 790 -240 790 -210 {lab=GND}
N 630 -210 790 -210 {lab=GND}
N 650 -550 650 -530 {lab=VDD}
N 750 -390 750 -380 {lab=out}
N 750 -320 750 -300 {lab=GND}
N 800 -390 800 -300 {lab=out}
N 650 -530 650 -470 {lab=VDD}
N 750 -300 750 -240 {lab=GND}
N 530 -240 530 -220 {lab=GND}
N 530 -300 650 -300 {lab=#net5}
N 650 -310 650 -300 {lab=#net5}
N 440 -410 570 -410 {lab=pmos}
N 570 -420 570 -410 {lab=pmos}
N 460 -390 570 -390 {lab=nmos}
N 570 -390 570 -360 {lab=nmos}
C {title.sym} 160 30 0 0 {name=l1 author="Christopher O Amankwaa"}
C {vsource.sym} -70 -220 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 0 -220 0 0 {name=Vin value="1.5 AC 1.2" savecurrent=false}
C {gnd.sym} -70 -160 0 0 {name=l2 lab=GND}
C {gnd.sym} 0 -160 0 0 {name=l3 lab=GND}
C {res.sym} -70 -340 0 0 {name=R1
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} 0 -360 0 0 {name=R2
value=100
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 40 -410 0 0 {name=p5 sig_type=std_logic lab=in}
C {lab_wire.sym} -60 -410 0 0 {name=p3 sig_type=std_logic lab=VDDd}
C {vsource.sym} -150 -220 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -150 -160 0 0 {name=l4 lab=GND
value=0}
C {lab_wire.sym} -150 -380 0 0 {name=p4 sig_type=std_logic lab=Vssd}
C {lab_wire.sym} 420 -410 0 0 {name=p2 sig_type=std_logic lab=pmos}
C {lab_wire.sym} 440 -390 0 0 {name=p1 sig_type=std_logic lab=nmos}
C {devices/code_shown.sym} 1120 -100 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"}
C {devices/code_shown.sym} 1130 -1080 0 0 {name=NGSPICE only_toplevel=true
value="
.temp 27
.options savecurrents
.global VDDd VSSd
.control
save all
**Frequency & time settings
let fsig = 200k
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
plot @r5[i] v3#branch @r6[i] 
*@m.xm1.m0[id]
*plot @m.xm1.m0[id]

plot @r6[i]
write Deadtime_Driver_temp_tb.txt
.endc
"}
C {gnd.sym} 80 -350 0 0 {name=l5 lab=GND
value=0}
C {res.sym} -150 -340 0 0 {name=R3
value=10
footprint=1206
device=resistor
m=1}
C {libs/core_analog/op_Deadtime_Driver/op_Deadtime_Driver.sym} 230 -400 0 0 {name=x1}
C {noconn.sym} 820 -390 2 0 {name=l6}
C {gnd.sym} 530 -220 0 0 {name=l7 lab=GND}
C {vdd.sym} 650 -550 0 0 {name=l8 lab=VDD}
C {lab_wire.sym} 780 -390 0 0 {name=p6 sig_type=std_logic lab=out}
C {vsource.sym} -220 -210 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -220 -150 0 0 {name=l9 lab=GND}
C {res.sym} -220 -330 0 0 {name=R4
value=100m
footprint=1206
device=resistor
m=1}
C {vdd.sym} -220 -410 0 0 {name=l10 lab=VDD}
C {res.sym} 750 -350 0 0 {name=R5
value=8
footprint=1206
device=resistor
m=1}
C {capa.sym} 800 -270 0 0 {name=C1
m=1
value=400p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 630 -210 0 0 {name=l11 lab=GND}
C {res.sym} 530 -270 0 0 {name=R6
value=0
footprint=1206
device=resistor
m=1}
C {libs/core_analog/Output_Stage/Output_Stage.sym} 620 -390 0 0 {name=x2}
