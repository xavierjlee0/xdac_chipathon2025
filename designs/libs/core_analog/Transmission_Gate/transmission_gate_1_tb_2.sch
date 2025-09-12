v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 490 -380 490 -370 {lab=in}
N 410 -310 410 -290 {lab=GND}
N 410 -400 410 -370 {lab=Control}
N 410 -400 590 -400 {lab=Control}
N 890 -400 910 -400 {lab=#net1}
N 1110 -360 1110 -340 {lab=GND}
N 1110 -440 1110 -420 {lab=VDD}
N 890 -360 920 -360 {lab=GND}
N 890 -380 920 -380 {lab=out}
N 920 -380 980 -380 {lab=out}
N 910 -420 910 -400 {lab=#net1}
N 490 -370 490 -360 {lab=in}
N 490 -360 490 -330 {lab=in}
N 490 -380 590 -380 {lab=in}
C {title.sym} 180 -50 0 0 {name=l1 author="Devlin Glover"}
C {transmission_gate_1.sym} 740 -380 0 0 {name=x1}
C {vsource.sym} 490 -240 0 0 {name=Vin value=3.3 savecurrent=false}
C {vsource.sym} 410 -340 0 0 {name=Vcontrol value=0 savecurrent=false}
C {vsource.sym} 1110 -390 0 0 {name=V3 value=3.3 savecurrent=false}
C {vdd.sym} 910 -480 0 0 {name=l2 lab=VDD}
C {vdd.sym} 1110 -440 0 0 {name=l3 lab=VDD}
C {gnd.sym} 920 -360 0 0 {name=l4 lab=GND}
C {gnd.sym} 490 -210 0 0 {name=l5 lab=GND}
C {gnd.sym} 410 -290 0 0 {name=l6 lab=GND}
C {gnd.sym} 1110 -340 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 950 -380 0 0 {name=p1 sig_type=std_logic lab=out}
C {vsource.sym} 980 -290 0 0 {name=Vout value=0 savecurrent=false}
C {gnd.sym} 980 -260 0 0 {name=l8 lab=GND}
C {lab_wire.sym} 510 -400 0 0 {name=p2 sig_type=std_logic lab=Control}
C {lab_wire.sym} 550 -380 0 0 {name=p3 sig_type=std_logic lab=in}
C {devices/code_shown.sym} 30 -170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 20 -700 0 0 {name=NGSPICE only_toplevel=true
value="

.control
**op
**show all
save all

alter @Vcontrol[DC] = 0.0
alter @Vin[dc] = 1.65
alter @Vin[acmag] = 1.65

**Simulation
op
ac lin 1000 1 100Meg

**Plots and data extraction
setplot ac1
let vout = v(out)
let vin = v(in)
**let oirr = 20*log10(vin/vout)
let oirr = db(vin/vout)
plot oirr

write transmission_gate_1_tb_2.raw
.endc
"}
C {res.sym} 910 -450 0 0 {name=R1
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} 980 -350 0 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 490 -300 0 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
