v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {D-Flip Flop
- requires non-onverlapping clock
- made with min. size latches} -40 -230 0 0 0.4 0.4 {}
N 210 -40 250 -40 {lab=out_m}
N -20 -40 30 -40 {lab=#net1}
N -20 -20 30 -20 {lab=PHI_1}
N 220 -20 250 -20 {lab=PHI_2}
N 220 -20 220 20 {lab=PHI_2}
N -20 20 220 20 {lab=PHI_2}
N -20 -20 -20 0 {lab=PHI_1}
N 430 -40 470 -40 {lab=Q}
N 500 80 570 80 {lab=s}
N 260 30 380 60 {lab=EN}
N 290 90 380 100 {lab=Q}
N 280 90 290 90 {lab=Q}
N 650 80 690 80 {lab=I}
N 380 -160 410 -160 {lab=VSSd}
N 570 -160 600 -160 {lab=VDDd}
N -330 -40 -290 -40 {lab=D}
N -210 -40 -140 -40 {lab=pls}
N -60 -40 -20 -40 {lab=#net1}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/latq_1.sym} 120 -30 0 0 {name=xmain VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/latq_1.sym} 340 -30 0 0 {name=xsecondary VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 240 -40 0 0 {name=p1 sig_type=std_logic lab=out_m}
C {ipin.sym} -330 -40 0 0 {name=p2 lab=D}
C {ipin.sym} -20 0 0 0 {name=p3 lab=PHI_1}
C {ipin.sym} -20 20 0 0 {name=p4 lab=PHI_2}
C {opin.sym} 470 -40 0 0 {name=p5 lab=Q}
C {title.sym} 52.5 155 0 0 {name=l2 author="Peter Kinget"}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/nand2_1.sym} 440 80 0 0 {name=x2 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} 610 80 0 0 {name=x3 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {ipin.sym} 260 30 0 0 {name=p6 lab=EN}
C {lab_wire.sym} 450 -40 0 0 {name=p7 sig_type=std_logic lab=Q}
C {lab_wire.sym} 280 90 0 0 {name=p8 sig_type=std_logic lab=Q}
C {opin.sym} 690 80 0 0 {name=p9 lab=I}
C {ipin.sym} 380 -160 0 0 {name=p10 lab=VSSd}
C {noconn.sym} 410 -160 2 0 {name=l1}
C {ipin.sym} 570 -160 0 0 {name=p11 lab=VDDd}
C {noconn.sym} 600 -160 2 0 {name=l3}
C {lab_wire.sym} 530 80 0 0 {name=p12 sig_type=std_logic lab=s}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} -250 -40 0 0 {name=x1 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} -100 -40 0 0 {name=x4 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} -160 -40 0 0 {name=p13 sig_type=std_logic lab=pls}
