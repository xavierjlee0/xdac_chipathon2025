v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 650 -910 650 -810 {lab=#net1}
N 650 -1050 650 -970 {lab=Vdd}
N 560 -940 610 -940 {lab=Control}
N 560 -940 560 -780 {lab=Control}
N 560 -780 610 -780 {lab=Control}
N 520 -870 560 -870 {lab=Control}
N 650 -870 740 -870 {lab=#net1}
N 650 -750 650 -690 {lab=vss}
N 650 -940 680 -940 {lab=Vdd}
N 680 -1000 680 -940 {lab=Vdd}
N 650 -1000 680 -1000 {lab=Vdd}
N 650 -780 680 -780 {lab=vss}
N 680 -780 680 -720 {lab=vss}
N 650 -720 680 -720 {lab=vss}
N 560 -780 560 -620 {lab=Control}
N 560 -610 640 -610 {lab=Control}
N 560 -620 560 -610 {lab=Control}
N 590 -570 610 -570 {lab=Vin}
N 590 -570 590 -390 {lab=Vin}
N 590 -390 610 -390 {lab=Vin}
N 740 -870 740 -320 {lab=#net1}
N 640 -320 740 -320 {lab=#net1}
N 640 -350 640 -320 {lab=#net1}
N 670 -570 690 -570 {lab=Vout}
N 690 -570 690 -390 {lab=Vout}
N 670 -390 690 -390 {lab=Vout}
N 520 -480 590 -480 {lab=Vin}
N 640 -410 640 -390 {lab=Vdd}
N 640 -570 640 -550 {lab=vss}
N 640 -550 760 -550 {lab=vss}
N 760 -550 760 -370 {lab=vss}
N 650 -690 760 -690 {lab=vss}
N 760 -690 760 -550 {lab=vss}
N 640 -520 640 -410 {lab=Vdd}
N 530 -520 640 -520 {lab=Vdd}
N 530 -1040 530 -520 {lab=Vdd}
N 530 -1040 650 -1040 {lab=Vdd}
N 690 -480 770 -480 {lab=Vout}
C {title.sym} 190 -70 0 0 {name=l1 author="Devlin Glover"}
C {symbols/nfet_03v3.sym} 630 -780 0 0 {name=M1
L=0.28u
W=0.85u
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
C {symbols/pfet_03v3.sym} 630 -940 0 0 {name=M2
L=0.28u
W=1.7u
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
C {iopin.sym} 650 -1050 3 0 {name=p2 lab=Vdd}
C {ipin.sym} 520 -870 0 0 {name=p4 lab=Control}
C {opin.sym} 770 -480 0 0 {name=p3 lab=Vout}
C {symbols/nfet_03v3.sym} 640 -590 1 0 {name=M3
L=0.28u
W=2.4u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 640 -370 3 0 {name=M4
L=0.28u
W=7.2u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {ipin.sym} 520 -480 0 0 {name=p5 lab=Vin}
C {iopin.sym} 760 -370 1 0 {name=p6 lab=vss}
