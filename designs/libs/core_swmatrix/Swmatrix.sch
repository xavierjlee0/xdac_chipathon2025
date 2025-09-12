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
T {data and clock must come from 
a schmitt-trigger input source} -660 40 0 0 0.4 0.4 {}
N -250 110 -200 110 {lab=clock}
N 50 110 70 110 {lab=clock_in}
N 370 130 400 130 {lab=#net1}
N 400 130 400 160 {lab=#net1}
N 400 160 450 160 {lab=#net1}
N 370 110 450 110 {lab=#net2}
N 530 110 610 110 {lab=#net3}
N 530 160 610 160 {lab=#net4}
N 50 30 370 30 {lab=#net5}
N 370 30 370 60 {lab=#net5}
N 370 60 450 60 {lab=#net5}
N 530 60 610 60 {lab=#net6}
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
N -250 30 -200 30 {lab=#net7}
N 20 30 50 30 {lab=#net5}
N 1130 150 1280 150 {lab=PIN[1:18]}
N -260 30 -250 30 {lab=#net7}
N 1130 70 1160 70 {lab=VSSd}
N 630 -10 720 -10 {lab=EN}
N 1130 90 1170 90 {lab=VDDd}
N 1160 70 1230 70 {lab=VSSd}
N 480 410 510 410 {lab=VSSd}
N 480 460 520 460 {lab=VDDd}
N 510 410 530 410 {lab=VSSd}
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
C {lab_wire.sym} 1160 90 0 0 {name=p18 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} 1150 70 0 0 {name=p19 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} 1270 130 0 0 {name=p23 sig_type=std_logic lab=BUS[1:16]}
C {lab_wire.sym} 1230 150 0 0 {name=p26 sig_type=std_logic lab=PIN[1:18]}
C {ipin.sym} -260 30 0 0 {name=p4 lab=data}
C {ipin.sym} -250 110 0 0 {name=p5 lab=clock}
C {ipin.sym} 630 -10 0 0 {name=p12 lab=EN}
C {ipin.sym} 480 460 0 0 {name=p16 lab=VDDd}
C {ipin.sym} 480 410 0 0 {name=p13 lab=VSSd}
C {lab_wire.sym} 520 460 0 0 {name=p21 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} 530 410 0 0 {name=p22 sig_type=std_logic lab=VSSd}
C {opin.sym} 1280 110 0 0 {name=p25 lab=data_out}
C {iopin.sym} 1280 130 0 0 {name=p27 lab=BUS[1:16]}
C {iopin.sym} 1220 180 0 0 {name=p28 lab=PIN[1:18]}
C {lab_wire.sym} 1190 180 0 0 {name=p11 sig_type=std_logic lab=PIN[1:18]}
C {libs/core_swmatrix/Angel_swmatrix_block.sym} 980 110 0 0 {name=x2}
