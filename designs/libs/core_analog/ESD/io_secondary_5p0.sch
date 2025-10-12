v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 150 10 150 70 {lab=to_gate}
N 150 30 250 30 {lab=to_gate}
N 310 30 370 30 {lab=ASIG_5V}
N 100 -90 280 -90 {lab=VDD}
N 280 -90 280 10 {lab=VDD}
N 150 -90 150 -50 {lab=VDD}
N 100 170 150 170 {lab=VSS}
N 150 130 150 170 {lab=VSS}
N 30 40 150 40 {lab=to_gate}
C {symbols/diode_nd2ps_06v0.sym} 150 100 2 0 {name=D1
model=diode_nd2ps_06v0
r_w=10u
r_l=10u
m=1}
C {symbols/diode_pd2nw_03v3.sym} 150 -20 2 0 {name=D2
model=diode_pd2nw_03v3
r_w=10u
r_l=10u
m=1}
C {symbols/ppolyf_u.sym} 280 30 1 0 {name=R1
W=16e-6
L=4e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {iopin.sym} 100 170 2 0 {name=p1 lab=VSS}
C {iopin.sym} 100 -90 2 0 {name=p2 lab=VDD}
C {iopin.sym} 30 40 2 0 {name=p3 lab=to_gate}
C {iopin.sym} 370 30 0 0 {name=p4 lab=ASIG_5V}
