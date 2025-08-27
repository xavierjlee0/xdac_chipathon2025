v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {This is a 16-stage shift register that controls
16 transmission gates between the pin and each BUS.

The transmission gates are empty cells but
with the correct interface.} 25 -90 0 0 0.2 0.2 {}
N -127.5 140 0 140 {lab=pin}
N 300 140 427.5 140 {lab=BUS[1:16]}
N -80 20 0 20 {lab=PHI_1}
N -80 40 0 40 {lab=PHI_2}
N -80 120 0 120 {lab=Q[1:15],D_out}
N -80 0 0 0 {lab=D_in}
N 300 0 410 0 {lab=Q[1:15],D_out}
N 300 120 360 120 {lab=VDDd}
N 300 160 360 160 {lab=VSSd}
C {libs/core_swmatrix/ShiftReg_row_10_2.sym} 150 20 0 0 {name=xSR}
C {iopin.sym} -127.5 140 2 0 {name=p1 lab=pin}
C {ipin.sym} -80 40 0 0 {name=p2 lab=PHI_2
}
C {ipin.sym} -80 20 0 0 {name=p3 lab=PHI_1
}
C {lab_wire.sym} 310 0 0 1 {name=p4 sig_type=std_logic lab=Q[1:15],D_out}
C {lab_wire.sym} -20 120 0 0 {name=p5 sig_type=std_logic lab=Q[1:15],D_out}
C {iopin.sym} 427.5 140 0 0 {name=p6 lab=BUS[1:16]}
C {ipin.sym} -80 0 0 0 {name=p7 lab=D_in}
C {opin.sym} 425 0 0 0 {name=p8 lab=D_out}
C {title.sym} -62.5 232.5 0 0 {name=l2 author="Peter Kinget"}
C {libs/core_analog/tx_gate/transmission_gate_2.sym} 150 140 0 0 {name=xTX_gate[1:16]}
C {iopin.sym} 360 120 0 0 {name=p11 lab=VDDd}
C {iopin.sym} 360 160 0 0 {name=p12 lab=VSSd}
