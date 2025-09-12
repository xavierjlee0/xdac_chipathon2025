v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 910 -320 910 -260 {lab=n3}
N 550 -260 910 -260 {lab=n3}
N 550 -260 550 -170 {lab=n3}
N 950 -220 950 -190 {lab=n2}
N 550 -270 950 -270 {lab=n2}
N 550 -370 550 -270 {lab=n2}
N 950 -220 1010 -220 {lab=n2}
N 910 -320 970 -320 {lab=n3}
N 950 -270 950 -220 {lab=n2}
N 970 -440 970 -320 {lab=n3}
N 1010 -220 1010 -140 {lab=n2}
N 1010 -140 1150 -140 {lab=n2}
N 1350 -140 1410 -140 {lab=vout_nmos}
N 610 -350 660 -350 {lab=vin}
N 550 -390 550 -370 {lab=n2}
N 550 -390 660 -390 {lab=n2}
N 910 -350 910 -320 {lab=n3}
N 550 -170 550 -140 {lab=n3}
N 550 -140 680 -140 {lab=n3}
N 990 -440 990 -420 {lab=n3}
N 990 -440 1100 -440 {lab=n3}
N 970 -440 990 -440 {lab=n3}
N 1370 -440 1410 -440 {lab=vout_pmos}
N 680 -140 780 -140 {lab=n3}
N 680 -100 780 -100 {lab=n1}
N 480 -350 520 -350 {lab=vin}
N 780 -370 910 -370 {lab=n3}
N 910 -370 910 -350 {lab=n3}
N 900 -120 950 -120 {lab=n2}
N 950 -190 950 -120 {lab=n2}
N 1300 -440 1370 -440 {lab=vout_pmos}
N 1180 -440 1220 -440 {lab=n4}
N 530 -350 610 -350 {lab=vin}
N 520 -350 530 -350 {lab=vin}
N 340 -350 400 -350 {lab=vin}
N 370 -100 680 -100 {lab=n1}
N 990 -360 990 0 {lab=vss}
N 1050 -80 1050 -0 {lab=vss}
N 1050 -0 1050 20 {lab=vss}
N 990 0 1050 0 {lab=vss}
N 360 -350 360 -310 {lab=vin}
N 360 -230 360 -100 {lab=n1}
N 360 -100 370 -100 {lab=n1}
N 400 -350 480 -350 {lab=vin}
N 1230 -140 1350 -140 {lab=vout_nmos}
N 1050 -0 1080 -0 {lab=vss}
N 1080 -0 1080 20 {lab=vss}
N 1200 0 1200 10 {lab=VDDd}
N 1200 0 1230 -0 {lab=VDDd}
N 1230 -0 1230 10 {lab=VDDd}
C {title.sym} 100 250 0 0 {name=l1 author="Christopher O Amankwaa"}
C {devices/code_shown.sym} 1980 90 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
"}
C {ipin.sym} 340 -350 0 0 {name=p1 lab=vin}
C {ipin.sym} 1050 20 3 0 {name=p2 lab=vss}
C {opin.sym} 1410 -440 0 0 {name=p3 lab=vout_pmos}
C {opin.sym} 1410 -140 0 0 {name=p4 lab=vout_nmos}
C {symbols/cap_mim_2f0fF.sym} 990 -390 0 0 {name=C3
W=27e-6
L=27e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 1050 -110 0 0 {name=C4
W=27e-6
L=27e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {libs/core_analog/op_Gates/nand2_1.sym} 720 -370 0 0 {name=x4 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/core_analog/op_Gates/nand2_1.sym} 840 -120 0 0 {name=x5 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/core_analog/op_Gates/inv_8.sym} 1260 -440 0 0 {name=x2 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/core_analog/op_Gates/inv_8.sym} 1190 -140 0 0 {name=x1 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/core_analog/op_Gates/inv_1.sym} 1140 -440 0 0 {name=x3 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/core_analog/op_Gates/inv_1.sym} 360 -270 1 0 {name=x6 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 750 -270 0 0 {name=p6 sig_type=std_logic lab=n2}
C {lab_wire.sym} 580 -100 0 0 {name=p5 sig_type=std_logic lab=n1}
C {lab_wire.sym} 660 -140 0 0 {name=p7 sig_type=std_logic lab=n3}
C {lab_wire.sym} 1210 -440 0 0 {name=p8 sig_type=std_logic lab=n4}
C {ipin.sym} 1080 20 3 0 {name=p9 lab=VSSd}
C {ipin.sym} 1230 10 3 0 {name=p10 lab=VDDd}
C {ipin.sym} 1200 10 3 0 {name=p11 lab=vdd}
