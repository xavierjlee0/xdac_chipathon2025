v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 510 -795 590 -795 {lab=vlo}
N 450 -835 590 -835 {lab=vho}
N -100 -965 -100 -945 {lab=vss}
N -480 -725 -480 -705 {lab=vss}
N 160 -400 160 -380 {lab=GND}
N 160 -480 160 -460 {lab=rvss}
N 160 -560 160 -540 {lab=#net1}
N 640 -915 640 -895 {lab=vdd}
N 60 -460 60 -420 {lab=GND}
N 60 -560 60 -520 {lab=iref}
N 680 -915 680 -895 {lab=iref}
N 640 -735 640 -715 {lab=vss}
N 790 -815 850 -815 {lab=vout}
N 1265 -1130 1265 -1090 {lab=vss}
N 160 -560 280 -560 {lab=#net1}
N 160 -465 280 -465 {lab=rvss}
N 340 -465 380 -465 {lab=VSSd}
N 340 -560 375 -560 {lab=VDDd}
N 375 -560 390 -560 {lab=VDDd}
N 380 -465 390 -465 {lab=VSSd}
N 160 -575 160 -560 {lab=#net1}
N 160 -655 160 -635 {lab=rvdd}
N 1110 -1110 1130 -1110 {lab=vss}
N 1130 -1110 1130 -1080 {lab=vss}
N 1120 -1080 1130 -1080 {lab=vss}
N 1130 -1110 1150 -1110 {lab=vss}
N 1030 -1270 1130 -1270 {lab=vdd}
N 1130 -1270 1170 -1270 {lab=vdd}
N 1230 -1190 1270 -1190 {lab=pad}
N -100 -1150 -100 -1025 {lab=#net2}
N -100 -1150 -90 -1150 {lab=#net2}
N -480 -840 -480 -785 {lab=#net3}
N -480 -840 -450 -840 {lab=#net3}
N 920 -1220 920 -1190 {lab=#net4}
N 920 -1190 1030 -1190 {lab=#net4}
N 900 -1220 900 -1120 {lab=vout}
N 840 -1120 900 -1120 {lab=vout}
N -250 -840 -160 -840 {lab=#net5}
N -160 -840 -160 -800 {lab=#net5}
N 110 -1150 160 -1150 {lab=#net6}
N 170 -1150 170 -1060 {lab=#net6}
N 160 -1150 170 -1150 {lab=#net6}
N 190 -1150 190 -1060 {lab=vho}
N 190 -1150 240 -1150 {lab=vho}
N -140 -840 -140 -800 {lab=vlo}
N -140 -840 -80 -840 {lab=vlo}
N -370 -920 -310 -920 {lab=vss}
N -370 -760 -300 -760 {lab=vdd}
N -10 -1230 70 -1230 {lab=vss}
N -10 -1070 70 -1070 {lab=vdd}
N -215 -800 -180 -800 {lab=vdd}
N -120 -800 -95 -800 {lab=vss}
N 110 -1060 150 -1060 {lab=vdd}
N 210 -1060 250 -1060 {lab=vss}
N 940 -1220 985 -1220 {lab=vdd}
N 805 -1220 880 -1220 {lab=vss}
N -950 -630 -890 -630 {lab=vdd}
N -630 -350 -570 -350 {lab=vss}
N -910 -470 -870 -470 {lab=rvss}
N -985 -470 -950 -470 {lab=vss}
N -590 -510 -545 -510 {lab=rvdd}
N -670 -510 -630 -510 {lab=vdd}
C {title.sym} 160 -40 0 0 {name=l1 author="X.J. Lee"}
C {libs/core_analog/oscillator/triangle_osc.sym} 610 -875 0 0 {name=x1}
C {vsource.sym} 160 -510 0 0 {name=V1 value=\\\{VDD\\\} savecurrent=false}
C {vsource.sym} 160 -430 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} -100 -995 0 0 {name=V3 value=2.5 savecurrent=false}
C {vsource.sym} -480 -755 0 0 {name=V4 value=0.8 savecurrent=false}
C {gnd.sym} 160 -380 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 640 -905 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 160 -470 0 0 {name=p3 sig_type=std_logic lab=rvss}
C {isource.sym} 60 -490 2 0 {name=I0 value=10u}
C {gnd.sym} 60 -420 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 160 -655 0 0 {name=p4 sig_type=std_logic lab=rvdd}
C {lab_wire.sym} 60 -560 0 0 {name=p5 sig_type=std_logic lab=iref}
C {lab_wire.sym} 680 -905 0 0 {name=p6 sig_type=std_logic lab=iref}
C {lab_wire.sym} -100 -945 0 0 {name=p7 sig_type=std_logic lab=vss}
C {lab_wire.sym} -480 -705 0 0 {name=p8 sig_type=std_logic lab=vss}
C {lab_wire.sym} 640 -715 0 0 {name=p9 sig_type=std_logic lab=vss}
C {lab_wire.sym} 840 -815 0 0 {name=p10 sig_type=std_logic lab=vout}
C {devices/code_shown.sym} 680 -540 0 0 {name=Simulation only_toplevel=false value="
.param VDD = 3.3
.param Tbit = 20n
.global VDDd VSSd
.ic v(vout)=0
.options savecurrents
.control
save all

OP
*show all > op.log
show all

TRAN 5n 10u 0
plot vout
plot vout x1.vcompn vho
plot vout x1.vcompp vlo
plot vout vlo vho
plot x1.vq vout
plot @C1[i]
.endc
"}
C {capa.sym} 1265 -1160 0 0 {name=C1
m=1
value=25p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1265 -1090 0 0 {name=p1 sig_type=std_logic lab=vss}
C {vsource.sym} 310 -560 1 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} 310 -465 1 0 {name=V6 value=0 savecurrent=false}
C {lab_wire.sym} 390 -465 0 0 {name=p11 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} 390 -560 0 0 {name=p12 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} 530 -835 0 0 {name=p13 sig_type=std_logic lab=vho}
C {lab_wire.sym} 570 -795 0 0 {name=p14 sig_type=std_logic lab=vlo}
C {res.sym} 160 -605 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {libs/core_analog/Chipathon2025_pads/xschem/symbols/io_asig_5p0.sym} 1230 -1110 0 1 {name=IO2
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {lab_wire.sym} 1120 -1080 0 0 {name=p18 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1260 -1190 0 0 {name=p19 sig_type=std_logic lab=pad
}
C {lab_wire.sym} 1075 -1270 0 0 {name=p20 sig_type=std_logic lab=vdd}
C {devices/code_shown.sym} 1040 -550 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include /foss/designs/libs/core_analog/Chipathon2025_pads/xschem/gf180mcu_fd_io.spice
.include /foss/designs/libs/core_analog/Chipathon2025_pads/xschem/gf180mcu_fd_io__asig_5p0_extracted.spice
.include $::180MCU_MODELS/design.ngspice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
"

"
"}
C {libs/core_analog/Chipathon2025_pads/xschem/symbols/io_asig_5p0.sym} -90 -1230 2 1 {name=IO1
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {libs/core_analog/Chipathon2025_pads/xschem/symbols/io_asig_5p0.sym} -450 -920 2 1 {name=IO3
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {libs/core_analog/ESD/io_secondary_5p0.sym} -150 -650 3 0 {name=x2}
C {libs/core_analog/ESD/io_secondary_5p0.sym} 180 -910 3 0 {name=x3}
C {libs/core_analog/ESD/io_secondary_5p0.sym} 910 -1370 1 0 {name=x4}
C {lab_wire.sym} 865 -1120 0 0 {name=p15 sig_type=std_logic lab=vout}
C {lab_wire.sym} 225 -1150 0 0 {name=p16 sig_type=std_logic lab=vho}
C {lab_wire.sym} -105 -840 0 0 {name=p17 sig_type=std_logic lab=vlo}
C {lab_wire.sym} 15 -1230 0 0 {name=p22 sig_type=std_logic lab=vss}
C {lab_wire.sym} -315 -920 0 0 {name=p23 sig_type=std_logic lab=vss}
C {lab_wire.sym} -200 -800 0 0 {name=p25 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -95 -800 0 0 {name=p26 sig_type=std_logic lab=vss}
C {lab_wire.sym} 125 -1060 0 0 {name=p27 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 245 -1060 0 0 {name=p28 sig_type=std_logic lab=vss}
C {lab_wire.sym} 980 -1220 0 0 {name=p29 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 825 -1220 0 0 {name=p30 sig_type=std_logic lab=vss}
C {lab_wire.sym} 70 -1070 0 0 {name=p21 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -300 -760 0 0 {name=p24 sig_type=std_logic lab=vdd}
C {libs/core_analog/Chipathon2025_pads/xschem/symbols/io_dvdd.sym} -1030 -470 0 0 {name=IO4
model=gf180mcu_fd_io__dvdd
spiceprefix=X
}
C {libs/core_analog/Chipathon2025_pads/xschem/symbols/io_dvss.sym} -710 -350 0 0 {name=IO5
model=gf180mcu_fd_io__dvss
spiceprefix=X
}
C {lab_wire.sym} -560 -510 0 0 {name=p31 sig_type=std_logic lab=rvdd}
C {lab_wire.sym} -920 -630 0 0 {name=p32 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -590 -350 0 0 {name=p33 sig_type=std_logic lab=vss}
C {lab_wire.sym} -880 -470 0 0 {name=p34 sig_type=std_logic lab=rvss}
C {lab_wire.sym} -965 -470 0 0 {name=p35 sig_type=std_logic lab=vss}
C {lab_wire.sym} -650 -510 0 0 {name=p36 sig_type=std_logic lab=vdd}
