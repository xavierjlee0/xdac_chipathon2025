v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -30 -660 550 -660 {lab=VDD}
N 300 -660 300 -620 {lab=VDD}
N 300 -490 350 -490 {lab=VDD}
N 350 -660 350 -490 {lab=VDD}
N 300 -590 320 -590 {lab=VDD}
N 320 -660 320 -590 {lab=VDD}
N 300 -560 300 -520 {lab=#net1}
N 300 -460 300 -420 {lab=Vo}
N 300 -440 470 -440 {lab=Vo}
N 480 -490 480 -420 {lab=Vo}
N 470 -440 480 -440 {lab=Vo}
N 300 -360 300 -330 {lab=#net2}
N -50 -230 300 -230 {lab=VSS}
N 300 -270 300 -230 {lab=VSS}
N 300 -230 520 -230 {lab=VSS}
N 300 -300 350 -300 {lab=VSS}
N 350 -300 350 -240 {lab=VSS}
N 350 -240 350 -230 {lab=VSS}
N 300 -390 390 -390 {lab=VSS}
N 390 -390 390 -230 {lab=VSS}
N 510 -380 550 -380 {lab=VDD}
N 550 -660 550 -380 {lab=VDD}
N 510 -530 530 -530 {lab=VSS}
N 530 -530 530 -230 {lab=VSS}
N 520 -230 530 -230 {lab=VSS}
N 300 -340 430 -340 {lab=#net2}
N 430 -380 430 -340 {lab=#net2}
N 430 -380 450 -380 {lab=#net2}
N 300 -540 410 -540 {lab=#net1}
N 410 -540 410 -530 {lab=#net1}
N 410 -530 450 -530 {lab=#net1}
N 480 -440 620 -440 {lab=Vo}
N -80 -500 150 -500 {lab=Vin}
N 150 -590 150 -500 {lab=Vin}
N 150 -590 260 -590 {lab=Vin}
N 150 -500 150 -300 {lab=Vin}
N 150 -300 260 -300 {lab=Vin}
N 150 -390 260 -390 {lab=Vin}
N 150 -490 260 -490 {lab=Vin}
N 480 -380 480 -230 {lab=VSS}
N 480 -660 480 -530 {lab=VDD}
C {title.sym} 160 -50 0 0 {name=Schmitt Trigger author="Angel Romero"}
C {symbols/nfet_03v3.sym} 280 -390 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 280 -590 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 280 -490 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 280 -300 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 480 -400 1 0 {name=M5
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
C {symbols/pfet_03v3.sym} 480 -510 3 0 {name=M6
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
C {ipin.sym} -30 -660 0 0 {name=p1 lab=VDD}
C {ipin.sym} -50 -230 0 0 {name=p2 lab=VSS}
C {ipin.sym} -80 -500 0 0 {name=p3 lab=Vin}
C {opin.sym} 620 -440 0 0 {name=p4 lab=Vo}
