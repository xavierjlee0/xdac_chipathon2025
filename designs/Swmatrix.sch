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
N 1130 90 1280 90 {lab=data_out}
N 1130 110 1280 110 {lab=BUS[1:16]}
N 20 110 50 110 {lab=clock_in}
N -120 110 -60 110 {lab=clockb}
N -120 30 -60 30 {lab=datab}
N -250 30 -200 30 {lab=#net8}
N 20 30 50 30 {lab=#net6}
N 1130 130 1280 130 {lab=PIN[1:3]}
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
N 950 40 950 60 {lab=VDDd}
N 920 40 950 40 {lab=VDDd}
N 1010 40 1010 60 {lab=VSSd}
N 1010 40 1040 40 {lab=VSSd}
N 630 -10 720 -10 {lab=EN}
N 720 -10 970 -10 {lab=EN}
N 980 -10 980 60 {lab=EN}
N 970 -10 980 -10 {lab=EN}
N -630 20 -580 20 {lab=data}
N -630 210 -580 210 {lab=clock}
N 880 40 920 40 {lab=VDDd}
N 1040 40 1110 40 {lab=VSSd}
N 480 410 510 410 {lab=VSSd}
N 480 460 520 460 {lab=VDDd}
N 510 410 530 410 {lab=VSSd}
N -460 280 -410 280 {lab=VSSd}
C {libs/core_swmatrix/NO_ClkGen.sym} 220 120 0 0 {name=x1}
C {libs/core_swmatrix/swmatrix_30_by_10.sym} 980 110 0 0 {name=xswmatrix}
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
C {Schmitt.sym} -320 20 0 0 {name=x2}
C {Schmitt.sym} -300 230 0 0 {name=x13}
C {lab_wire.sym} -430 190 0 0 {name=p14 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} -460 -20 0 0 {name=p15 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} -450 70 0 0 {name=p17 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} 950 40 0 0 {name=p18 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} 1030 40 0 0 {name=p19 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} 1270 110 0 0 {name=p23 sig_type=std_logic lab=BUS[1:16]}
C {lab_wire.sym} 1230 130 0 0 {name=p26 sig_type=std_logic lab=PIN[1:3]}
C {ipin.sym} -630 20 0 0 {name=p4 lab=data}
C {ipin.sym} -630 210 0 0 {name=p5 lab=clock}
C {ipin.sym} 630 -10 0 0 {name=p12 lab=EN}
C {ipin.sym} 480 460 0 0 {name=p16 lab=VDDd}
C {ipin.sym} 480 410 0 0 {name=p13 lab=VSSd}
C {lab_wire.sym} 520 460 0 0 {name=p21 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} 530 410 0 0 {name=p22 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} -430 280 0 0 {name=p24 sig_type=std_logic lab=VSSd}
C {opin.sym} 1280 90 0 0 {name=p25 lab=data_out}
C {iopin.sym} 1280 110 0 0 {name=p27 lab=BUS[1:16]}
C {iopin.sym} 1280 130 0 0 {name=p28 lab=PIN[1:3]}
