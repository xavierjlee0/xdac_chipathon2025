v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Each row had a 16-stage shift register
The output of the last stage is fed as input
of the first stage of the next row.} 20 52.5 0 0 0.3 0.3 {}
T {This is a 18 by 16 Switch Matrix 
- the transmission gates are an empty cell
- the BUSES are the columns
- the PINS are the rows} 380 -187.5 0 0 0.3 0.3 {}
N -130 -10 0 -10 {lab=D_in,D_out_row[1:2]}
N -170 30 0 30 {lab=PHI_2}
N -170 10 0 10 {lab=PHI_1}
N 300 10 360 10 {lab=BUS[1:16]}
N 300 30 360 30 {lab=PIN[1:2]}
N 300 -10 360 -10 {lab=D_out_row[1:2],D_out}
N 40 -60 120 -60 {lab=VDDd}
N 120 -60 120 -40 {lab=VDDd}
N 180 -60 180 -40 {lab=VSSd}
N 180 -60 230 -60 {lab=VSSd}
N 120 -80 150 -80 {lab=EN}
N 150 -80 150 -50 {lab=EN}
N 150 -50 150 -40 {lab=EN}
C {iopin.sym} -260 130 0 0 {name=p1 lab=PIN[1:3]

}
C {iopin.sym} -260 100 0 0 {name=p2 lab=BUS[1:16]

}
C {libs/core_swmatrix/swmatrix_row_10.sym} 150 10 0 0 {name=xswmatrix_row[1:3]}
C {ipin.sym} -170 10 0 0 {name=p3 lab=PHI_1
}
C {ipin.sym} -170 30 0 0 {name=p4 lab=PHI_2
}
C {ipin.sym} -170 -10 0 0 {name=p5 lab=D_in
}
C {lab_wire.sym} 360 -10 0 1 {name=p6 sig_type=std_logic lab=D_out_row[1:2],D_out}
C {lab_wire.sym} -10 -10 0 0 {name=p7 sig_type=std_logic lab=D_in,D_out_row[1:2]}
C {lab_wire.sym} 360 10 0 1 {name=p8 sig_type=std_logic lab=BUS[1:16]}
C {lab_wire.sym} 360 30 0 1 {name=p9 sig_type=std_logic lab=PIN[1:3]
}
C {opin.sym} 540 -10 0 0 {name=p10 lab=D_out
}
C {title.sym} -142.5 255 0 0 {name=l2 author="Peter Kinget"}
C {iopin.sym} 40 -60 2 0 {name=p11 lab=VDDd

}
C {iopin.sym} 230 -60 0 0 {name=p12 lab=VSSd

}
C {ipin.sym} 120 -80 0 0 {name=p13 lab=EN}
