v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 680 -840 {}
N 880 -750 970 -750 {lab=out}
N 200 -630 200 -600 {lab=GND}
N 200 -740 200 -690 {lab=vssa}
N 200 -860 200 -800 {lab=vdda}
N 540 -650 600 -650 {lab=vdda}
N 540 -630 600 -630 {lab=vssa}
N 490 -670 600 -670 {lab=#net1}
N 360 -670 430 -670 {lab=vssa}
N 280 -630 280 -600 {lab=GND}
N 280 -860 370 -860 {lab=vin_p}
N 370 -730 600 -730 {lab=vin_p}
N 280 -860 280 -850 {lab=vin_p}
N 910 -690 910 -670 {lab=vssa}
N 370 -860 370 -730 {lab=vin_p}
N 850 -790 900 -790 {lab=out_t}
N 280 -770 280 -690 {lab=#net2}
N 360 -730 370 -730 {lab=vin_p}
N 850 -750 880 -750 {lab=out}
N 280 -790 280 -770 {lab=#net2}
N 580 -770 600 -770 {lab=#net2}
N 870 -770 870 -750 {lab=out}
N 750 -770 870 -770 {lab=out}
N 600 -770 690 -770 {lab=#net2}
N 280 -770 580 -770 {lab=#net2}
C {libs/core_analog/opamp/opamp_n_input.sym} 620 -840 0 0 {name=x1}
C {devices/vsource.sym} 200 -660 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 200 -600 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 200 -770 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 200 -710 0 0 {name=p2 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 200 -830 0 0 {name=p3 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 580 -650 0 0 {name=p4 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 580 -630 0 0 {name=p5 sig_type=std_logic lab=vssa}
C {devices/isource.sym} 460 -670 1 0 {name=I0 value=10u}
C {devices/vsource.sym} 280 -820 0 1 {name=V3 value="SIN(0 0.01 10k) AC 1" savecurrent=false}
C {devices/lab_wire.sym} 500 -730 0 0 {name=p9 sig_type=std_logic lab=vin_p}
C {devices/code_shown.sym} 1100 -870 0 0 {name=Simulation only_toplevel=false value="
.control
save all

OP
show all : gm id > op.log
*show all

DC V4 0 3.3 0.01
DC V3 -0.1 0.1 0.001
AC DEC 100 10 40k
plot db(out)

AC DEC 100 100k 2G
plot db(out) 180/pi*ph(out)

*plot db(out) db(out_t)

alter @V3[PULSE] = [ 0 0.05 10u 15n 15n 5u 10.03u 10 ]
TRAN 5n 40u 0

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
C {devices/lab_wire.sym} 895 -790 0 0 {name=p8 sig_type=std_logic lab=out_t}
C {noconn.sym} 900 -790 2 0 {name=l5}
C {devices/lab_wire.sym} 400 -670 0 0 {name=p1 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 910 -670 0 0 {name=p6 sig_type=std_logic lab=vssa}
