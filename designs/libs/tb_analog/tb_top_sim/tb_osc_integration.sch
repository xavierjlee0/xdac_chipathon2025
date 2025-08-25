v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -870 -765 -790 -765 {lab=vlo}
N -930 -805 -790 -805 {lab=vho}
N -930 -805 -930 -765 {lab=vho}
N -930 -705 -930 -685 {lab=vss}
N -870 -705 -870 -685 {lab=vss}
N -1220 -370 -1220 -350 {lab=GND}
N -1220 -450 -1220 -430 {lab=vss}
N -1220 -530 -1220 -510 {lab=#net1}
N -740 -885 -740 -865 {lab=vdd}
N -1370 -430 -1370 -390 {lab=GND}
N -1370 -530 -1370 -490 {lab=iref}
N -700 -885 -700 -865 {lab=iref}
N -740 -705 -740 -685 {lab=vss}
N -590 -785 -530 -785 {lab=osc_out}
N -1220 -530 -1100 -530 {lab=#net1}
N -1220 -435 -1100 -435 {lab=vss}
N -1040 -435 -1000 -435 {lab=VSSd}
N -1040 -530 -1005 -530 {lab=VDDd}
N -1005 -530 -990 -530 {lab=VDDd}
N -1000 -435 -990 -435 {lab=VSSd}
N -1220 -545 -1220 -530 {lab=#net1}
N -1220 -625 -1220 -605 {lab=vdd}
N -385 -865 -385 -805 {lab=iref}
N -365 -725 -365 -695 {lab=GND}
N -365 -855 -365 -805 {lab=VDD}
N -465 -745 -425 -745 {lab=vsig}
N -465 -785 -425 -785 {lab=osc_out}
N -495 -785 -465 -785 {lab=osc_out}
N -495 -745 -465 -745 {lab=vsig}
N -530 -785 -495 -785 {lab=osc_out}
N -305 -765 -255 -765 {lab=Comp_out}
N -870 -350 -870 -320 {lab=GND}
N -870 -490 -870 -410 {lab=#net2}
N -870 -570 -870 -550 {lab=vsig}
N -1310 -505 -1310 -485 {lab=iref}
N -1370 -505 -1310 -505 {lab=iref}
N -1310 -425 -1310 -415 {lab=GND}
N -1370 -415 -1310 -415 {lab=GND}
N -555 -725 -555 -685 {lab=vss}
C {devices/code_shown.sym} -1360 -160 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {libs/core_analog/oscillator/triangle_osc.sym} -770 -845 0 0 {name=x1}
C {vsource.sym} -1220 -480 0 0 {name=V1 value=\\\{VDD\\\} savecurrent=false}
C {vsource.sym} -1220 -400 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} -930 -735 0 0 {name=V3 value=2.5 savecurrent=false}
C {vsource.sym} -870 -735 0 0 {name=V4 value=0.8 savecurrent=false}
C {gnd.sym} -1220 -350 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -740 -875 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -1220 -440 0 0 {name=p3 sig_type=std_logic lab=vss}
C {isource.sym} -1370 -460 2 0 {name=I0 value=10u}
C {gnd.sym} -1370 -390 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -1220 -625 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -1370 -530 0 0 {name=p5 sig_type=std_logic lab=iref}
C {lab_wire.sym} -700 -875 0 0 {name=p6 sig_type=std_logic lab=iref}
C {lab_wire.sym} -930 -685 0 0 {name=p7 sig_type=std_logic lab=vss}
C {lab_wire.sym} -870 -685 0 0 {name=p8 sig_type=std_logic lab=vss}
C {lab_wire.sym} -740 -685 0 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/code_shown.sym} -700 -510 0 0 {name=Simulation only_toplevel=false value="
.param VDD = 3.3
.param Tbit = 20n
.global VDDd VSSd
.ic v(osc_out)=0
.control
save all

OP
*show all > op.log
show all

TRAN 5n 30u 0
plot vsig
plot osc_out
plot osc_out x1.vcompn vho
plot osc_out x1.vcompp vlo
plot osc_out vlo vho
plot x1.vq osc_out

.endc
"}
C {vsource.sym} -1070 -530 1 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} -1070 -435 1 0 {name=V6 value=0 savecurrent=false}
C {lab_wire.sym} -990 -435 0 0 {name=p11 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} -990 -530 0 0 {name=p12 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} -850 -805 0 0 {name=p13 sig_type=std_logic lab=vho}
C {lab_wire.sym} -810 -765 0 0 {name=p14 sig_type=std_logic lab=vlo}
C {res.sym} -1220 -575 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {libs/core_analog/Comparator/Nmos_Comparator.sym} -405 -805 0 0 {name=xn_comp}
C {lab_wire.sym} -385 -845 0 0 {name=p15 sig_type=std_logic lab=iref}
C {gnd.sym} -365 -695 0 0 {name=l14 lab=GND}
C {vdd.sym} -365 -855 0 0 {name=l15 lab=VDD}
C {lab_wire.sym} -435 -785 0 0 {name=p16 sig_type=std_logic lab=osc_out}
C {lab_wire.sym} -435 -745 0 0 {name=p17 sig_type=std_logic lab=vsig}
C {noconn.sym} -255 -765 2 0 {name=l1}
C {lab_wire.sym} -260 -765 0 0 {name=p1 sig_type=std_logic lab=Comp_out}
C {vsource.sym} -870 -380 0 0 {name=VINP value=2 savecurrent=false}
C {gnd.sym} -870 -320 0 0 {name=l4 lab=GND}
C {res.sym} -870 -520 0 0 {name=R2
value=100
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -870 -560 0 0 {name=p10 sig_type=std_logic lab=vsig}
C {res.sym} -1310 -455 0 0 {name=R7
value=1MEG
footprint=1206
device=resistor
m=1}
C {capa.sym} -555 -755 0 0 {name=C1
m=1
value=25p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -555 -685 0 0 {name=p18 sig_type=std_logic lab=vss}
