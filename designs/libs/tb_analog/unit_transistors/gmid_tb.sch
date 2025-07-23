v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 590 -340 610 -340 {lab=GND}
N 590 -310 610 -310 {lab=GND}
N 610 -340 610 -310 {lab=GND}
N 590 -310 590 -250 {lab=GND}
N 590 -390 590 -370 {lab=vd}
N 590 -470 590 -450 {lab=#net1}
N 750 -470 890 -470 {lab=#net1}
N 890 -470 890 -350 {lab=#net1}
N 890 -290 890 -250 {lab=GND}
N 630 -250 890 -250 {lab=GND}
N 540 -340 550 -340 {lab=#net2}
N 400 -340 480 -340 {lab=#net3}
N 400 -250 470 -250 {lab=GND}
N 400 -340 400 -330 {lab=#net3}
N 400 -270 400 -250 {lab=GND}
N 590 -470 750 -470 {lab=#net1}
N 470 -250 630 -250 {lab=GND}
C {symbols/nfet_03v3.sym} 570 -340 0 0 {name=M1
L=0.6u
W=50u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {vsource.sym} 400 -300 0 0 {name=V1 value="0.95 AC 1" savecurrent=false}
C {vsource.sym} 890 -320 0 0 {name=V2 value=3.3 savecurrent=false}
C {res.sym} 590 -420 0 0 {name=R1
value=2k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 620 -250 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 30 -90 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 50 -510 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

op

ac DEC 100 10k 1G
let vout = v(vd)
plot vdb(vout)
plot v(vout)
setplot op1

write gmid_tb.raw


.endc
"}
C {res.sym} 510 -340 1 0 {name=R2
value=300
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 590 -380 0 0 {name=p1 sig_type=std_logic lab=vd}
