v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 680 -840 {}
N 910 -750 970 -750 {lab=out}
N 200 -630 200 -600 {lab=GND}
N 200 -740 200 -690 {lab=vssa}
N 200 -860 200 -800 {lab=#net1}
N 540 -650 600 -650 {lab=vdda}
N 540 -630 600 -630 {lab=vssa}
N 490 -670 600 -670 {lab=#net2}
N 360 -670 430 -670 {lab=vssa}
N 280 -630 280 -600 {lab=GND}
N 280 -860 280 -850 {lab=#net3}
N 910 -560 910 -540 {lab=vssa}
N 870 -750 910 -750 {lab=out}
N 280 -790 280 -770 {lab=#net4}
N 910 -660 910 -640 {lab=out_r}
N 910 -750 910 -720 {lab=out}
N 910 -640 910 -620 {lab=out_r}
N 910 -640 950 -640 {lab=out_r}
N 850 -750 870 -750 {lab=out}
N 200 -940 200 -920 {lab=vdda}
N 970 -750 1020 -750 {lab=out}
N 350 -860 370 -860 {lab=vin_p}
N 280 -860 290 -860 {lab=#net3}
N 280 -700 280 -690 {lab=#net5}
N 280 -770 280 -760 {lab=#net4}
N 560 -770 600 -770 {lab=vin_n}
N 450 -770 560 -770 {lab=vin_n}
N 500 -730 600 -730 {lab=vin_p}
N 280 -770 310 -770 {lab=#net4}
N 910 -920 910 -760 {lab=out}
N 740 -920 910 -920 {lab=out}
N 560 -920 680 -920 {lab=vin_n}
N 560 -920 560 -770 {lab=vin_n}
N 370 -860 530 -860 {lab=vin_p}
N 530 -860 530 -730 {lab=vin_p}
N 390 -830 390 -770 {lab=#net4}
N 310 -770 390 -830 {lab=#net4}
N 910 -760 910 -750 {lab=out}
C {devices/vsource.sym} 200 -660 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 200 -600 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 200 -770 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 200 -710 0 0 {name=p2 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 200 -940 0 0 {name=p3 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 580 -650 0 0 {name=p4 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 580 -630 0 0 {name=p5 sig_type=std_logic lab=vssa}
C {devices/isource.sym} 460 -670 1 0 {name=I0 value=10u}
C {devices/vsource.sym} 280 -820 0 1 {name=V3 value="SIN(0 0.01 10k) AC 1" savecurrent=false}
C {devices/lab_wire.sym} 500 -730 0 0 {name=p9 sig_type=std_logic lab=vin_p}
C {devices/code_shown.sym} 1120 -940 0 0 {name=Simulation only_toplevel=false value="
.control
.options savecurrents
save all

OP
show all : gm id vds vdsat vgs > op.log
*show all

DC V4 0 3.3 0.01
plot out

*DC V3 -0.1 0.1 0.001
AC DEC 100 10 40k
plot db(out)

AC dec 100 100 50Meg
plot db(out) ((180/pi*ph(out))+180)

alter @V3[PULSE] = [ -0.25 0.25 10u 25n 25n 5u 10.03u 10 ]
alter @V5[PULSE] = [ 0.25 -0.25 10u 25n 25n 5u 10.03u 10 ]

TRAN 5n 17u 9u
plot out vin_p vin_n
*plot (x1.vc2-x1.vc1)*1000 *(out-out_r)*1000 
*plot x1.viss x1.vb2 out_t vin_p
*plot (x1.vb2-x1.vc2) (vin_p-x1.viss) x1.vg1 out_t

alter @V3[PULSE] = [ -0.025 0.025 10u 25n 25n 5u 10.03u 10 ]
alter @V5[PULSE] = [ 0.025 -0.025 10u 25n 25n 5u 10.03u 10 ]

TRAN 5n 17u 9u 
plot out vin_p vin_n
plot @R5[i]
setplot op
print out out_t

.endc
"}
C {devices/code_shown.sym} 40 -360 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"}
C {devices/vsource.sym} 280 -660 0 0 {name=V4 value=0.4 savecurrent=false}
C {devices/gnd.sym} 280 -600 0 0 {name=l2 lab=GND}
C {capa.sym} 910 -590 0 0 {name=C1
m=1
value=30p
footprint=1206
device="ceramic capacitor"}
C {title.sym} 160 -60 0 0 {name=l4 author="X.J. Lee"}
C {devices/lab_wire.sym} 960 -750 0 0 {name=p7 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 400 -670 0 0 {name=p1 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 910 -540 0 0 {name=p6 sig_type=std_logic lab=vssa}
C {res.sym} 910 -690 0 0 {name=R1
value=1m
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 950 -640 0 0 {name=p10 sig_type=std_logic lab=out_r}
C {res.sym} 200 -890 0 0 {name=R2
value=5
footprint=1206
device=resistor
m=1}
C {res.sym} 320 -860 1 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 280 -730 2 0 {name=R4
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 710 -920 1 0 {name=R5
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 420 -770 1 0 {name=R6
value=10k
footprint=1206
device=resistor
m=1}
C {libs/core_analog/opamp/opamp_p_input.sym} 620 -840 0 0 {name=x1}
C {devices/lab_wire.sym} 510 -770 0 0 {name=p11 sig_type=std_logic lab=vin_n}
C {devices/vsource.sym} 340 -770 1 1 {name=V5 value=0 savecurrent=false}
