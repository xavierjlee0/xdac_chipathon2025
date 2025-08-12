v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 910 -320 910 -260 {lab=#net1}
N 550 -260 910 -260 {lab=#net1}
N 550 -260 550 -170 {lab=#net1}
N 950 -220 950 -190 {lab=#net2}
N 550 -270 950 -270 {lab=#net2}
N 550 -370 550 -270 {lab=#net2}
N 950 -220 1010 -220 {lab=#net2}
N 910 -320 970 -320 {lab=#net1}
N 950 -270 950 -220 {lab=#net2}
N 970 -440 970 -320 {lab=#net1}
N 1010 -220 1010 -140 {lab=#net2}
N 1010 -140 1150 -140 {lab=#net2}
N 1350 -140 1410 -140 {lab=vout_nmos}
N 610 -350 660 -350 {lab=#net3}
N 550 -390 550 -370 {lab=#net2}
N 550 -390 660 -390 {lab=#net2}
N 910 -350 910 -320 {lab=#net1}
N 550 -170 550 -140 {lab=#net1}
N 550 -140 680 -140 {lab=#net1}
N 990 -440 990 -420 {lab=#net1}
N 990 -440 1100 -440 {lab=#net1}
N 970 -440 990 -440 {lab=#net1}
N 1250 -440 1290 -440 {lab=vout_pmos}
N 680 -140 780 -140 {lab=#net1}
N 680 -100 780 -100 {lab=vin}
N 480 -350 520 -350 {lab=#net3}
N 780 -370 910 -370 {lab=#net1}
N 910 -370 910 -350 {lab=#net1}
N 900 -120 950 -120 {lab=#net2}
N 950 -190 950 -120 {lab=#net2}
N 1180 -440 1250 -440 {lab=vout_pmos}
N 1230 -140 1270 -140 {lab=#net4}
N 530 -350 610 -350 {lab=#net3}
N 520 -350 530 -350 {lab=#net3}
N 340 -350 400 -350 {lab=vin}
N 370 -100 680 -100 {lab=vin}
N 370 -350 370 -100 {lab=vin}
N 990 -360 990 0 {lab=vss}
N 1050 -80 1050 -0 {lab=vss}
N 1050 -0 1050 20 {lab=vss}
N 990 0 1050 0 {lab=vss}
C {title.sym} 100 250 0 0 {name=l1 author="Christopher O Amankwaa"}
C {devices/code_shown.sym} 1980 90 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
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
C {ipin.sym} 340 -350 0 0 {name=p1 lab=vin}
C {ipin.sym} 1050 20 3 0 {name=p2 lab=vss}
C {opin.sym} 1290 -440 0 0 {name=p3 lab=vout_pmos}
C {opin.sym} 1410 -140 0 0 {name=p4 lab=vout_nmos}
C {symbols/cap_mim_2f0fF.sym} 990 -390 0 0 {name=C3
W=23e-6
L=23e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 1050 -110 0 0 {name=C4
W=23e-6
L=23e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {libs/core_analog/op_Gates/inv_1.sym} 440 -350 0 0 {name=x3 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/core_analog/op_Gates/nand2_1.sym} 720 -370 0 0 {name=x4 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/core_analog/op_Gates/nand2_1.sym} 840 -120 0 0 {name=x5 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/core_analog/op_Gates/inv_1.sym} 1140 -440 0 0 {name=x6 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/core_analog/op_Gates/inv_1.sym} 1190 -140 0 0 {name=x1 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/core_analog/op_Gates/inv_1.sym} 1310 -140 0 0 {name=x7 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
