v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 -210 340 -210 {lab=b}
N 180 -130 340 -130 {lab=b}
N 180 -210 180 -130 {lab=b}
N 90 -170 180 -170 {lab=b}
N 200 -180 200 -160 {lab=#net1}
N 360 -180 360 -160 {lab=#net2}
N 200 -240 360 -240 {lab=r_p}
N 280 -300 280 -240 {lab=r_p}
N 200 -100 360 -100 {lab=r_n}
N 280 -100 280 -50 {lab=r_n}
C {symbols/ppolyf_u.sym} 200 -210 0 0 {name=R1
W=2.5e-6
L=25e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 360 -210 0 0 {name=R2
W=2.5e-6
L=25e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 200 -130 0 0 {name=R3
W=2.5e-6
L=25e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 360 -130 0 0 {name=R4
W=2.5e-6
L=25e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {iopin.sym} 280 -300 1 1 {name=p1 lab=r_p}
C {iopin.sym} 280 -50 3 1 {name=p2 lab=r_n}
C {iopin.sym} 90 -170 0 1 {name=p3 lab=b}
