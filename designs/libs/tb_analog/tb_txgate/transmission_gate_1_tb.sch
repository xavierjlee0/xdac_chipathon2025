v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 490 -310 490 -290 {lab=GND}
N 490 -380 490 -370 {lab=in}
N 490 -380 590 -380 {lab=in}
N 410 -310 410 -290 {lab=GND}
N 410 -400 410 -370 {lab=Control}
N 410 -400 590 -400 {lab=Control}
N 890 -400 910 -400 {lab=#net1}
N 910 -230 910 -210 {lab=GND}
N 910 -310 910 -290 {lab=VDDd}
N 890 -360 920 -360 {lab=GND}
N 890 -380 920 -380 {lab=out}
N 920 -380 980 -380 {lab=out}
N 910 -460 910 -400 {lab=#net1}
N 910 -560 910 -520 {lab=VDDd}
N 880 -220 910 -220 {lab=GND}
N 740 -220 820 -220 {lab=VSSd}
C {title.sym} 180 -50 0 0 {name=l1 author="Devlin Glover"}
C {vsource.sym} 490 -340 0 0 {name=Vin value=3.3 savecurrent=false}
C {vsource.sym} 410 -340 0 0 {name=Vcontrol value=3.3 savecurrent=false}
C {vsource.sym} 910 -260 0 0 {name=V3 value=5 savecurrent=false}
C {gnd.sym} 920 -360 0 0 {name=l4 lab=GND}
C {gnd.sym} 490 -290 0 0 {name=l5 lab=GND}
C {gnd.sym} 410 -290 0 0 {name=l6 lab=GND}
C {gnd.sym} 910 -210 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 950 -380 0 0 {name=p1 sig_type=std_logic lab=out}
C {vsource.sym} 980 -290 0 0 {name=Vout value=0 savecurrent=false}
C {gnd.sym} 980 -260 0 0 {name=l8 lab=GND}
C {lab_wire.sym} 510 -400 0 0 {name=p2 sig_type=std_logic lab=Control}
C {lab_wire.sym} 550 -380 0 0 {name=p3 sig_type=std_logic lab=in}
C {devices/code_shown.sym} 20 -180 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
"}
C {devices/code_shown.sym} 20 -750 0 0 {name=NGSPICE only_toplevel=true
value="

.global VSSd VDDd
.control
save all

alter @Vcontrol[DC] = 5

**Simulation
op
dc Vin 0.005 3.3 0.005

**Plots and data extraction
setplot dc1
let vout = v(out)
let vin = v(in)-vout
let iout = Vout#branch
let res = vin/iout
plot res 
plot vin 
plot iout


write transmission_gate_1_tb.raw
.endc
"}
C {res.sym} 910 -490 0 0 {name=R1
value=10
footprint=1206
device=resistor
m=1}
C {libs/core_analog/tx_gate/transmission_gate_2.sym} 740 -380 0 0 {name=x1}
C {lab_wire.sym} 910 -540 0 0 {name=p4 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} 790 -220 0 0 {name=p5 sig_type=std_logic lab=VSSd}
C {vsource.sym} 850 -220 1 0 {name=Vout1 value=0 savecurrent=false}
C {lab_wire.sym} 910 -300 0 0 {name=p6 sig_type=std_logic lab=VDDd}
C {res.sym} 980 -350 0 0 {name=R2
value=150
footprint=1206
device=resistor
m=1}
