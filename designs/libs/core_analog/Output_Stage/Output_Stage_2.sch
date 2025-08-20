v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -90 60 -50 {lab=xxx}
N 60 -90 60 -70 {lab=xxx}
N 60 -70 130 -70 {lab=xxx}
N 60 -180 60 -150 {lab=vdd}
N 60 10 60 40 {lab=vss}
N 60 -140 60 -120 {lab=vdd}
N 60 -150 60 -140 {lab=vdd}
N 60 -20 60 10 {lab=vss}
N -30 -20 20 -20 {lab=nmos_in}
N -20 -120 20 -120 {lab=pmos_in}
C {symbols/nfet_03v3.sym} 40 -20 0 0 {name=M1
L=0.28u
W=100u
nf=20
m=14
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 40 -120 0 0 {name=M2
L=0.28u
W=100u
nf=20
m=31
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {ipin.sym} -30 -20 0 0 {name=p1 lab=nmos_in}
C {ipin.sym} -20 -120 0 0 {name=p2 lab=pmos_in}
C {ipin.sym} 60 -180 1 0 {name=p3 lab=vdd}
C {ipin.sym} 60 40 3 0 {name=p4 lab=vss}
C {opin.sym} 130 -70 0 0 {name=p5 lab=vout}
