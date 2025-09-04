v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 50 290 1340 1010 {flags=graph
y1=0
ypos1=-0.43809444
ypos2=2.3468641
divy=5
subdivy=1
unity=1
x1=-5.0192318e-07
x2=2.0576261e-05
divx=5
subdivx=1
ylabmag=0.5
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=2.5
rainbow=0
autoload=1
digital=1
sim_type=tran
rawfile=$netlist_dir/Swmatrix.raw
color="4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 6 6 6 6 6 6 4 4 4 4 4 4 4 4 4 10 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 8"
node="clock_in
phi_1
phi_2
data
data_in
x1.xswmatrix.xswmatrix_row[1].q[1]
x1.xswmatrix.xswmatrix_row[1].q[2]
x1.xswmatrix.xswmatrix_row[1].q[3]
x1.xswmatrix.xswmatrix_row[1].q[4]
x1.xswmatrix.xswmatrix_row[1].q[5]
x1.xswmatrix.xswmatrix_row[1].q[6]
x1.xswmatrix.xswmatrix_row[1].q[7]
x1.xswmatrix.xswmatrix_row[1].q[8]
x1.xswmatrix.xswmatrix_row[1].q[9]
x1.xswmatrix.xswmatrix_row[1].q[10]
x1.xswmatrix.xswmatrix_row[1].q[11]
x1.xswmatrix.xswmatrix_row[1].q[12]
x1.xswmatrix.xswmatrix_row[1].q[13]
x1.xswmatrix.xswmatrix_row[1].q[14]
x1.xswmatrix.xswmatrix_row[1].q[15]
x1.xswmatrix.d_out_row[1]
x1.xswmatrix.xswmatrix_row[2].q[1]
x1.xswmatrix.xswmatrix_row[2].q[2]
x1.xswmatrix.xswmatrix_row[2].q[3]
d_out
EN
BUS[1]
vout"
hilight_wave=23
xlabmag=0.5
mode=Line
y2=2.7
legend=0
}
T {CHANGED!
This is a 18 by 16 Switch Matrix (for now)
- the transmission gates are an empty cell
- the BUSES are the columns
- the PINS are the rows} 390 -247.5 0 0 0.3 0.3 {}
N 400 40 550 40 {lab=d_out}
N 400 60 550 60 {lab=BUS[1:16]}
N -620 540 -620 580 {lab=VSSd}
N -620 430 -620 480 {lab=clock}
N 60 80 100 80 {lab=clock}
N 40 60 100 60 {lab=data}
N 70 100 100 100 {lab=VSSd}
N -1030 490 -1030 520 {lab=VSSd}
N -1030 400 -1030 430 {lab=EN}
N -380 680 -380 700 {lab=GND}
N -380 600 -380 620 {lab=vss}
N -380 520 -380 540 {lab=#net1}
N -380 520 -260 520 {lab=#net1}
N -380 615 -260 615 {lab=vss}
N -200 615 -160 615 {lab=VSSd}
N -200 520 -165 520 {lab=VDDd}
N -165 520 -150 520 {lab=VDDd}
N -160 615 -150 615 {lab=VSSd}
N -380 505 -380 520 {lab=#net1}
N -380 425 -380 445 {lab=vdd}
N 1550 245 1630 245 {lab=vlo}
N 1490 205 1630 205 {lab=vho}
N 1490 205 1490 245 {lab=vho}
N 1490 305 1490 325 {lab=vss}
N 1550 305 1550 325 {lab=vss}
N 1680 125 1680 145 {lab=vdd}
N 1720 125 1720 145 {lab=iref}
N 1680 305 1680 325 {lab=vss}
N 1830 225 1890 225 {lab=vout}
N 1870 285 1870 325 {lab=vss}
N 1440 0 1440 40 {lab=GND}
N 1440 -100 1440 -60 {lab=iref}
N 1210 230 1330 230 {lab=PIN[3]}
N 2000 240 2080 240 {lab=vout}
N 1890 225 2000 240 {lab=vout}
N 1840 550 1840 610 {lab=VDD}
N 1715 630 1775 630 {lab=stablein}
N 1715 670 1775 670 {lab=deepstate}
N 1715 600 1775 600 {lab=iref}
N 1840 690 1840 720 {lab=GND}
N 1950 710 1950 730 {lab=GND}
N 1955 650 2005 650 {lab=bigout}
N 1775 630 1780 630 {lab=stablein}
N 1775 670 1780 670 {lab=deepstate}
N 1820 600 1820 610 {lab=iref}
N 1775 600 1820 600 {lab=iref}
N 1900 650 1955 650 {lab=bigout}
N 1560 695 1560 740 {lab=vss}
N 1640 670 1715 670 {lab=deepstate}
N 1560 635 1660 630 {lab=stablein}
N 1660 630 1720 630 {lab=stablein}
N -60 40 100 40 {lab=EN}
N -30 120 100 120 {lab=VDDd}
N 400 80 540 80 {lab=vout}
N 400 100 540 100 {lab=deepstate}
N 400 120 530 120 {lab=#net2}
N 520 80 590 80 {lab=vout}
N 590 80 590 90 {lab=vout}
N 590 90 590 95 {lab=vout}
C {code_shown.sym} -2110 1400 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"
}
C {code_shown.sym} -2110 1870 0 0 {name=Simulation only_toplevel=false value="
.control

    save all
    TRAN 1n 20u
    write savestate.raw

.endc
"
}
C {netlist.sym} -2120 1550 0 0 {name=s1 value="
.param VDD = 3.3
.param Tbit = 20n
.global VDDd VSSd
.ic v(vout)=0 

* data
aclock [ clock_node ] clock_vector
.model clock_vector d_source(input_file=\\"/foss/designs/libs/data_source/data_swmatrix_zeros.txt\\")
* convert digital signals to analog
aconvert [ clock_node ] [  data ] dac_in
.model dac_in dac_bridge (out_low=0V out_high=3.3V t_rise=0.1ns t_fall=0.1ns)
"}
C {noconn.sym} 550 40 2 0 {name=l2}
C {launcher.sym} -1410 1980 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/Swmatrix.raw tran"

}
C {lab_wire.sym} 470 40 0 0 {name=p11 sig_type=std_logic lab=d_out}
C {lab_wire.sym} 60 80 0 0 {name=p1 sig_type=std_logic lab=clock}
C {lab_wire.sym} 40 60 0 0 {name=p2 sig_type=std_logic lab=data}
C {vsource.sym} -620 510 0 0 {name=V3 value="PULSE(0 3.3 0.1n 0.1n 0.1n 5n 10n 49)" savecurrent=false}
C {lab_wire.sym} -620 570 0 0 {name=p12 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} -620 450 0 0 {name=p13 sig_type=std_logic lab=clock}
C {lab_wire.sym} 90 100 0 0 {name=p19 sig_type=std_logic lab=VSSd}
C {vsource.sym} -1030 460 0 0 {name=V4 value="PULSE(0 3.3 490n 0.1n 0.1n 20u 40u 1)" savecurrent=false}
C {lab_wire.sym} -1030 510 0 0 {name=p21 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} -1030 410 0 0 {name=p22 sig_type=std_logic lab=EN}
C {lab_wire.sym} 540 60 0 0 {name=p23 sig_type=std_logic lab=BUS[1:16]}
C {vsource.sym} -380 570 0 0 {name=V5 value=\\\{VDD\\\} savecurrent=false}
C {vsource.sym} -380 650 0 0 {name=V6 value=0 savecurrent=false}
C {gnd.sym} -380 700 0 0 {name=l9 lab=GND}
C {lab_wire.sym} -380 610 0 0 {name=p31 sig_type=std_logic lab=vss}
C {lab_wire.sym} -380 425 0 0 {name=p32 sig_type=std_logic lab=vdd}
C {vsource.sym} -230 520 1 0 {name=V7 value=0 savecurrent=false}
C {vsource.sym} -230 615 1 0 {name=V8 value=0 savecurrent=false}
C {lab_wire.sym} -150 615 0 0 {name=p33 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} -150 520 0 0 {name=p34 sig_type=std_logic lab=VDDd}
C {res.sym} -380 475 0 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {noconn.sym} 1330 230 2 0 {name=l3}
C {libs/core_analog/oscillator/triangle_osc.sym} 1650 165 0 0 {name=x14}
C {vsource.sym} 1490 275 0 0 {name=V1 value=2.5 savecurrent=false}
C {vsource.sym} 1550 275 0 0 {name=V2 value=0.8 savecurrent=false}
C {lab_wire.sym} 1680 135 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 1720 135 0 0 {name=p5 sig_type=std_logic lab=iref}
C {lab_wire.sym} 1490 325 0 0 {name=p24 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1550 325 0 0 {name=p25 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1680 325 0 0 {name=p27 sig_type=std_logic lab=vss}
C {capa.sym} 1870 255 0 0 {name=C1
m=1
value=25p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1870 325 0 0 {name=p29 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1570 205 0 0 {name=p30 sig_type=std_logic lab=vho}
C {lab_wire.sym} 1610 245 0 0 {name=p35 sig_type=std_logic lab=vlo}
C {isource.sym} 1440 -30 2 0 {name=I0 value=10u}
C {gnd.sym} 1440 40 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 1440 -100 0 0 {name=p36 sig_type=std_logic lab=iref}
C {lab_wire.sym} 1280 230 0 0 {name=p37 sig_type=std_logic lab=PIN[3]}
C {gnd.sym} 1840 720 0 0 {name=l7 lab=GND}
C {vdd.sym} 1840 550 0 0 {name=l8 lab=VDD}
C {lab_wire.sym} 1725 600 0 1 {name=p41 sig_type=std_logic lab=iref}
C {noconn.sym} 2005 650 2 0 {name=l4}
C {lab_wire.sym} 1985 650 0 0 {name=p42 sig_type=std_logic lab=bigout}
C {libs/core_analog/Comparator/Nmos_Comparator.sym} 1800 610 0 0 {name=x15}
C {capa.sym} 1950 680 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1950 730 0 0 {name=l6 lab=GND}
C {vsource.sym} 1560 665 0 0 {name=V9 value=1.5 savecurrent=false}
C {lab_wire.sym} 1560 725 0 0 {name=p39 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1660 630 0 0 {name=p44 sig_type=std_logic lab=stablein}
C {Swmatrix.sym} 250 80 0 0 {name=x1}
C {lab_wire.sym} -20 40 0 0 {name=p3 sig_type=std_logic lab=EN}
C {lab_wire.sym} -20 120 0 0 {name=p6 sig_type=std_logic lab=VDDd}
C {noconn.sym} 530 120 2 0 {name=l1}
C {lab_wire.sym} 1860 225 0 0 {name=p9 sig_type=std_logic lab=vout}
C {lab_wire.sym} 590 85 0 0 {name=p7 sig_type=std_logic lab=vout}
C {lab_wire.sym} 1665 670 0 1 {name=p10 sig_type=std_logic lab=deepstate}
C {lab_wire.sym} 490 100 0 0 {name=p8 sig_type=std_logic lab=deepstate}
