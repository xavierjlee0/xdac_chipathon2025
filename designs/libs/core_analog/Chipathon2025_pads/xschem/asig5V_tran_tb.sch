v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 -140 80 -100 {lab=GND}
N 180 -140 180 -100 {lab=GND}
N 280 -140 280 -100 {lab=GND}
N 380 -140 380 -100 {lab=GND}
N 80 -240 80 -200 {lab=DVDD}
N 180 -240 180 -200 {lab=VDD}
N 280 -240 280 -200 {lab=DVSS}
N 380 -240 380 -200 {lab=VSS}
N 80 -100 380 -100 {lab=GND}
N 230 -100 230 -80 {lab=GND}
N 800 -120 800 -100 {
lab=VSS}
N 710 -260 760 -260 {lab=Vin}
N 710 -260 710 -150 {lab=Vin}
N 710 -150 760 -150 {lab=Vin}
N 800 -100 800 -80 {lab=VSS}
N 800 -330 800 -290 {lab=VDD}
N 800 -230 800 -180 {lab=asig}
N 800 -200 820 -200 {lab=asig}
N 690 -200 710 -200 {lab=Vin}
N 800 -260 870 -260 {lab=VDD}
N 870 -330 870 -260 {lab=VDD}
N 800 -330 870 -330 {lab=VDD}
N 800 -350 800 -330 {lab=VDD}
N 800 -80 800 -60 {lab=VSS}
N 800 -150 870 -150 {lab=VSS}
N 870 -150 870 -80 {lab=VSS}
N 800 -80 870 -80 {lab=VSS}
N 480 -140 480 -100 {lab=GND}
N 480 -240 480 -200 {lab=Vin}
N 380 -100 480 -100 {lab=GND}
N 820 -200 890 -200 {lab=asig}
N 970 -120 990 -120 {lab=VSS}
N 990 -120 990 -90 {lab=VSS}
N 980 -90 990 -90 {lab=VSS}
N 990 -120 1010 -120 {lab=VSS}
N 870 -280 970 -280 {lab=VDD}
N 970 -280 1010 -280 {lab=VDD}
C {vsource.sym} 80 -170 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} 180 -170 0 0 {name=V2 value=5 savecurrent=false}
C {vsource.sym} 280 -170 0 0 {name=V3 value=0 savecurrent=false}
C {vsource.sym} 380 -170 0 0 {name=V4 value=0 savecurrent=false}
C {lab_wire.sym} 80 -240 0 0 {name=p1 sig_type=std_logic lab=DVDD}
C {lab_wire.sym} 180 -240 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {gnd.sym} 230 -80 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 280 -240 0 0 {name=p3 sig_type=std_logic lab=DVSS}
C {lab_wire.sym} 380 -240 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 30 -540 0 0 {name=DUT only_toplevel=true
format="tcleval( @value )"
value="
.include "/foss/designs/libs/core_analog/Chipathon2025_pads/xschem/gf180mcu_fd_io__asig_5p0_extracted.spice"
"}
C {devices/code_shown.sym} 10 10 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
"}
C {devices/code_shown.sym} 20 190 0 0 {name=s1
only_toplevel=false
value="

.control
tran 1n 1u
plot V(Vin)+12 V(ASIG)+6 V(PAD)
.endc
"}
C {lab_wire.sym} 800 -350 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 800 -60 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {vsource.sym} 480 -170 0 0 {name=V5 value="PULSE(0 5 2n 10n 10n 400n 800n)" savecurrent=false}
C {lab_wire.sym} 480 -240 0 0 {name=p8 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 690 -200 0 0 {name=p9 sig_type=std_logic lab=Vin}
C {symbols/pfet_05v0.sym} 780 -260 0 0 {name=M1
L=0.50u
W=8.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/nfet_05v0.sym} 780 -150 0 0 {name=M2
L=0.60u
W=3.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {libs/core_analog/Chipathon2025_pads/xschem/symbols/io_asig_5p0.sym} 1090 -120 0 1 {name=IO1
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {lab_wire.sym} -350 -410 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 980 -90 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 850 -200 0 0 {name=p11 sig_type=std_logic lab=asig}
