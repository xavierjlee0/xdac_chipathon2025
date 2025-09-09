v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 -400 200 -270 {lab=vo}
N 200 -400 380 -400 {lab=vo}
N 380 -400 380 -320 {lab=vo}
N 380 -260 380 -200 {lab=GND}
N 380 -200 380 -190 {lab=GND}
N 200 -190 380 -190 {lab=GND}
N 200 -210 200 -190 {lab=GND}
N 360 -200 360 -190 {lab=GND}
N 360 -290 360 -200 {lab=GND}
C {title.sym} 160 -40 0 0 {name=l1 author="X.J. Lee"}
C {devices/code_shown.sym} 30 -640 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all
op
show all
dc temp -40 80 1

let r = v(vo)/0.0001

plot r
.endc
"}
C {devices/code_shown.sym} 300 -600 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {gnd.sym} 380 -190 0 0 {name=l2 lab=GND}
C {isource.sym} 200 -240 2 0 {name=I0 value=100u}
C {lab_wire.sym} 230 -400 0 0 {name=p1 sig_type=std_logic lab=vo}
C {symbols/ppolyf_u.sym} 380 -290 0 0 {name=R
W=2.5e-6
L=25e-6
model=ppolyf_u
spiceprefix=X
m=1}
