v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 105 -780 185 -780 {lab=vlo}
N 45 -820 185 -820 {lab=vho}
N 45 -820 45 -780 {lab=vho}
N 45 -720 45 -700 {lab=vss}
N 105 -720 105 -700 {lab=vss}
N 240 -400 240 -380 {lab=GND}
N 240 -480 240 -460 {lab=vss}
N 235 -900 235 -880 {lab=vdd}
N 60 -460 60 -420 {lab=GND}
N 60 -560 60 -520 {lab=iref}
N 275 -900 275 -880 {lab=iref}
N 235 -720 235 -700 {lab=vss}
N 385 -800 445 -800 {lab=vout}
N 425 -740 425 -700 {lab=vss}
N 360 -460 400 -460 {lab=VSSd}
N 360 -620 395 -620 {lab=VDDd}
N 395 -620 410 -620 {lab=VDDd}
N 400 -460 410 -460 {lab=VSSd}
N 240 -555 240 -540 {lab=#net1}
N 240 -635 240 -615 {lab=vdd}
N 120 -540 120 -520 {lab=iref}
N 60 -540 120 -540 {lab=iref}
N 120 -460 120 -440 {lab=GND}
N 60 -440 120 -440 {lab=GND}
N 240 -620 300 -620 {lab=vdd}
N 240 -460 300 -460 {lab=vss}
C {title.sym} 160 -40 0 0 {name=l1 author="X.J. Lee"}
C {devices/code_shown.sym} 20 -190 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {libs/core_analog/oscillator/triangle_osc.sym} 205 -860 0 0 {name=x1}
C {vsource.sym} 240 -510 0 0 {name=V1 value=\\\{VDD\\\} savecurrent=false}
C {vsource.sym} 240 -430 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} 45 -750 0 0 {name=V3 value=2.5 savecurrent=false}
C {vsource.sym} 105 -750 0 0 {name=V4 value=0.8 savecurrent=false}
C {gnd.sym} 240 -380 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 235 -890 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 240 -470 0 0 {name=p3 sig_type=std_logic lab=vss}
C {isource.sym} 60 -490 2 0 {name=I0 value=10u}
C {gnd.sym} 60 -420 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 240 -635 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 60 -560 0 0 {name=p5 sig_type=std_logic lab=iref}
C {lab_wire.sym} 275 -890 0 0 {name=p6 sig_type=std_logic lab=iref}
C {lab_wire.sym} 45 -700 0 0 {name=p7 sig_type=std_logic lab=vss}
C {lab_wire.sym} 105 -700 0 0 {name=p8 sig_type=std_logic lab=vss}
C {lab_wire.sym} 235 -700 0 0 {name=p9 sig_type=std_logic lab=vss}
C {noconn.sym} 445 -800 2 0 {name=l4}
C {lab_wire.sym} 435 -800 0 0 {name=p10 sig_type=std_logic lab=vout}
C {devices/code_shown.sym} 525 -760 0 0 {name=Simulation only_toplevel=false value="
.param VDD = 3.3
.param Tbit = 20n
.global VDDd VSSd
.ic v(vout)=3.1
.control
save all

OP
*show all > op.log
show all

TRAN 2n 15u 0
plot vout
plot vout x1.vcompn vho
plot vout x1.vcompp vlo
plot vout vlo vho 

.endc
"}
C {capa.sym} 425 -770 0 0 {name=C1
m=1
value=15p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 425 -700 0 0 {name=p1 sig_type=std_logic lab=vss}
C {vsource.sym} 330 -620 1 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} 330 -460 1 0 {name=V6 value=0 savecurrent=false}
C {lab_wire.sym} 410 -460 0 0 {name=p11 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} 410 -620 0 0 {name=p12 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} 125 -820 0 0 {name=p13 sig_type=std_logic lab=vho}
C {lab_wire.sym} 165 -780 0 0 {name=p14 sig_type=std_logic lab=vlo}
C {res.sym} 240 -585 0 0 {name=R1
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} 120 -490 0 0 {name=R2
value=300k
footprint=1206
device=resistor
m=1}
