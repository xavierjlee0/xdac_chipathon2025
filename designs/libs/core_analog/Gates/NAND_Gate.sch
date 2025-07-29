v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 230 -510 390 -510 {lab=Vout}
N 300 -510 300 -430 {lab=Vout}
N 300 -370 300 -330 {lab=#net1}
N 300 -270 300 -240 {lab=GND}
N 230 -600 230 -570 {lab=VDD}
N 230 -600 390 -600 {lab=VDD}
N 390 -600 390 -570 {lab=VDD}
N 390 -650 390 -600 {lab=VDD}
N 130 -540 190 -540 {lab=A}
N 430 -540 500 -540 {lab=B}
N 210 -400 260 -400 {lab=A}
N 210 -300 260 -300 {lab=B}
N 300 -260 410 -260 {lab=GND}
N 410 -400 410 -260 {lab=GND}
N 300 -400 410 -400 {lab=GND}
N 300 -300 350 -300 {lab=GND}
N 350 -300 350 -260 {lab=GND}
N 230 -540 250 -540 {lab=VDD}
N 250 -600 250 -540 {lab=VDD}
N 370 -540 390 -540 {lab=VDD}
N 370 -600 370 -540 {lab=VDD}
N -200 -260 -200 -230 {lab=GND}
N -140 -260 -140 -230 {lab=GND}
N -80 -260 -80 -230 {lab=GND}
N -200 -390 -200 -320 {lab=VDD}
N -140 -390 -140 -320 {lab=A}
N -80 -390 -80 -320 {lab=B}
N 300 -460 390 -460 {lab=Vout}
C {libs/core_analog/Gates/NAND_Gate.sch} 150 -300 0 0 {}
C {title.sym} 80 30 0 0 {name=l1 author="Christopher O Amankwaa"}
C {symbols/nfet_03v3.sym} 280 -400 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 280 -300 0 0 {name=M2
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 410 -540 0 1 {name=M3
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 210 -540 0 0 {name=M4
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {gnd.sym} 300 -240 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 160 -540 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_wire.sym} 470 -540 0 0 {name=p2 sig_type=std_logic lab=B}
C {lab_wire.sym} 240 -400 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_wire.sym} 240 -300 0 0 {name=p4 sig_type=std_logic lab=B}
C {vsource.sym} -200 -290 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} -140 -290 0 0 {name=Va value=3.3 savecurrent=false}
C {vsource.sym} -80 -290 0 0 {name=Vb value=3.3 savecurrent=false}
C {gnd.sym} -200 -230 0 0 {name=l3 lab=GND}
C {gnd.sym} -140 -230 0 0 {name=l4 lab=GND}
C {gnd.sym} -80 -230 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -140 -350 0 0 {name=p6 sig_type=std_logic lab=A}
C {lab_wire.sym} -80 -350 0 0 {name=p7 sig_type=std_logic lab=B}
C {lab_wire.sym} 350 -460 0 0 {name=p9 sig_type=std_logic lab=Vout}
C {devices/code_shown.sym} 590 -740 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
let fsig = 200k
let fnsig = 400k
let tper=1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr


let tstop =2 * tper
let tstep = 0.001*tper


**voltages
alter @Va[PULSE] = [ 0 3.0 5.5u $&tfr $&tfr $&ton $&tper 3 ]
*alter @Va[DC] = 0

alter @Vb[PULSE] = [ 0 3.01 6u $&tfr $&tfr $&ton $&tper 3 ]
*alter @Vb[DC] = 3.3

**simulation
OP
*show all > op.log
show all


tran $&tstep $&tstop

write NAND_Gate_tb.raw
.endc
"}
C {devices/code_shown.sym} 510 -110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vdd.sym} 390 -650 0 0 {name=l6 lab=VDD}
C {vdd.sym} -200 -390 0 0 {name=l7 lab=VDD}
