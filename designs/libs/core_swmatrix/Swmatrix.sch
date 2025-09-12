v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {CHANGED!
This is a 18 by 16 Switch Matrix (for now)
- the transmission gates are an empty cell
- the BUSES are the columns
- the PINS are the rows} 390 -247.5 0 0 0.3 0.3 {}
N -250 110 -200 110 {lab=#net1}
N 50 110 70 110 {lab=clock_in}
N 370 130 400 130 {lab=#net2}
N 400 130 400 160 {lab=#net2}
N 400 160 450 160 {lab=#net2}
N 370 110 450 110 {lab=#net3}
N 530 110 610 110 {lab=#net4}
N 530 160 610 160 {lab=#net5}
N 50 30 370 30 {lab=#net6}
N 370 30 370 60 {lab=#net6}
N 370 60 450 60 {lab=#net6}
N 530 60 610 60 {lab=#net7}
N 690 60 790 60 {lab=data_in}
N 790 60 790 90 {lab=data_in}
N 790 90 830 90 {lab=data_in}
N 690 110 830 110 {lab=PHI_1}
N 690 160 790 160 {lab=PHI_2}
N 790 140 790 160 {lab=PHI_2}
N 790 130 790 140 {lab=PHI_2}
N 790 130 830 130 {lab=PHI_2}
N 1130 110 1280 110 {lab=data_out}
N 1130 130 1280 130 {lab=BUS[1:16]}
N 20 110 50 110 {lab=clock_in}
N -120 110 -60 110 {lab=clockb}
N -120 30 -60 30 {lab=datab}
N -250 30 -200 30 {lab=#net8}
N 20 30 50 30 {lab=#net6}
N 1130 150 1280 150 {lab=PIN[1:18]}
N -580 210 -540 210 {lab=clock}
N -540 210 -540 240 {lab=clock}
N -540 240 -420 240 {lab=clock}
N -420 240 -410 240 {lab=clock}
N -580 20 -520 20 {lab=data}
N -520 30 -430 30 {lab=data}
N -520 20 -520 30 {lab=data}
N -470 -20 -430 -20 {lab=VDDd}
N -470 70 -430 70 {lab=VSSd}
N -450 190 -410 190 {lab=VDDd}
N -260 10 -260 30 {lab=#net8}
N -260 30 -250 30 {lab=#net8}
N -240 110 -240 220 {lab=#net1}
N 1130 70 1160 70 {lab=VSSd}
N 630 -10 720 -10 {lab=EN}
N -630 20 -580 20 {lab=data}
N -630 210 -580 210 {lab=clock}
N 1130 90 1170 90 {lab=VDDd}
N 1160 70 1230 70 {lab=VSSd}
N 480 410 510 410 {lab=VSSd}
N 480 460 520 460 {lab=VDDd}
N 510 410 530 410 {lab=VSSd}
N -460 280 -410 280 {lab=VSSd}
N 1150 180 1220 180 {lab=PIN[1:18]}
N 720 -10 830 70 {lab=EN}
C {libs/core_swmatrix/NO_ClkGen.sym} 220 120 0 0 {name=x1}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_2.sym} -160 30 0 0 {name=x3 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_4.sym} 490 160 0 0 {name=x4 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_8.sym} 650 160 0 0 {name=x5 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_2.sym} -160 110 0 0 {name=x6 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_2.sym} -20 30 0 0 {name=x7 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_2.sym} -20 110 0 0 {name=x8 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} -70 110 0 0 {name=p3 sig_type=std_logic lab=clockb
}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_4.sym} 490 110 0 0 {name=x9 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_8.sym} 650 110 0 0 {name=x10 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_4.sym} 490 60 0 0 {name=x11 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_8.sym} 650 60 0 0 {name=x12 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} -70 30 0 0 {name=p6 sig_type=std_logic lab=datab
}
C {lab_wire.sym} 60 110 0 0 {name=p7 sig_type=std_logic lab=clock_in
}
C {lab_wire.sym} 780 60 0 0 {name=p8 sig_type=std_logic lab=data_in
}
C {lab_wire.sym} 780 110 0 0 {name=p9 sig_type=std_logic lab=PHI_1
}
C {lab_wire.sym} 780 160 0 0 {name=p10 sig_type=std_logic lab=PHI_2
}
C {libs/core_swmatrix/Schmitt.sym} -320 20 0 0 {name=x2v \{xschem version=3.4.7 file_version=1.2\}
G \{\}
K \{type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
\}
V \{\}
S \{\}
E \{\}
L 4 -110 -40 -90 -40 \{\}
L 4 -110 10 -90 10 \{\}
L 4 40 -10 60 -10 \{\}
L 4 -110 50 -90 50 \{\}
L 4 -80 -10 -40 -10 \{\}
L 4 -30 0 -0 50 \{\}
L 4 -60 0 -30 50 \{\}
L 4 -30 50 20 50 \{\}
L 4 -40 -10 -30 0 \{\}
L 4 -70 -10 -60 -0 \{\}
L 4 -60 0 -30 50 \{\}
B 4 -100 -70 50 80 \{fill = no\}
B 5 -112.5 -42.5 -107.5 -37.5 \{name=VDD dir=in\}
B 5 -112.5 7.5 -107.5 12.5 \{name=Vin dir=in\}
B 5 57.5 -12.5 62.5 -7.5 \{name=Vo dir=out\}
B 5 -112.5 47.5 -107.5 52.5 \{name=VSS dir=in\}
T \{@name\} 5 -82 0 0 0.2 0.2 \{\}
T \{VDD\} -85 -44 0 0 0.2 0.2 \{\}
T \{Vin\} -85 6 0 0 0.2 0.2 \{\}
T \{Vo\} 35 -14 0 1 0.2 0.2 \{\}
T \{VSS\} -85 46 0 0 0.2 0.2 \{\}
v \{xschem version=3.4.7 file_version=1.2\}
G \{\}
K \{\}
V \{\}
S \{\}
E \{\}
N -30 -660 550 -660 \{lab=VDD\}
N 300 -660 300 -620 \{lab=VDD\}
N 300 -490 350 -490 \{lab=VDD\}
N 350 -660 350 -490 \{lab=VDD\}
N 300 -590 320 -590 \{lab=VDD\}
N 320 -660 320 -590 \{lab=VDD\}
N 300 -560 300 -520 \{lab=#net1\}
N 300 -460 300 -420 \{lab=#net2\}
N 300 -440 470 -440 \{lab=#net2\}
N 480 -490 480 -420 \{lab=#net2\}
N 470 -440 480 -440 \{lab=#net2\}
N 300 -360 300 -330 \{lab=#net3\}
N -50 -230 300 -230 \{lab=VSS\}
N 300 -270 300 -230 \{lab=VSS\}
N 300 -230 520 -230 \{lab=VSS\}
N 300 -300 350 -300 \{lab=VSS\}
N 350 -300 350 -240 \{lab=VSS\}
N 350 -240 350 -230 \{lab=VSS\}
N 300 -390 390 -390 \{lab=VSS\}
N 390 -390 390 -230 \{lab=VSS\}
N 510 -380 550 -380 \{lab=VDD\}
N 550 -660 550 -380 \{lab=VDD\}
N 510 -530 530 -530 \{lab=VSS\}
N 530 -530 530 -230 \{lab=VSS\}
N 520 -230 530 -230 \{lab=VSS\}
N 300 -340 430 -340 \{lab=#net3\}
N 430 -380 430 -340 \{lab=#net3\}
N 430 -380 450 -380 \{lab=#net3\}
N 300 -540 410 -540 \{lab=#net1\}
N 410 -540 410 -530 \{lab=#net1\}
N 410 -530 450 -530 \{lab=#net1\}
N 480 -440 620 -440 \{lab=#net2\}
N -80 -500 150 -500 \{lab=Vin\}
N 150 -590 150 -500 \{lab=Vin\}
N 150 -590 260 -590 \{lab=Vin\}
N 150 -500 150 -300 \{lab=Vin\}
N 150 -300 260 -300 \{lab=Vin\}
N 150 -390 260 -390 \{lab=Vin\}
N 150 -490 260 -490 \{lab=Vin\}
N 480 -380 480 -230 \{lab=VSS\}
N 480 -660 480 -530 \{lab=VDD\}
N 620 -580 620 -440 \{lab=#net2\}
N 620 -580 660 -580 \{lab=#net2\}
N 620 -440 620 -360 \{lab=#net2\}
N 620 -360 670 -360 \{lab=#net2\}
N 530 -230 810 -230 \{lab=VSS\}
N 550 -660 760 -660 \{lab=VDD\}
N 710 -490 710 -390 \{lab=Vo\}
N 710 -660 710 -610 \{lab=VDD\}
N 710 -550 710 -490 \{lab=Vo\}
N 660 -580 670 -580 \{lab=#net2\}
N 710 -330 710 -230 \{lab=VSS\}
N 710 -360 730 -360 \{lab=VSS\}
N 730 -360 730 -230 \{lab=VSS\}
N 710 -580 720 -580 \{lab=VDD\}
N 720 -660 720 -580 \{lab=VDD\}
N 710 -490 750 -490 \{lab=Vo\}
N 750 -490 750 -470 \{lab=Vo\}
N 750 -470 790 -470 \{lab=Vo\}
C \{title.sym\} 160 -50 0 0 \{name=Schmitt Trigger author="Angel Romero"\}
C \{symbols/nfet_03v3.sym\} 280 -390 0 0 \{name=M2
L=0.28u
W=2u
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
\}
C \{symbols/pfet_03v3.sym\} 280 -590 0 0 \{name=M4
L=0.28u
W=6u
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
\}
C \{symbols/pfet_03v3.sym\} 280 -490 0 0 \{name=M5
L=0.28u
W=6u
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
\}
C \{symbols/nfet_03v3.sym\} 280 -300 0 0 \{name=M1
L=0.28u
W=2u
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
\}
C \{symbols/nfet_03v3.sym\} 480 -400 1 0 \{name=M3
L=0.28u
W=2u
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
\}
C \{symbols/pfet_03v3.sym\} 480 -510 3 0 \{name=M6
L=0.28u
W=2u
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
\}
C \{ipin.sym\} -30 -660 0 0 \{name=p1 lab=VDD\}
C \{ipin.sym\} -50 -230 0 0 \{name=p2 lab=VSS\}
C \{ipin.sym\} -80 -500 0 0 \{name=p3 lab=Vin\}
C \{opin.sym\} 790 -470 0 0 \{name=p4 lab=Vo\}
C \{symbols/nfet_03v3.sym\} 690 -360 0 0 \{name=M7
L=0.28u
W=2u
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
\}
C \{symbols/pfet_03v3.sym\} 690 -580 0 0 \{name=M8
L=0.28u
W=6u
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
\}
v \{xschem version=3.4.7 file_version=1.2\}
G \{\}
K \{type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
\}
V \{\}
S \{\}
E \{\}
L 4 -110 -40 -90 -40 \{\}
L 4 -110 10 -90 10 \{\}
L 4 40 -10 60 -10 \{\}
L 4 -110 50 -90 50 \{\}
L 4 -80 -10 -40 -10 \{\}
L 4 -30 0 -0 50 \{\}
L 4 -60 0 -30 50 \{\}
L 4 -30 50 20 50 \{\}
L 4 -40 -10 -30 0 \{\}
L 4 -70 -10 -60 -0 \{\}
L 4 -60 0 -30 50 \{\}
B 4 -100 -70 50 80 \{fill = no\}
B 5 -112.5 -42.5 -107.5 -37.5 \{name=VDD dir=in\}
B 5 -112.5 7.5 -107.5 12.5 \{name=Vin dir=in\}
B 5 57.5 -12.5 62.5 -7.5 \{name=Vo dir=out\}
B 5 -112.5 47.5 -107.5 52.5 \{name=VSS dir=in\}
T \{@name\} 5 -82 0 0 0.2 0.2 \{\}
T \{VDD\} -85 -44 0 0 0.2 0.2 \{\}
T \{Vin\} -85 6 0 0 0.2 0.2 \{\}
T \{Vo\} 35 -14 0 1 0.2 0.2 \{\}
T \{VSS\} -85 46 0 0 0.2 0.2 \{\}
}
C {libs/core_swmatrix/Schmitt.sym} -300 230 0 0 {name=x13}
C {lab_wire.sym} -430 190 0 0 {name=p14 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} -460 -20 0 0 {name=p15 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} -450 70 0 0 {name=p17 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} 1160 90 0 0 {name=p18 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} 1150 70 0 0 {name=p19 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} 1270 130 0 0 {name=p23 sig_type=std_logic lab=BUS[1:16]}
C {lab_wire.sym} 1230 150 0 0 {name=p26 sig_type=std_logic lab=PIN[1:18]}
C {ipin.sym} -630 20 0 0 {name=p4 lab=data}
C {ipin.sym} -630 210 0 0 {name=p5 lab=clock}
C {ipin.sym} 630 -10 0 0 {name=p12 lab=EN}
C {ipin.sym} 480 460 0 0 {name=p16 lab=VDDd}
C {ipin.sym} 480 410 0 0 {name=p13 lab=VSSd}
C {lab_wire.sym} 520 460 0 0 {name=p21 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} 530 410 0 0 {name=p22 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} -430 280 0 0 {name=p24 sig_type=std_logic lab=VSSd}
C {opin.sym} 1280 110 0 0 {name=p25 lab=data_out}
C {iopin.sym} 1280 130 0 0 {name=p27 lab=BUS[1:16]}
C {iopin.sym} 1220 180 0 0 {name=p28 lab=PIN[1:18]}
C {lab_wire.sym} 1190 180 0 0 {name=p11 sig_type=std_logic lab=PIN[1:18]}
C {libs/core_swmatrix/Angel_swmatrix_block.sym} 980 110 0 0 {name=x2}
