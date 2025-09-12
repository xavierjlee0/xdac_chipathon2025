v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {This is a 16-stage shift register that controls
16 transmission gates between the pin and each BUS.

The transmission gates are empty cells but
with the correct interface.} 155 -190 0 0 0.2 0.2 {}
N -80 20 0 20 {lab=PHI_1}
N -80 40 0 40 {lab=PHI_2}
N -80 120 0 120 {lab=I[1:16]}
N -80 0 0 0 {lab=D_in}
N 300 0 410 0 {lab=Q[1:15],D_out}
N -170 140 -150 140 {lab=pin}
N -197.5 140 -170 140 {lab=pin}
N 300 120 340 120 {lab=VDDd}
N 300 160 350 160 {lab=VSSd}
N 300 140 390 140 {lab=BUS[1:16]}
N -60 140 0 140 {lab=pin}
N 30 -40 130 -40 {lab=EN}
N 130 -40 130 -30 {lab=EN}
N 390 140 470 140 {lab=BUS[1:16]}
N -150 140 -60 140 {lab=pin}
N 300 20 380 20 {lab=I[1:16]}
N 180 -50 180 -30 {lab=VSSd}
N 180 -50 250 -50 {lab=VSSd}
N 210 -30 250 -30 {lab=#net1}
C {libs/core_swmatrix/ShiftReg_row_10_2.sym} 150 20 0 0 {name=xSR}
C {iopin.sym} -197.5 140 2 0 {name=p1 lab=pin}
C {ipin.sym} -80 40 0 0 {name=p2 lab=PHI_2
}
C {ipin.sym} -80 20 0 0 {name=p3 lab=PHI_1
}
C {lab_wire.sym} 310 0 0 1 {name=p4 sig_type=std_logic lab=Q[1:15],D_out}
C {lab_wire.sym} -20 120 0 0 {name=p5 sig_type=std_logic lab=I[1:16]}
C {iopin.sym} 467.5 140 0 0 {name=p6 lab=BUS[1:16]}
C {ipin.sym} -80 0 0 0 {name=p7 lab=D_in}
C {opin.sym} 425 0 0 0 {name=p8 lab=D_out}
C {title.sym} -62.5 232.5 0 0 {name=l2 author="Peter Kinget"}
C {libs/core_analog/tx_gate/transmission_gate_2.sym} 150 140 0 0 {name=xTx_gate[1:16]}
C {iopin.sym} 337.5 120 0 0 {name=p9 lab=VDDd}
C {iopin.sym} 347.5 160 0 0 {name=p10 lab=VSSd}
C {ipin.sym} 30 -40 0 0 {name=p11 lab=EN}
C {lab_wire.sym} 330 20 0 1 {name=p12 sig_type=std_logic lab=I[1:16]}
C {lab_wire.sym} 220 -50 0 0 {name=p13 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} 240 -30 0 0 {name=p14 sig_type=std_logic lab=VDDd}
