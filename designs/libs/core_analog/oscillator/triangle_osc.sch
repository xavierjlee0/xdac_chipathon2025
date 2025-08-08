v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 720 -350 720 -300 {lab=iref}
N 870 -350 870 -300 {lab=iref}
N 840 -660 910 -660 {lab=#net1}
N 950 -660 970 -660 {lab=vdd}
N 780 -660 800 -660 {lab=vdd}
N 880 -540 910 -540 {lab=nq}
N 620 -390 640 -390 {lab=iref}
N 170 -250 180 -250 {lab=vss}
N 170 -700 630 -700 {lab=vdd}
N 180 -250 640 -250 {lab=vss}
N 300 -300 320 -300 {lab=iref}
N 550 -350 550 -300 {lab=iref}
N 250 -650 260 -650 {lab=vdd}
N 250 -700 250 -650 {lab=vdd}
N 260 -700 260 -680 {lab=vdd}
N 140 -560 180 -560 {lab=out}
N 140 -560 140 -390 {lab=out}
N 140 -390 140 -190 {lab=out}
N 1060 -490 1060 -220 {lab=out}
N 950 -490 1060 -490 {lab=out}
N 1060 -490 1150 -490 {lab=out}
N 950 -540 970 -540 {lab=vdd}
N 970 -440 970 -280 {lab=vss}
N 950 -250 970 -250 {lab=vss}
N 340 -410 360 -410 {lab=vcompp}
N 280 -500 280 -480 {lab=vss}
N 280 -370 280 -350 {lab=vss}
N 140 -390 220 -390 {lab=out}
N 680 -300 720 -300 {lab=iref}
N 260 -620 260 -580 {lab=#net2}
N 260 -370 260 -340 {lab=#net3}
N 280 -350 310 -350 {lab=vss}
N 280 -450 310 -450 {lab=vdd}
N 280 -580 300 -580 {lab=vdd}
N 550 -350 720 -350 {lab=iref}
N 720 -350 870 -350 {lab=iref}
N 640 -390 640 -350 {lab=iref}
N 180 -560 220 -560 {lab=out}
N 730 -540 770 -540 {lab=nq}
N 360 -410 460 -410 {lab=vcompp}
N 490 -520 530 -520 {lab=vcompp}
N 340 -540 460 -540 {lab=vcompn}
N 490 -540 530 -540 {lab=vcompn}
N 730 -520 740 -520 {lab=q}
N 740 -520 760 -520 {lab=q}
N 760 -520 770 -520 {lab=q}
N 630 -290 630 -250 {lab=vss}
N 960 -290 970 -290 {lab=vss}
N 950 -260 950 -250 {lab=vss}
N 840 -300 910 -300 {lab=iref}
N 800 -260 800 -250 {lab=vss}
N 790 -290 790 -250 {lab=vss}
N 250 -290 250 -250 {lab=vss}
N 260 -260 260 -250 {lab=vss}
N 640 -260 640 -250 {lab=vss}
N 640 -350 640 -340 {lab=iref}
N 800 -600 870 -600 {lab=#net1}
N 680 -600 800 -600 {lab=#net1}
N 950 -500 950 -490 {lab=out}
N 970 -450 970 -440 {lab=vss}
N 950 -450 970 -450 {lab=vss}
N 950 -490 950 -480 {lab=out}
N 100 -700 170 -700 {lab=vdd}
N 100 -520 220 -520 {lab=vho}
N 100 -430 220 -430 {lab=vlo}
N 100 -250 170 -250 {lab=vss}
N 140 -190 1060 -190 {lab=out}
N 640 -250 950 -250 {lab=vss}
N 320 -300 550 -300 {lab=iref}
N 460 -540 490 -540 {lab=vcompn}
N 460 -520 490 -520 {lab=vcompp}
N 460 -490 460 -430 {lab=vcompp}
N 770 -540 880 -540 {lab=nq}
N 880 -450 910 -450 {lab=nq}
N 880 -540 880 -450 {lab=nq}
N 950 -510 950 -500 {lab=out}
N 800 -590 800 -340 {lab=#net1}
N 870 -660 870 -600 {lab=#net1}
N 630 -700 970 -700 {lab=vdd}
N 300 -650 680 -650 {lab=#net1}
N 950 -700 950 -690 {lab=vdd}
N 800 -700 800 -690 {lab=vdd}
N 800 -630 800 -590 {lab=#net1}
N 680 -650 680 -600 {lab=#net1}
N 780 -700 780 -660 {lab=vdd}
N 970 -700 970 -620 {lab=vdd}
N 460 -520 460 -490 {lab=vcompp}
N 970 -280 970 -250 {lab=vss}
N 970 -620 970 -540 {lab=vdd}
N 1060 -220 1060 -190 {lab=out}
N 460 -430 460 -410 {lab=vcompp}
N 950 -630 950 -570 {lab=#net4}
N 950 -420 950 -340 {lab=#net5}
C {title.sym} 160 -40 0 0 {name=l1 author="X.J. Lee"}
C {symbols/pfet_03v3.sym} 820 -660 0 1 {name=M4
L=1u
W=4.5u
nf=3
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 930 -660 0 0 {name=M5
L=1u
W=4.5u
nf=3
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 930 -540 0 0 {name=M6
L=0.3u
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
C {ipin.sym} 620 -390 0 0 {name=p2 lab=iref}
C {ipin.sym} 100 -250 0 0 {name=p4 lab=vss}
C {symbols/pfet_03v3.sym} 280 -650 0 1 {name=M9
L=1u
W=4.5u
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
C {ipin.sym} 100 -520 0 0 {name=p5 lab=vho}
C {ipin.sym} 100 -430 0 0 {name=p6 lab=vlo}
C {opin.sym} 1150 -490 0 0 {name=p7 lab=out}
C {devices/code_shown.sym} 0 -150 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {libs/core_analog/Comparator/Nmos_Comparator.sym} 240 -580 0 0 {name=xn_comp}
C {libs/core_analog/Comparator/Pmos_Comparator.sym} 240 -450 0 0 {name=xp_comp}
C {ipin.sym} 100 -700 0 0 {name=p12 lab=vdd}
C {lab_wire.sym} 280 -480 0 0 {name=p13 sig_type=std_logic lab=vss}
C {lab_wire.sym} 310 -350 0 0 {name=p1 sig_type=std_logic lab=vss}
C {lab_wire.sym} 310 -450 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 300 -580 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 440 -410 0 0 {name=p14 sig_type=std_logic lab=vcompp}
C {lab_wire.sym} 440 -540 0 0 {name=p15 sig_type=std_logic lab=vcompn}
C {libs/core_analog/oscillator/sr_latch.sym} 550 -510 2 1 {name=x1}
C {lab_wire.sym} 760 -540 0 0 {name=p8 sig_type=std_logic lab=nq}
C {lab_wire.sym} 760 -520 0 0 {name=p9 sig_type=std_logic lab=q}
C {libs/core_analog/unit_nmos/unit_nmos.sym} 680 -300 0 1 {name=x3 M=1}
C {libs/core_analog/unit_nmos/unit_nmos.sym} 840 -300 0 1 {name=x4 M=3}
C {libs/core_analog/unit_nmos/unit_nmos.sym} 910 -300 0 0 {name=x5 M=3}
C {libs/core_analog/unit_nmos/unit_nmos.sym} 300 -300 0 1 {name=x2 M=1}
C {noconn.sym} 770 -520 2 0 {name=l2}
C {symbols/nfet_03v3.sym} 930 -450 0 0 {name=M1
L=0.3u
W=3u
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
