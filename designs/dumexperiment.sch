v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 160 -100 230 -100 {lab=pls}
N 200 60 240 60 {lab=GND}
N 110 60 160 60 {lab=GND}
N 160 60 200 60 {lab=GND}
N 230 -100 330 -100 {lab=pls}
N 340 -100 340 -70 {lab=pls}
N 320 -100 340 -100 {lab=pls}
N 240 60 340 60 {lab=GND}
N 340 -10 340 60 {lab=GND}
N 340 60 580 60 {lab=GND}
N 340 -100 560 -100 {lab=pls}
N 600 -100 710 -100 {lab=done}
N 580 60 700 60 {lab=GND}
N 710 -100 720 -100 {lab=done}
N 720 -100 720 -60 {lab=done}
N 700 60 720 60 {lab=GND}
N 720 0 720 60 {lab=GND}
N -20 60 110 60 {lab=GND}
N 720 60 890 60 {lab=GND}
N 780 10 780 60 {lab=GND}
N -140 60 -30 60 {lab=GND}
N -30 60 -20 60 {lab=GND}
N 890 60 1080 60 {lab=GND}
N 1080 10 1080 50 {lab=GND}
N 1080 50 1080 60 {lab=GND}
N 850 -100 900 -100 {lab=pls}
N 940 -100 1000 -100 {lab=done}
N -170 60 -140 60 {lab=GND}
N -170 0 -170 60 {lab=GND}
N -170 -110 -170 -60 {lab=#net1}
N -170 -100 -60 -100 {lab=#net1}
C {libs/core_analog/Chipathon2025_pads/xschem/symbols/io_dvdd.sym} 80 60 0 0 {name=IO1
model=gf180mcu_fd_io__dvdd
spiceprefix=X
}
C {lab_wire.sym} 210 -100 0 0 {name=p1 sig_type=std_logic lab=pls}
C {devices/code_shown.sym} -280 -470 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include /foss/designs/libs/core_analog/Chipathon2025_pads/xschem/gf180mcu_fd_io.spice
.include /foss/designs/libs/core_analog/Chipathon2025_pads/xschem/gf180mcu_fd_io__asig_5p0_extracted.spice
.include $::180MCU_MODELS/design.ngspice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
"

"
"}
C {devices/code_shown.sym} 720 -220 0 0 {name=Simulation only_toplevel=false value="
.control
save all

TRAN 5n 100n 0

.endc
"}
C {gnd.sym} 230 60 0 0 {name=l1 lab=GND}
C {vsource.sym} -170 -30 0 0 {name=V1 value=3.3 savecurrent=false}
C {libs/core_analog/Chipathon2025_pads/xschem/symbols/io_dvss.sym} 480 60 0 0 {name=IO2
model=gf180mcu_fd_io__dvss
spiceprefix=X
}
C {vsource.sym} 720 -30 0 0 {name=V2 value=3.3 savecurrent=false}
C {lab_wire.sym} 650 -100 0 0 {name=p2 sig_type=std_logic lab=done}
C {libs/core_analog/Chipathon2025_pads/xschem/symbols/io_dvss.sym} 820 60 0 0 {name=IO3
model=gf180mcu_fd_io__dvss
spiceprefix=X
}
C {lab_wire.sym} 990 -100 0 0 {name=p3 sig_type=std_logic lab=done}
C {lab_wire.sym} 890 -100 0 0 {name=p4 sig_type=std_logic lab=pls}
C {libs/core_analog/Chipathon2025_pads/xschem/symbols/io_dvdd.sym} -140 60 0 0 {name=IO4
model=gf180mcu_fd_io__dvdd
spiceprefix=X
}
C {lab_wire.sym} -80 -100 0 0 {name=p5 sig_type=std_logic lab=expls}
