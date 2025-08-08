v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 680 -840 {}
N 80 -570 80 -540 {lab=GND}
N 80 -660 80 -630 {lab=vssa}
N 540 -650 600 -650 {lab=vdda}
N 540 -630 600 -630 {lab=vssa}
N 490 -670 600 -670 {lab=#net1}
N 360 -670 430 -670 {lab=vssa}
N 280 -630 280 -600 {lab=GND}
N 370 -730 600 -730 {lab=t2}
N 280 -860 280 -850 {lab=#net2}
N 910 -690 910 -670 {lab=vssa}
N 370 -860 370 -730 {lab=t2}
N 280 -770 280 -690 {lab=#net3}
N 360 -730 370 -730 {lab=t2}
N 870 -750 970 -750 {lab=out}
N 280 -790 280 -770 {lab=#net3}
N 850 -790 1020 -790 {lab=out_t}
N 1020 -790 1020 -710 {lab=out_t}
N 540 -770 600 -770 {lab=t1}
N 870 -900 870 -750 {lab=out}
N 540 -900 550 -900 {lab=#net4}
N 660 -900 870 -900 {lab=out}
N 350 -860 370 -860 {lab=t2}
N 280 -860 290 -860 {lab=#net2}
N 160 -760 170 -760 {lab=vdda}
N 80 -760 100 -760 {lab=#net5}
N 80 -760 80 -740 {lab=#net5}
N 80 -660 90 -660 {lab=vssa}
N 150 -660 160 -660 {lab=vssa}
N 280 -770 410 -770 {lab=#net3}
N 850 -750 870 -750 {lab=out}
N 80 -680 80 -660 {lab=vssa}
N 90 -660 150 -660 {lab=vssa}
N 550 -900 600 -900 {lab=#net4}
N 470 -770 540 -770 {lab=t1}
C {libs/core_analog/opamp/opamp_n_input.sym} 620 -840 0 0 {name=x1}
C {devices/vsource.sym} 80 -600 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 80 -540 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 80 -710 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 580 -650 0 0 {name=p4 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 580 -630 0 0 {name=p5 sig_type=std_logic lab=vssa}
C {devices/isource.sym} 460 -670 1 0 {name=I0 value=10u}
C {devices/vsource.sym} 280 -820 0 1 {name=V3 value="SIN(0 0.01 10k) AC 1" savecurrent=false}
C {devices/code_shown.sym} 1040 -930 0 0 {name=Simulation only_toplevel=false value="
.control
save all

OP
print @m.x1.xm8.m0[id] @m.x1.xm7.m0[id] @m.x1.xm10.m0[id]

show all : gm id vds vdsat vgs> op.log
*show all

DC V4 0 3.3 0.01
DC V3 -0.1 0.1 0.001
AC DEC 100 10 40k
plot db(out) db(out_t)

AC DEC 200 100k 40Meg
plot db(out) 180/pi *ph(out) + 180

*plot db(out) db(out_t)

alter @V3[PULSE] = [ -0.02 0.02 10u 15n 15n 5u 10.03u 10 ]
TRAN 5n 40u 0
plot out

setplot op
print out_t out

.endc
"}
C {devices/code_shown.sym} 40 -360 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} 280 -660 0 0 {name=V4 value=1.5 savecurrent=false}
C {devices/gnd.sym} 280 -600 0 0 {name=l2 lab=GND}
C {capa.sym} 910 -720 0 0 {name=C1
m=1
value=35p
footprint=1206
device="ceramic capacitor"}
C {title.sym} 160 -60 0 0 {name=l4 author="X.J. Lee"}
C {devices/lab_wire.sym} 960 -750 0 0 {name=p7 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 945 -790 0 0 {name=p8 sig_type=std_logic lab=out_t}
C {devices/lab_wire.sym} 400 -670 0 0 {name=p1 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 910 -670 0 0 {name=p6 sig_type=std_logic lab=vssa}
C {noconn.sym} 1020 -710 0 0 {name=l3}
C {res.sym} 440 -770 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 540 -730 0 0 {name=p9 sig_type=std_logic lab=t2}
C {devices/lab_wire.sym} 540 -770 0 0 {name=p10 sig_type=std_logic lab=t1}
C {res.sym} 630 -900 1 0 {name=R2
value=1000
footprint=1206
device=resistor
m=1}
C {res.sym} 320 -860 3 0 {name=R4
value=50
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 170 -760 2 0 {name=p3 sig_type=std_logic lab=vdda}
C {res.sym} 130 -760 3 0 {name=R3
value=5
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 160 -660 0 1 {name=p2 sig_type=std_logic lab=vssa}
