v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 680 -730 820 -730 {lab=Iref}
N 800 -700 860 -700 {lab=Iref}
N 800 -730 800 -700 {lab=Iref}
N 670 -590 730 -590 {lab=#net1}
N 670 -620 670 -590 {lab=#net1}
N 550 -620 690 -620 {lab=#net1}
N 320 -620 550 -620 {lab=#net1}
N 860 -700 860 -640 {lab=Iref}
N 640 -760 860 -760 {lab=Vdd}
N 760 -780 760 -760 {lab=Vdd}
N 730 -760 730 -650 {lab=Vdd}
N 570 -730 680 -730 {lab=Iref}
N 530 -760 640 -760 {lab=Vdd}
N 730 -590 730 -320 {lab=#net1}
N 530 -700 530 -460 {lab=#net2}
N 730 -320 730 -280 {lab=#net1}
N 640 -250 690 -250 {lab=#net3}
N 730 -220 730 -140 {lab=Vss}
N 600 -140 730 -140 {lab=Vss}
N 600 -220 600 -140 {lab=Vss}
N 500 -140 600 -140 {lab=Vss}
N 500 -220 500 -140 {lab=Vss}
N 330 -140 500 -140 {lab=Vss}
N 330 -230 330 -140 {lab=Vss}
N 230 -140 330 -140 {lab=Vss}
N 230 -230 230 -140 {lab=Vss}
N 670 -300 670 -250 {lab=#net3}
N 600 -300 670 -300 {lab=#net3}
N 500 -340 500 -280 {lab=#net3}
N 500 -340 600 -340 {lab=#net3}
N 380 -460 560 -460 {lab=#net2}
N 600 -340 600 -280 {lab=#net3}
N 560 -400 560 -340 {lab=#net3}
N 370 -340 370 -260 {lab=#net3}
N 370 -340 500 -340 {lab=#net3}
N 230 -290 330 -290 {lab=#net4}
N 280 -400 280 -290 {lab=#net4}
N 460 -360 460 -250 {lab=#net4}
N 280 -360 460 -360 {lab=#net4}
N 120 -260 190 -260 {lab=#net4}
N 160 -330 160 -260 {lab=#net4}
N 160 -330 280 -330 {lab=#net4}
N 80 -590 80 -290 {lab=Vout}
N 120 -620 320 -620 {lab=#net1}
N 80 -760 530 -760 {lab=Vdd}
N 80 -760 80 -650 {lab=Vdd}
N 80 -230 80 -140 {lab=Vss}
N 80 -140 230 -140 {lab=Vss}
N 600 -430 850 -430 {lab=INN}
N 240 -490 240 -430 {lab=INP}
N 240 -490 850 -490 {lab=INP}
N 280 -460 380 -460 {lab=#net2}
N 730 -250 730 -220 {lab=Vss}
N 600 -250 600 -220 {lab=Vss}
N 500 -250 500 -220 {lab=Vss}
N 330 -260 330 -230 {lab=Vss}
N 230 -260 230 -230 {lab=Vss}
N 80 -260 80 -230 {lab=Vss}
N 860 -760 860 -730 {lab=Vdd}
N 530 -760 530 -730 {lab=Vdd}
N 730 -650 730 -620 {lab=Vdd}
N 50 -440 80 -440 {lab=Vout}
N -10 -440 50 -440 {lab=Vout}
N 80 -650 80 -620 {lab=Vdd}
N 280 -430 370 -430 {lab=Vdd}
N 370 -760 370 -430 {lab=Vdd}
N 370 -430 560 -430 {lab=Vdd}
N 440 -760 440 -730 {lab=Vdd}
N 440 -700 440 -460 {lab=#net2}
N 480 -730 480 -670 {lab=Iref}
N 480 -670 600 -670 {lab=Iref}
N 600 -730 600 -670 {lab=Iref}
C {symbols/pfet_03v3.sym} 840 -730 0 0 {name=M1
L=1u
W=3.5u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {title.sym} 80 80 0 0 {name=Comparator author="Christopher Amankwaa"}
C {symbols/pfet_03v3.sym} 550 -730 0 1 {name=M2
L=1u
W=3.5u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 710 -620 0 0 {name=M3
L=0.6u
W=5.24u
nf=5
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 100 -620 0 1 {name=M4
L=0.5u
W=5.24u
nf=5
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {ipin.sym} 760 -780 1 0 {name=p1 lab=Vdd}
C {symbols/pfet_03v3.sym} 580 -430 0 1 {name=M5
L=1u
W=3.24u
nf=4
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 260 -430 0 0 {name=M6
L=1u
W=3.24u
nf=4
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 710 -250 0 0 {name=M7
L=1u
W=5.46u
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
C {symbols/nfet_03v3.sym} 480 -250 0 0 {name=M8
L=1u
W=5.46u
nf=4
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
C {symbols/nfet_03v3.sym} 210 -260 0 0 {name=M9
L=1u
W=5.46u
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
C {symbols/nfet_03v3.sym} 350 -260 0 1 {name=M10
L=1u
W=5.46u
nf=4
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
C {symbols/nfet_03v3.sym} 620 -250 0 1 {name=M11
L=1u
W=5.46u
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
C {symbols/nfet_03v3.sym} 100 -260 0 1 {name=M12
L=1u
W=5.46u
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
C {ipin.sym} 730 -140 3 0 {name=p2 lab=Vss
}
C {ipin.sym} 860 -640 3 0 {name=p3 lab=Iref
}
C {ipin.sym} 850 -430 2 0 {name=p4 lab=INN}
C {ipin.sym} 850 -490 2 0 {name=p5 lab=INP}
C {opin.sym} -10 -440 2 0 {name=p6 lab=Vout}
C {symbols/pfet_03v3.sym} 460 -730 0 1 {name=M13
L=1u
W=3.5u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
