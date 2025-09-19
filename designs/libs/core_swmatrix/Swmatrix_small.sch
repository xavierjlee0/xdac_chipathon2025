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
N 50 110 70 110 {lab=clock}
N 370 130 400 130 {lab=#net1}
N 400 130 400 160 {lab=#net1}
N 400 160 450 160 {lab=#net1}
N 370 110 450 110 {lab=#net2}
N 530 110 610 110 {lab=#net3}
N 530 160 610 160 {lab=#net4}
N 50 30 370 30 {lab=data}
N 370 30 370 60 {lab=data}
N 370 60 450 60 {lab=data}
N 530 60 610 60 {lab=#net5}
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
N 20 110 50 110 {lab=clock}
N -250 30 -200 30 {lab=data}
N 20 30 50 30 {lab=data}
N 1130 150 1280 150 {lab=PIN[1:3]}
N -260 30 -250 30 {lab=data}
N 1130 70 1160 70 {lab=VSSd}
N 630 -10 720 -10 {lab=EN}
N 1130 90 1170 90 {lab=VDDd}
N 1160 70 1230 70 {lab=VSSd}
N 480 410 510 410 {lab=VSSd}
N 480 460 520 460 {lab=VDDd}
N 510 410 530 410 {lab=VSSd}
N 1150 180 1220 180 {lab=PIN[1]}
N 720 -10 830 70 {lab=EN}
N 1160 220 1230 220 {lab=PIN[2]}
N 970 260 1040 260 {lab=PIN[3]}
N 1520 110 1570 110 {lab=BUS[5]}
N 1500 80 1560 80 {lab=BUS[1:4]}
N 1490 140 1560 140 {lab=BUS[6:16]}
N -200 110 20 110 {lab=clock}
N -200 30 30 30 {lab=data}
C {libs/core_swmatrix/NO_ClkGen.sym} 220 120 0 0 {name=x1}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_4.sym} 490 160 0 0 {name=x4 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_8.sym} 650 160 0 0 {name=x5 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_4.sym} 490 110 0 0 {name=x9 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_8.sym} 650 110 0 0 {name=x10 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_4.sym} 490 60 0 0 {name=x11 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_8.sym} 650 60 0 0 {name=x12 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 780 60 0 0 {name=p8 sig_type=std_logic lab=data_in
}
C {lab_wire.sym} 780 110 0 0 {name=p9 sig_type=std_logic lab=PHI_1
}
C {lab_wire.sym} 780 160 0 0 {name=p10 sig_type=std_logic lab=PHI_2
}
C {lab_wire.sym} 1160 90 0 0 {name=p18 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} 1150 70 0 0 {name=p19 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} 1270 130 0 0 {name=p23 sig_type=std_logic lab=BUS[1:16]}
C {lab_wire.sym} 1230 150 0 0 {name=p26 sig_type=std_logic lab=PIN[1:3]}
C {ipin.sym} -260 30 0 0 {name=p4 lab=data}
C {ipin.sym} -250 110 0 0 {name=p5 lab=clock}
C {ipin.sym} 630 -10 0 0 {name=p12 lab=EN}
C {ipin.sym} 480 460 0 0 {name=p16 lab=VDDd}
C {ipin.sym} 480 410 0 0 {name=p13 lab=VSSd}
C {lab_wire.sym} 520 460 0 0 {name=p21 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} 530 410 0 0 {name=p22 sig_type=std_logic lab=VSSd}
C {opin.sym} 1280 110 0 0 {name=p25 lab=data_out}
C {iopin.sym} 1560 80 0 0 {name=p27 lab=BUS[1:4]}
C {iopin.sym} 1220 180 0 0 {name=p28 lab=PIN[1]}
C {lab_wire.sym} 1190 180 0 0 {name=p11 sig_type=std_logic lab=PIN[1]}
C {iopin.sym} 1230 220 0 0 {name=p1 lab=PIN[2]}
C {iopin.sym} 1040 260 0 0 {name=p2 lab=PIN[3]}
C {lab_wire.sym} 1200 220 0 0 {name=p39 sig_type=std_logic lab=PIN[2]}
C {lab_wire.sym} 1010 260 0 0 {name=p40 sig_type=std_logic lab=PIN[3]}
C {iopin.sym} 1560 140 0 0 {name=p56 lab=BUS[6:16]}
C {iopin.sym} 1570 110 0 0 {name=p57 lab=BUS[5]}
C {lab_wire.sym} 1540 110 0 0 {name=p58 sig_type=std_logic lab=BUS[5]}
C {lab_wire.sym} 1530 80 0 0 {name=p59 sig_type=std_logic lab=BUS[1:4]}
C {lab_wire.sym} 1530 140 0 0 {name=p60 sig_type=std_logic lab=BUS[6:16]}
C {libs/core_swmatrix/Angel_swmatrix_block_small.sym} 980 110 0 0 {name=x2}
