v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 230 -510 390 -510 {lab=y}
N 300 -510 300 -430 {lab=y}
N 300 -370 300 -330 {lab=#net1}
N 300 -270 300 -240 {lab=vss}
N 230 -600 230 -570 {lab=vdd}
N 230 -600 390 -600 {lab=vdd}
N 390 -600 390 -570 {lab=vdd}
N 390 -650 390 -600 {lab=vdd}
N 130 -540 190 -540 {lab=a}
N 430 -540 500 -540 {lab=B}
N 210 -400 260 -400 {lab=a}
N 210 -300 260 -300 {lab=B}
N 300 -260 410 -260 {lab=vss}
N 410 -400 410 -260 {lab=vss}
N 300 -400 410 -400 {lab=vss}
N 300 -300 350 -300 {lab=vss}
N 350 -300 350 -260 {lab=vss}
N 230 -540 250 -540 {lab=vdd}
N 250 -600 250 -540 {lab=vdd}
N 370 -540 390 -540 {lab=vdd}
N 370 -600 370 -540 {lab=vdd}
N 300 -460 390 -460 {lab=y}
N 390 -450 490 -450 {lab=y}
N 390 -460 390 -450 {lab=y}
N 50 -300 210 -300 {lab=B}
N 50 -640 50 -300 {lab=B}
N 50 -640 500 -640 {lab=B}
N 500 -640 500 -540 {lab=B}
N 110 -470 130 -470 {lab=a}
N -0 -470 50 -470 {lab=B}
N 130 -540 130 -400 {lab=a}
N 130 -400 210 -400 {lab=a}
C {title.sym} 80 30 0 0 {name=l1 author="Christopher O Amankwaa"}
C {symbols/nfet_03v3.sym} 280 -400 0 0 {name=M1
L=0.4u
W=0.55u
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
L=0.4u
W=0.55u
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
W=0.88u
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
W=0.88u
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
C {devices/code_shown.sym} 590 -740 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
let fsig = 600k
let fnsig = 700k
let tper=1/fsig
let tnper=1/fnsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr


let tstop =4 * tper
let tstep = 0.001*tper


**voltages
alter @Va[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton $&tper 10 ]
alter @Va[DC] = 3.3

alter @Vb[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton $&tnper 10 ]
alter @Vb[DC] = 3.3

*measure
let ninety = 3.3 * .9
let ten = 3.3 * .1


**simulation
OP
*show all > op.log
show all


tran $&tstep $&tstop
meas tran trise TRIG v(out) VAL=0.33 RISE=2 TARG v(out) VAL=2.97 RISE=2
meas tran tfall TRIG v(out) VAL=2.97 FALL=2 TARG v(out) VAL=0.33 FALL=2

write NAND_Gate_tb.raw
.endc
"}
C {devices/code_shown.sym} 510 -110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {ipin.sym} 0 -470 0 0 {name=p5 lab=b}
C {ipin.sym} 110 -470 0 0 {name=p6 lab=a}
C {ipin.sym} 300 -240 3 0 {name=p7 lab=vss
}
C {ipin.sym} 390 -650 1 0 {name=p8 lab=vdd}
C {opin.sym} 490 -450 0 0 {name=p10 lab=y}
