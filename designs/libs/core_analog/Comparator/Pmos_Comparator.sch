v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 230 -160 370 -160 {lab=Iref}
N 190 -190 250 -190 {lab=Iref}
N 250 -190 250 -160 {lab=Iref}
N 320 -300 380 -300 {lab=#net1}
N 380 -300 380 -270 {lab=#net1}
N 360 -270 500 -270 {lab=#net1}
N 500 -270 730 -270 {lab=#net1}
N 190 -250 190 -190 {lab=Iref}
N 190 -130 410 -130 {lab=Vss}
N 290 -130 290 -110 {lab=Vss}
N 320 -240 320 -130 {lab=Vss}
N 370 -160 480 -160 {lab=Iref}
N 410 -130 520 -130 {lab=Vss}
N 320 -570 320 -300 {lab=#net1}
N 520 -430 520 -190 {lab=#net2}
N 320 -610 320 -570 {lab=#net1}
N 360 -640 410 -640 {lab=#net3}
N 320 -750 320 -670 {lab=Vdd}
N 320 -750 450 -750 {lab=Vdd}
N 450 -750 450 -670 {lab=Vdd}
N 450 -750 550 -750 {lab=Vdd}
N 550 -750 550 -670 {lab=Vdd}
N 550 -750 720 -750 {lab=Vdd}
N 720 -750 720 -660 {lab=Vdd}
N 720 -750 820 -750 {lab=Vdd}
N 820 -750 820 -660 {lab=Vdd}
N 380 -640 380 -590 {lab=#net3}
N 380 -590 450 -590 {lab=#net3}
N 550 -610 550 -550 {lab=#net3}
N 450 -550 550 -550 {lab=#net3}
N 490 -430 670 -430 {lab=#net2}
N 450 -610 450 -550 {lab=#net3}
N 490 -550 490 -490 {lab=#net3}
N 680 -630 680 -550 {lab=#net3}
N 550 -550 680 -550 {lab=#net3}
N 720 -600 820 -600 {lab=#net4}
N 770 -600 770 -490 {lab=#net4}
N 590 -640 590 -530 {lab=#net4}
N 590 -530 770 -530 {lab=#net4}
N 860 -630 930 -630 {lab=#net4}
N 890 -630 890 -560 {lab=#net4}
N 770 -560 890 -560 {lab=#net4}
N 970 -600 970 -300 {lab=Vout}
N 730 -270 930 -270 {lab=#net1}
N 520 -130 970 -130 {lab=Vss}
N 970 -240 970 -130 {lab=Vss}
N 970 -750 970 -660 {lab=Vdd}
N 820 -750 970 -750 {lab=Vdd}
N 200 -460 450 -460 {lab=INN}
N 810 -460 810 -400 {lab=INP}
N 200 -400 810 -400 {lab=INP}
N 670 -430 770 -430 {lab=#net2}
N 970 -270 970 -240 {lab=Vss}
N 490 -460 490 -430 {lab=#net2}
N 770 -460 770 -430 {lab=#net2}
N 320 -670 320 -640 {lab=Vdd}
N 450 -670 450 -640 {lab=Vdd}
N 550 -670 550 -640 {lab=Vdd}
N 720 -660 720 -630 {lab=Vdd}
N 820 -660 820 -630 {lab=Vdd}
N 970 -660 970 -630 {lab=Vdd}
N 190 -160 190 -130 {lab=Vss}
N 520 -160 520 -130 {lab=Vss}
N 320 -270 320 -240 {lab=Vss}
N 970 -450 1000 -450 {lab=Vout}
C {symbols/pfet_03v3.sym} 210 -160 2 0 {name=M1
L=0.5u
W=25u
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
C {title.sym} 80 80 0 0 {name=Comparator author="Christopher Amankwaa"}
C {symbols/pfet_03v3.sym} 500 -160 2 1 {name=M2
L=0.5u
W=75u
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
C {symbols/pfet_03v3.sym} 340 -270 2 0 {name=M3
L=0.5u
W=3.85u
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
C {symbols/pfet_03v3.sym} 950 -270 2 1 {name=M4
L=0.5u
W=3.85u
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
C {ipin.sym} 290 -110 3 0 {name=p1 lab=Vss}
C {symbols/pfet_03v3.sym} 470 -460 2 1 {name=M5
L=0.6u
W=16.67u
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
C {symbols/pfet_03v3.sym} 790 -460 2 0 {name=M6
L=0.6u
W=16.67u
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
C {symbols/nfet_03v3.sym} 340 -640 2 0 {name=M7
L=1u
W=0.83u
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
C {symbols/nfet_03v3.sym} 570 -640 2 0 {name=M8
L=1u
W=6.82u
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
C {symbols/nfet_03v3.sym} 840 -630 2 0 {name=M9
L=1u
W=6.82u
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
C {symbols/nfet_03v3.sym} 700 -630 2 1 {name=M10
L=1u
W=6.82u
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
C {symbols/nfet_03v3.sym} 430 -640 2 1 {name=M11
L=1u
W=6.82u
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
C {symbols/nfet_03v3.sym} 950 -630 2 1 {name=M12
L=1u
W=0.83u
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
C {ipin.sym} 320 -750 1 0 {name=p2 lab=Vdd
}
C {ipin.sym} 190 -250 1 0 {name=p3 lab=Iref
}
C {ipin.sym} 200 -460 0 0 {name=p4 lab=INN}
C {ipin.sym} 200 -400 0 0 {name=p5 lab=INP}
C {opin.sym} 1000 -450 0 0 {name=p6 lab=Vout}
