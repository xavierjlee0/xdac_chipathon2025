v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 -350 260 -350 {lab=vin}
N 910 -320 910 -260 {lab=#net1}
N 550 -260 910 -260 {lab=#net1}
N 550 -260 550 -170 {lab=#net1}
N 950 -220 950 -190 {lab=#net2}
N 550 -270 950 -270 {lab=#net2}
N 550 -370 550 -270 {lab=#net2}
N 950 -220 1010 -220 {lab=#net2}
N 910 -320 970 -320 {lab=#net1}
N 990 -360 990 -350 {lab=vss}
N 1040 -80 1040 -60 {lab=vss}
N 950 -270 950 -220 {lab=#net2}
N 40 -350 120 -350 {lab=vin}
N 970 -440 970 -320 {lab=#net1}
N 1010 -220 1010 -140 {lab=#net2}
N 1010 -140 1150 -140 {lab=#net2}
N 1410 -440 1500 -440 {lab=vout_pmos}
N 1600 -140 1660 -140 {lab=vout_nmos}
N 410 -350 610 -350 {lab=#net3}
N 120 -350 120 -150 {lab=vin}
N 150 -100 680 -100 {lab=vin}
N 610 -350 660 -350 {lab=#net3}
N 550 -390 550 -370 {lab=#net2}
N 550 -390 660 -390 {lab=#net2}
N 910 -350 910 -320 {lab=#net1}
N 120 -100 150 -100 {lab=vin}
N 120 -150 120 -100 {lab=vin}
N 550 -170 550 -140 {lab=#net1}
N 550 -140 680 -140 {lab=#net1}
N 1290 -440 1410 -440 {lab=vout_pmos}
N 1230 -140 1270 -140 {lab=yx2}
N 990 -440 990 -420 {lab=#net1}
N 1490 -140 1520 -140 {lab=vout_nmos}
N 1580 -140 1600 -140 {lab=vout_nmos}
N 1520 -140 1580 -140 {lab=vout_nmos}
N 1500 -440 1680 -440 {lab=vout_pmos}
N 900 0 900 50 {lab=vss}
N 1040 -60 1040 -0 {lab=vss}
N 990 -350 990 0 {lab=vss}
N 990 -440 1100 -440 {lab=#net1}
N 970 -440 990 -440 {lab=#net1}
N 1250 -440 1290 -440 {lab=vout_pmos}
N 680 -140 780 -140 {lab=#net1}
N 680 -100 780 -100 {lab=vin}
N 260 -350 290 -350 {lab=vin}
N 370 -350 410 -350 {lab=#net3}
N 780 -370 910 -370 {lab=#net1}
N 910 -370 910 -350 {lab=#net1}
N 900 -120 950 -120 {lab=#net2}
N 950 -190 950 -120 {lab=#net2}
N 1350 -140 1490 -140 {lab=vout_nmos}
N 900 0 990 0 {lab=vss}
N 990 0 1040 0 {lab=vss}
N 1180 -440 1250 -440 {lab=vout_pmos}
N -300 -230 40 -230 {lab=vin}
N 40 -350 40 -230 {lab=vin}
C {title.sym} 100 250 0 0 {name=l1 author="Christopher O Amankwaa"}
C {capa.sym} 990 -390 0 0 {name=C1
m=1
value=1.3p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1040 -110 0 0 {name=C2
m=1
value=1.3p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1260 -140 0 0 {name=p6 sig_type=std_logic lab=yx2}
C {devices/code_shown.sym} 1980 90 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} 1190 -140 0 0 {name=x3 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} 1310 -140 0 0 {name=x4 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} 330 -350 0 0 {name=x5 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/nand2_1.sym} 840 -120 0 0 {name=x6 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/nand2_1.sym} 720 -370 0 0 {name=x7 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} 1140 -440 0 0 {name=x8 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {devices/code_shown.sym} 1990 -910 0 0 {name=NGSPICE only_toplevel=true
value="

.global VDDd VSSd
.control
save all
**Frequency & time settings
let fsig = 900k
let tper=1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr

let tstop = 4 * tper
let tstep = 0.001*tper


**voltages
alter @Vin[PULSE] = [ 0 2.3 0 $&tfr $&tfr $&ton $&tper 3 ]
alter @Vin[DC] = 0
*alter @Vin[SIN] = [ 1.7 1.5 $&fsig 0 0 ]

**simulation
OP
*show all > op.log
show all

tran $&tstep $&tstop

**Rise and Fall time for delay checking
meas tran trise_p TRIG v(pmos) VAL=0.66 RISE=3 TARG v(pmos) VAL=3.0 RISE=3
meas tran trise_n TRIG v(nmos) VAL=0.66 RISE=3 TARG v(nmos) VAL=3.0 RISE=3

meas tran tfall_p TRIG v(pmos) VAL=3.0 FALL=2 TARG v(pmos) VAL=0.66 FALL=2
meas tran tfall_n TRIG v(nmos) VAL=3.0 FALL=2 TARG v(nmos) VAL=0.66 FALL=2

plot nmos pmos

**Buffer overshoot checker

meas tran nmos_min MIN v(nmos)
meas tran nmos_max MAX v(nmos)

**AC simulation
AC dec 100 1 10e6
*plot db(v(nmos)) db(v(pmos))
*plot 180*cph(v(nmos))/pi 180*cph(v(pmos))/pi

write Deadtime_Driver_tb.raw
.endc
"}
C {ipin.sym} -300 -230 0 0 {name=p1 lab=vin}
C {ipin.sym} 900 50 3 0 {name=p2 lab=vss}
C {opin.sym} 1680 -440 0 0 {name=p3 lab=vout_pmos}
C {opin.sym} 1660 -140 0 0 {name=p4 lab=vout_nmos}
