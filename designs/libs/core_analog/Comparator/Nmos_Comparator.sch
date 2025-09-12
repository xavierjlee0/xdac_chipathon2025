v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 680 -30 {}
N 230 -150 370 -150 {lab=iref}
N 320 -300 380 -300 {lab=v_3_7_n}
N 380 -300 380 -270 {lab=v_3_7_n}
N 360 -270 500 -270 {lab=v_3_7_n}
N 500 -270 730 -270 {lab=v_3_7_n}
N 80 -260 80 -200 {lab=iref}
N 190 -50 410 -50 {lab=vss}
N 290 -50 290 -30 {lab=vss}
N 370 -150 480 -150 {lab=iref}
N 410 -50 520 -50 {lab=vss}
N 320 -570 320 -300 {lab=v_3_7_n}
N 320 -610 320 -570 {lab=v_3_7_n}
N 360 -640 410 -640 {lab=v_5_11_n}
N 320 -750 320 -670 {lab=vdd}
N 320 -750 450 -750 {lab=vdd}
N 450 -750 450 -670 {lab=vdd}
N 450 -750 550 -750 {lab=vdd}
N 720 -750 820 -750 {lab=vdd}
N 820 -750 820 -660 {lab=vdd}
N 380 -640 380 -590 {lab=v_5_11_n}
N 380 -590 450 -590 {lab=v_5_11_n}
N 490 -430 670 -430 {lab=i_bias_n}
N 450 -610 450 -550 {lab=v_5_11_n}
N 490 -550 490 -490 {lab=v_5_11_n}
N 770 -600 770 -490 {lab=v_6_9_n}
N 860 -630 930 -630 {lab=v_6_9_n}
N 890 -630 890 -560 {lab=v_6_9_n}
N 770 -560 890 -560 {lab=v_6_9_n}
N 970 -600 970 -300 {lab=vout}
N 730 -270 930 -270 {lab=v_3_7_n}
N 520 -50 970 -50 {lab=vss}
N 970 -160 970 -50 {lab=vss}
N 970 -750 970 -660 {lab=vdd}
N 820 -750 970 -750 {lab=vdd}
N 200 -460 450 -460 {lab=inn}
N 810 -460 810 -400 {lab=inp}
N 200 -400 810 -400 {lab=inp}
N 670 -430 770 -430 {lab=i_bias_n}
N 970 -460 990 -460 {lab=vout}
N 320 -270 320 -240 {lab=vss}
N 970 -270 970 -240 {lab=vss}
N 820 -660 820 -630 {lab=vdd}
N 970 -660 970 -630 {lab=vdd}
N 450 -670 450 -640 {lab=vdd}
N 320 -670 320 -640 {lab=vdd}
N 480 -150 590 -150 {lab=iref}
N 250 -190 250 -160 {lab=iref}
N 250 -160 250 -150 {lab=iref}
N 320 -240 320 -50 {lab=vss}
N 80 -200 80 -190 {lab=iref}
N 970 -240 970 -160 {lab=vss}
N 740 -460 770 -460 {lab=vss}
N 490 -460 510 -460 {lab=vss}
N 510 -460 510 -50 {lab=vss}
N 740 -460 740 -50 {lab=vss}
N 70 -140 70 -50 {lab=vss}
N 70 -50 190 -50 {lab=vss}
N 80 -110 80 -60 {lab=vss}
N 80 -60 190 -60 {lab=vss}
N 120 -150 230 -150 {lab=iref}
N 250 -210 250 -190 {lab=iref}
N 80 -210 250 -210 {lab=iref}
N 190 -60 190 -50 {lab=vss}
N 630 -220 630 -190 {lab=i_bias_n}
N 630 -110 630 -50 {lab=vss}
N 640 -140 640 -50 {lab=vss}
N 630 -430 630 -220 {lab=i_bias_n}
N 550 -750 720 -750 {lab=vdd}
N 450 -550 490 -550 {lab=v_5_11_n}
N 770 -600 820 -600 {lab=v_6_9_n}
N 720 -660 720 -630 {lab=vdd}
N 670 -600 720 -600 {lab=v_6_9_n}
N 570 -660 570 -630 {lab=vdd}
N 570 -750 570 -660 {lab=vdd}
N 720 -750 720 -660 {lab=vdd}
N 570 -600 570 -550 {lab=v_5_11_n}
N 490 -550 570 -550 {lab=v_5_11_n}
N 610 -630 610 -530 {lab=v_6_9_n}
N 610 -530 770 -530 {lab=v_6_9_n}
N 760 -630 760 -550 {lab=v_5_11_n}
N 570 -550 760 -550 {lab=v_5_11_n}
N 670 -600 670 -580 {lab=v_6_9_n}
N 670 -580 770 -580 {lab=v_6_9_n}
N 80 -190 80 -180 {lab=iref}
N 70 -150 70 -140 {lab=vss}
N 70 -150 80 -150 {lab=vss}
N 80 -120 80 -110 {lab=vss}
N 630 -190 630 -180 {lab=i_bias_n}
N 630 -150 640 -150 {lab=vss}
N 640 -150 640 -140 {lab=vss}
N 630 -120 630 -110 {lab=vss}
C {title.sym} 80 80 0 0 {name=Comparator author="Christopher Amankwaa"}
C {symbols/nfet_03v3.sym} 340 -270 0 1 {name=M3
L=1u
W=3.5u
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
C {symbols/nfet_03v3.sym} 950 -270 0 0 {name=M4
L=1u
W=3.5u
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
C {ipin.sym} 290 -30 3 0 {name=p1 lab=vss}
C {symbols/nfet_03v3.sym} 470 -460 0 0 {name=M5
L=1u
W=4u
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
C {symbols/nfet_03v3.sym} 790 -460 0 1 {name=M6
L=1u
W=4u
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
C {symbols/pfet_03v3.sym} 340 -640 0 1 {name=M7
L=0.5u
W=16.5u
nf=4
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
C {symbols/pfet_03v3.sym} 840 -630 0 1 {name=M9
L=0.5u
W=10u
nf=2
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
C {symbols/pfet_03v3.sym} 430 -640 0 0 {name=M11
L=0.5u
W=10u
nf=2
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
C {symbols/pfet_03v3.sym} 950 -630 0 0 {name=M12
L=0.5u
W=16.5u
nf=4
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
C {ipin.sym} 320 -750 1 0 {name=p2 lab=vdd
}
C {ipin.sym} 80 -260 1 0 {name=p3 lab=iref

}
C {ipin.sym} 200 -460 0 0 {name=p4 lab=inn}
C {ipin.sym} 200 -400 0 0 {name=p5 lab=inp}
C {opin.sym} 990 -460 0 0 {name=p6 lab=vout}
C {symbols/pfet_03v3.sym} 740 -630 0 1 {name=M1
L=0.5u
W=10u
nf=2
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
C {symbols/pfet_03v3.sym} 590 -630 0 1 {name=M2
L=0.5u
W=10u
nf=2
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
C {symbols/nfet_03v3.sym} 100 -150 0 1 {name=M8
L=1u
W=2.5u
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
C {symbols/nfet_03v3.sym} 610 -150 0 0 {name=M10
L=1u
W=5u
nf=2
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
C {lab_wire.sym} 630 -330 0 0 {name=p7 sig_type=std_logic lab=i_bias_n}
C {lab_wire.sym} 540 -550 0 0 {name=p8 sig_type=std_logic lab=v_5_11_n}
C {lab_wire.sym} 750 -530 0 0 {name=p9 sig_type=std_logic lab=v_6_9_n}
C {lab_wire.sym} 320 -520 0 0 {name=p10 sig_type=std_logic lab=v_3_7_n}
