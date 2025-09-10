v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 560 -610 640 -610 {lab=I}
N 560 -620 560 -610 {lab=I}
N 590 -570 610 -570 {lab=Pin}
N 590 -570 590 -390 {lab=Pin}
N 590 -390 610 -390 {lab=Pin}
N 640 -320 740 -320 {lab=ZN}
N 640 -350 640 -320 {lab=ZN}
N 670 -570 690 -570 {lab=Bus}
N 690 -570 690 -390 {lab=Bus}
N 670 -390 690 -390 {lab=Bus}
N 520 -480 590 -480 {lab=Pin}
N 640 -410 640 -390 {lab=VDDd}
N 640 -570 640 -550 {lab=VSSd}
N 640 -550 760 -550 {lab=VSSd}
N 760 -550 760 -370 {lab=VSSd}
N 640 -520 640 -410 {lab=VDDd}
N 530 -520 640 -520 {lab=VDDd}
N 690 -480 770 -480 {lab=Bus}
N 560 -670 610 -670 {lab=I}
N 690 -670 740 -670 {lab=ZN}
N 740 -670 740 -320 {lab=ZN}
N 560 -670 560 -620 {lab=I}
N 530 -740 530 -520 {lab=VDDd}
N 580 -740 580 -670 {lab=I}
C {title.sym} 190 -70 0 0 {name=l1 author="Devlin Glover"}
C {iopin.sym} 530 -740 3 0 {name=p2 lab=VDDd}
C {ipin.sym} 580 -740 0 0 {name=p4 lab=I}
C {opin.sym} 770 -480 0 0 {name=p3 lab=Bus}
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
C {ipin.sym} 520 -480 0 0 {name=p5 lab=Pin}
C {iopin.sym} 760 -370 1 0 {name=p6 lab=VSSd}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} 650 -670 0 0 {name=x1 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 730 -670 0 0 {name=p1 sig_type=std_logic lab=ZN}

