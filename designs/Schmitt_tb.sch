v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -280 -150 -280 -70 {lab=VDD}
N -280 -10 -280 40 {lab=GND}
N -280 20 20 20 {lab=GND}
N -40 -70 20 -70 {lab=VDD}
N -40 -120 -40 -70 {lab=VDD}
N -280 -120 -40 -120 {lab=VDD}
N -180 -10 -180 20 {lab=GND}
N -180 -70 -100 -70 {lab=in}
N -100 -70 -100 -30 {lab=in}
N -100 -30 10 -30 {lab=in}
N 10 -30 10 -20 {lab=in}
N 10 -20 20 -20 {lab=in}
N 190 -40 240 -40 {lab=out}
C {Schmitt.sym} 130 -30 0 0 {name=x1}
C {title.sym} 160 100 0 0 {name=Schmitt TB author= "Angel Romero"}
C {vsource.sym} -280 -40 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} -180 -40 0 0 {name=VIN value=3 savecurrent=false}
C {gnd.sym} -280 40 0 0 {name=l1 lab=GND}
C {vdd.sym} -280 -150 0 0 {name=l2 lab=VDD}
C {noconn.sym} 240 -40 2 0 {name=l3}
C {lab_wire.sym} 220 -40 0 0 {name=p1 sig_type=std_logic lab=out}
C {lab_wire.sym} -50 -30 0 0 {name=p2 sig_type=std_logic lab=in}
C {code_shown.sym} -780 90 0 0 {name=NGSPICE only_toplevel=false 
value="

.control 
save all

**Define input signal 
let fsig = 1000k
let tper = 1/fsig
let tfr = 4ns
let ton = 500ns

**Define transient parameters
let tstop = 3*tper
let tstep = 2ns

**Set Sources
alter @VIN[DC] = 0.0
alter @VIN[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton $&tper 0 ]

**Simulations 
op 
dc vin 0 3.3 .1
tran $&tstep $&tstop

write Schmitt_tb.raw
.endc
"}
C {devices/code_shown.sym} -1240 -90 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
