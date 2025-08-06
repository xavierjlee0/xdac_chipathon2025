v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -30 -210 -30 -180 {lab=GND}
N 40 -210 40 -180 {lab=GND}
N -30 -330 -30 -270 {lab=VDD}
N 40 -330 40 -270 {lab=in}
N 230 -420 230 -400 {lab=VDD}
N 230 -400 260 -400 {lab=VDD}
N 240 -300 260 -300 {lab=GND}
N 240 -300 240 -260 {lab=GND}
N 40 -350 260 -350 {lab=in}
N 40 -350 40 -330 {lab=in}
N 410 -350 450 -350 {lab=out}
N 170 -660 170 -640 {lab=VDD}
N 170 -640 200 -640 {lab=VDD}
N 180 -580 200 -580 {lab=GND}
N 180 -580 180 -540 {lab=GND}
N 500 -640 540 -640 {lab=#net1}
N 50 -620 200 -620 {lab=inb}
N 50 -600 200 -600 {lab=ina}
N -270 -430 -270 -400 {lab=GND}
N -270 -550 -270 -490 {lab=ina}
N -270 -570 -270 -550 {lab=ina}
N -200 -430 -200 -400 {lab=GND}
N -200 -550 -200 -490 {lab=inb}
N -200 -570 -200 -550 {lab=inb}
C {title.sym} 70 30 0 0 {name=l1 author="Christopher O Amankwaa"}
C {libs/core_analog/Gates/Inverter.sym} 300 -390 0 0 {name=xinvter1}
C {vsource.sym} -30 -240 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 40 -240 0 0 {name=Vin value=3.3 savecurrent=false}
C {gnd.sym} -30 -180 0 0 {name=l2 lab=GND}
C {gnd.sym} 40 -180 0 0 {name=l3 lab=GND}
C {vdd.sym} -30 -330 0 0 {name=l4 lab=VDD}
C {vdd.sym} 230 -420 0 0 {name=l5 lab=VDD}
C {gnd.sym} 240 -260 0 0 {name=l6 lab=GND}
C {noconn.sym} 450 -350 2 0 {name=l7}
C {lab_wire.sym} 120 -350 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_wire.sym} 440 -350 0 0 {name=p2 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 760 -810 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
let fsig = 1000MEG
let fnsig = 400k
let tper=1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr


let tstop =10 * tper
let tstep = 0.001*tper


**voltages
alter @Vin[PULSE] = [ 0 3.1 0 $&tfr $&tfr $&ton $&tper 3 ]
alter @Vin[DC] = 0
*alter @Vin[SIN] = [ 1.7 1.5 $&fnsig 0 0 ]

**simulation
OP
*show all > op.log
show all


tran $&tstep $&tstop

write PMOS_comparator_tb.raw
.endc
"}
C {devices/code_shown.sym} 530 -330 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {libs/core_analog/Gates/NAND_Gate.sym} 350 -610 0 0 {name=x1}
C {vdd.sym} 170 -660 0 0 {name=l8 lab=VDD}
C {gnd.sym} 180 -540 0 0 {name=l9 lab=GND}
C {noconn.sym} 540 -640 2 0 {name=l10}
C {lab_wire.sym} 100 -620 0 0 {name=p3 sig_type=std_logic lab=inb}
C {lab_wire.sym} 100 -600 0 0 {name=p4 sig_type=std_logic lab=ina}
C {vsource.sym} -270 -460 0 0 {name=Vina value=3.3 savecurrent=false}
C {gnd.sym} -270 -400 0 0 {name=l11 lab=GND}
C {vsource.sym} -200 -460 0 0 {name=Vinb value=3.3 savecurrent=false}
C {gnd.sym} -200 -400 0 0 {name=l12 lab=GND}
C {lab_wire.sym} -200 -530 0 0 {name=p5 sig_type=std_logic lab=inb}
C {lab_wire.sym} -270 -530 0 0 {name=p6 sig_type=std_logic lab=ina}
