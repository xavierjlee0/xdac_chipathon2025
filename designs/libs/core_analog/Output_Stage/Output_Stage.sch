v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 420 -210 420 -190 {lab=vss}
N 420 -320 420 -290 {lab=vout}
N 420 -420 420 -400 {lab=vdd}
N 420 -260 460 -260 {lab=vss}
N 460 -260 460 -210 {lab=vss}
N 420 -210 460 -210 {lab=vss}
N 420 -370 460 -370 {lab=vdd}
N 460 -420 460 -370 {lab=vdd}
N 420 -420 460 -420 {lab=vdd}
N 420 -320 550 -320 {lab=vout}
N 420 -230 420 -210 {lab=vss}
N 420 -430 420 -420 {lab=vdd}
N 420 -340 420 -320 {lab=vout}
N 550 -320 610 -320 {lab=vout}
N 260 -370 380 -370 {lab=vin_pmos}
N 270 -260 380 -260 {lab=vin_nmos}
C {title.sym} 70 30 0 0 {name=l1 author="Christopher O Amankwaa"}
C {symbols/pfet_03v3.sym} 400 -370 0 0 {name=M1
L=0.28u
W=5u
nf=1
m=640
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 400 -260 0 0 {name=M2
L=0.28u
W=5u
nf=1
m=280
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {ipin.sym} 260 -370 0 0 {name=p1 lab=vin_pmos}
C {ipin.sym} 420 -430 1 0 {name=p2 lab=vdd}
C {ipin.sym} 420 -190 3 0 {name=p3 lab=vss}
C {opin.sym} 610 -320 0 0 {name=p4 lab=vout}
C {ipin.sym} 270 -260 0 0 {name=p5 lab=vin_nmos}
