v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 300 -540 300 -490 {lab=out}
N 260 -570 260 -460 {lab=Vin}
N 210 -520 260 -520 {lab=Vin}
N 300 -510 380 -510 {lab=out}
N 300 -640 300 -600 {lab=Vdd}
N 300 -430 300 -390 {lab=Vss}
N 300 -460 330 -460 {lab=Vss}
N 330 -460 330 -410 {lab=Vss}
N 300 -410 330 -410 {lab=Vss}
N 300 -570 340 -570 {lab=Vdd}
N 340 -620 340 -570 {lab=Vdd}
N 300 -620 340 -620 {lab=Vdd}
C {title.sym} 70 30 0 0 {name=l1 author="Christopher O Amankwaa"}
C {symbols/nfet_03v3.sym} 280 -460 0 0 {name=M1
L=0.4u
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
C {symbols/pfet_03v3.sym} 280 -570 0 0 {name=M2
L=0.28u
W=0.44u
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
C {devices/code_shown.sym} 520 -810 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
let fsig = 900k
let tper=1/fsig

let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr


let tstop =1 * tper
let tstep = 0.001*tper


**voltages
alter @Vin[PULSE] = [ 3.3 0 0 $&tfr $&tfr $&ton $&tper 10 ]
alter @Vin[DC] = 0

**simulation
OP
*show all > op.log
show all


tran $&tstep $&tstop

write PMOS_comparator_tb.raw
.endc
"}
C {devices/code_shown.sym} 440 -180 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {ipin.sym} 210 -520 0 0 {name=p3 lab=Vin}
C {ipin.sym} 300 -640 1 0 {name=p4 lab=Vdd}
C {ipin.sym} 300 -390 3 0 {name=p5 lab=Vss}
C {opin.sym} 380 -510 0 0 {name=p7 lab=Vout}
