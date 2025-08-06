v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -30 -130 -30 -100 {lab=GND}
N 40 -130 40 -100 {lab=GND}
N -30 -250 -30 -190 {lab=#net1}
N 230 -420 230 -400 {lab=VDD}
N 230 -400 260 -400 {lab=VDD}
N 240 -300 260 -300 {lab=GND}
N 240 -300 240 -260 {lab=GND}
N 120 -350 260 -350 {lab=in}
N 40 -270 40 -190 {lab=#net2}
N 910 -320 910 -260 {lab=yx1}
N 550 -260 910 -260 {lab=yx1}
N 550 -260 550 -170 {lab=yx1}
N 950 -220 950 -190 {lab=#net3}
N 550 -270 950 -270 {lab=#net3}
N 550 -370 550 -270 {lab=#net3}
N 720 -460 720 -440 {lab=VDD}
N 740 -40 740 0 {lab=GND}
N 950 -220 1010 -220 {lab=#net3}
N 910 -320 970 -320 {lab=yx1}
N 1030 -360 1030 -350 {lab=GND}
N 1040 -80 1040 -60 {lab=GND}
N 950 -270 950 -220 {lab=#net3}
N 40 -350 120 -350 {lab=in}
N 1120 -210 1120 -190 {lab=VDD}
N 1120 -190 1150 -190 {lab=VDD}
N 1130 -90 1150 -90 {lab=GND}
N 1130 -90 1130 -50 {lab=GND}
N 970 -440 970 -320 {lab=yx1}
N 970 -440 1140 -440 {lab=yx1}
N 1010 -220 1010 -140 {lab=#net3}
N 1010 -140 1150 -140 {lab=#net3}
N 1410 -440 1500 -440 {lab=pmos}
N 1600 -140 1660 -140 {lab=nmos}
N 410 -350 610 -350 {lab=inv}
N 120 -350 120 -150 {lab=in}
N 150 -100 680 -100 {lab=in}
N 610 -350 660 -350 {lab=inv}
N 550 -390 550 -370 {lab=#net3}
N 550 -390 660 -390 {lab=#net3}
N 830 -365 910 -365 {lab=yx1}
N 910 -365 910 -350 {lab=yx1}
N 910 -350 910 -320 {lab=yx1}
N 740 -210 740 -190 {lab=VDD}
N 590 -290 720 -290 {lab=GND}
N 120 -100 150 -100 {lab=in}
N 120 -150 120 -100 {lab=in}
N 550 -170 550 -140 {lab=yx1}
N 550 -140 680 -140 {lab=yx1}
N 850 -115 950 -115 {lab=#net3}
N 950 -190 950 -115 {lab=#net3}
N 1110 -510 1110 -490 {lab=VDD}
N 1110 -490 1140 -490 {lab=VDD}
N 1120 -390 1140 -390 {lab=GND}
N 1120 -390 1120 -350 {lab=GND}
N 1290 -440 1410 -440 {lab=pmos}
N 1310 -210 1310 -190 {lab=VDD}
N 1310 -190 1340 -190 {lab=VDD}
N 1320 -90 1340 -90 {lab=GND}
N 1320 -90 1320 -50 {lab=GND}
N 1300 -140 1340 -140 {lab=yx2}
N -30 -330 -30 -310 {lab=VDD}
N 40 -350 40 -330 {lab=in}
N 1030 -440 1030 -420 {lab=yx1}
N 1490 -140 1520 -140 {lab=nmos}
N 1580 -140 1600 -140 {lab=nmos}
N 1520 -140 1580 -140 {lab=nmos}
N 1720 -240 1720 -200 {lab=GND}
N 1720 -350 1720 -310 {lab=out}
N 1720 -310 1720 -300 {lab=out}
N 1720 -440 1720 -410 {lab=VDD}
N 1720 -270 1760 -270 {lab=GND}
N 1760 -270 1760 -220 {lab=GND}
N 1720 -220 1760 -220 {lab=GND}
N 1720 -380 1760 -380 {lab=VDD}
N 1760 -430 1760 -380 {lab=VDD}
N 1720 -430 1760 -430 {lab=VDD}
N 1660 -140 1680 -140 {lab=nmos}
N 1680 -270 1680 -140 {lab=nmos}
N 1680 -440 1680 -380 {lab=pmos}
N 1500 -440 1680 -440 {lab=pmos}
N 1720 -330 1780 -330 {lab=out}
N 1780 -330 1850 -330 {lab=out}
N 1820 -270 1820 -260 {lab=GND}
C {title.sym} 100 250 0 0 {name=l1 author="Christopher O Amankwaa"}
C {vsource.sym} -30 -160 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 40 -160 0 0 {name=Vin value="1.5 AC 1.2" savecurrent=false}
C {gnd.sym} -30 -100 0 0 {name=l2 lab=GND}
C {gnd.sym} 40 -100 0 0 {name=l3 lab=GND}
C {vdd.sym} -30 -330 0 0 {name=l4 lab=VDD}
C {vdd.sym} 230 -420 0 0 {name=l5 lab=VDD}
C {gnd.sym} 240 -260 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 120 -350 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_wire.sym} 510 -350 0 0 {name=p2 sig_type=std_logic lab=inv}
C {devices/code_shown.sym} 1920 -1010 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
let fsig = 500k
let tper=1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr


let tstop = 4 * tper
let tstep = 0.001*tper


**voltages
alter @Vin[PULSE] = [ 0 2.3 0 $&tfr $&tfr $&ton $&tper 3 ]
alter @Vin[DC] = 0
*alter @Vin[SIN] = [ 1.7 1.5 $&fsig 0 0 ]

**simulation
OP
*show all > op.log
show all


tran $&tstep $&tstop
meas tran trise_p TRIG v(pmos) VAL=3.0 FALL=2 TARG v(pmos) VAL=0.66 FALL=2
meas tran trise_n TRIG v(nmos) VAL=3.0 FALL=2 TARG v(nmos) VAL=0.66 FALL=2

meas tran tdifference PARAM='trise_p - trise_n'

meas tran trise_yx1 TRIG v(yx1) VAL=3.0 FALL=2 TARG v(yx1) VAL=0.66 FALL=2
meas tran trise_yx2 TRIG v(yx2) VAL=3.0 FALL=2 TARG v(yx2) VAL=0.66 FALL=2

meas tran nmos_min MIN v(nmos)
meas tran nmos_max MAX v(nmos)

AC dec 100 1 10e6
*plot db(v(nmos)) db(v(pmos))
 

*plot 180*cph(v(nmos))/pi 180*cph(v(pmos))/pi

setplot tran1
plot nmos pmos
write Deadtime_Driver_tb.raw
.endc
"}
C {libs/core_analog/Gates/NAND_Gate.sym} 680 -330 0 0 {name=x1}
C {libs/core_analog/Gates/NAND_Gate.sym} 700 -80 0 0 {name=x2}
C {vdd.sym} 720 -460 0 0 {name=l7 lab=VDD}
C {gnd.sym} 590 -290 0 0 {name=l14 lab=GND}
C {gnd.sym} 740 0 0 0 {name=l15 lab=GND}
C {capa.sym} 1030 -390 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1030 -350 0 0 {name=l8 lab=GND}
C {capa.sym} 1040 -110 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1040 -60 0 0 {name=l9 lab=GND}
C {libs/core_analog/Gates/Inverter.sym} 1190 -180 0 0 {name=xinvter4}
C {vdd.sym} 1120 -210 0 0 {name=l19 lab=VDD}
C {gnd.sym} 1130 -50 0 0 {name=l20 lab=GND}
C {lab_wire.sym} 1650 -140 0 0 {name=p5 sig_type=std_logic lab=nmos}
C {lab_wire.sym} 1480 -440 0 0 {name=p3 sig_type=std_logic lab=pmos}
C {vdd.sym} 740 -210 0 0 {name=l11 lab=VDD}
C {libs/core_analog/Gates/Inverter.sym} 300 -390 0 0 {name=xinvter1}
C {libs/core_analog/Gates/Inverter.sym} 1180 -480 0 0 {name=xinvter3}
C {vdd.sym} 1110 -510 0 0 {name=l17 lab=VDD}
C {gnd.sym} 1120 -350 0 0 {name=l18 lab=GND}
C {libs/core_analog/Gates/Inverter.sym} 1380 -180 0 0 {name=xinvter5}
C {vdd.sym} 1310 -210 0 0 {name=l21 lab=VDD}
C {gnd.sym} 1320 -50 0 0 {name=l22 lab=GND}
C {res.sym} -30 -280 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 40 -300 0 0 {name=R2
value=100
footprint=1206
device=resistor
m=1}
C {devices/code_shown.sym} 1910 -170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_wire.sym} 1000 -440 0 0 {name=p4 sig_type=std_logic lab=yx1}
C {lab_wire.sym} 1330 -140 0 0 {name=p6 sig_type=std_logic lab=yx2}
C {symbols/pfet_03v3.sym} 1700 -380 0 0 {name=M1
L=20u
W=100u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1700 -270 0 0 {name=M2
L=20u
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
C {gnd.sym} 1720 -200 0 0 {name=l13 lab=GND}
C {vdd.sym} 1720 -440 0 0 {name=l23 lab=VDD}
C {lab_wire.sym} 1770 -330 0 0 {name=p7 sig_type=std_logic lab=out}
C {noconn.sym} 1850 -330 2 0 {name=l10}
C {res.sym} 1820 -300 2 0 {name=R5
value=8
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1820 -260 0 0 {name=l16 lab=GND}
