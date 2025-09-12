v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -250 120 -170 120 {lab=I}
N -340 140 -320 140 {lab=Pin}
N -367.5 140 -340 140 {lab=Pin}
N 130 120 170 120 {lab=VDDd}
N 130 160 180 160 {lab=VSSd}
N 130 140 220 140 {lab=Bus}
N -230 140 -170 140 {lab=Pin}
N 220 140 300 140 {lab=Bus}
N -320 140 -230 140 {lab=Pin}
N 130 -10 210 -10 {lab=Q}
N -230 -10 -170 -10 {lab=D_in}
N -350 10 -170 10 {lab=PHI_1}
N -350 30 -170 30 {lab=PHI_2}
N -350 -10 -320 -10 {lab=D_in}
N 250 -10 270 -10 {lab=Q}
N 210 -10 250 -10 {lab=Q}
N -320 -10 -220 -10 {lab=D_in}
N 130 10 190 10 {lab=I}
N -70 -100 -70 -40 {lab=EN}
N -130 -100 -70 -100 {lab=EN}
N 0 -100 0 -40 {lab=VSSd}
N 0 -100 70 -100 {lab=VSSd}
C {iopin.sym} -367.5 140 2 0 {name=p1 lab=Pin}
C {iopin.sym} 297.5 140 0 0 {name=p6 lab=Bus}
C {libs/core_analog/tx_gate/transmission_gate_2.sym} -20 140 0 0 {name=xTx_gate}
C {iopin.sym} 167.5 120 0 0 {name=p9 lab=VDDd}
C {iopin.sym} 177.5 160 0 0 {name=p10 lab=VSSd}
C {libs/core_swmatrix/DFF_2phase_1.sym} -20 10 0 0 {name=xFF}
C {ipin.sym} -350 10 0 0 {name=p12 lab=PHI_1}
C {ipin.sym} -350 30 0 0 {name=p13 lab=PHI_2}
C {ipin.sym} -350 -10 0 0 {name=p14 lab=D_in}
C {opin.sym} 270 -10 0 0 {name=p17 lab=Q}
C {lab_wire.sym} 210 -10 0 0 {name=p2 sig_type=std_logic lab=Q}
C {ipin.sym} -130 -100 0 0 {name=p3 lab=EN}
C {lab_wire.sym} 170 10 0 0 {name=p4 sig_type=std_logic lab=I}
C {lab_wire.sym} -230 120 0 0 {name=p5 sig_type=std_logic lab=I}
C {lab_wire.sym} 40 -100 0 0 {name=p7 sig_type=std_logic lab=VSSd}
