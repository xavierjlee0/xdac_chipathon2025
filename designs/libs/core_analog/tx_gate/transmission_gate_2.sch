v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 560 -610 640 -610 {lab=Control}
N 560 -620 560 -610 {lab=Control}
N 590 -570 610 -570 {lab=Vin}
N 590 -570 590 -390 {lab=Vin}
N 590 -390 610 -390 {lab=Vin}
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
N 640 -520 640 -410 {lab=Vdd}
N 530 -520 640 -520 {lab=Vdd}
N 690 -480 770 -480 {lab=Vout}
N 560 -670 610 -670 {lab=Control}
N 690 -670 740 -670 {lab=#net1}
N 740 -670 740 -320 {lab=#net1}
N 560 -670 560 -620 {lab=Control}
N 500 -670 560 -670 {lab=Control}
N 530 -740 530 -520 {lab=Vdd}
C {title.sym} 190 -70 0 0 {name=l1 author="Devlin Glover"}
C {iopin.sym} 530 -740 3 0 {name=p2 lab=Vdd}
C {ipin.sym} 500 -670 0 0 {name=p4 lab=Control}
C {opin.sym} 770 -480 0 0 {name=p3 lab=Vout}
C {symbols/nfet_03v3.sym} 640 -590 1 0 {name=M3
L=0.28u
W=6u
nf=1
m=4
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
W=6u
nf=1
m=12
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
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} 650 -670 0 0 {name=x1 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
