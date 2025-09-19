v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -380 -180 -310 -180 {lab=vdd}
N -370 80 -300 80 {lab=vss}
N -190 -100 -150 -100 {lab=data_in}
N -540 -40 -450 -40 {lab=data}
N -90 650 -10 650 {lab=clk}
N 530 -80 640 -80 {lab=en_in}
N 530 -60 640 -60 {lab=data_in}
N 530 -40 640 -40 {lab=clk_in}
N 530 -20 640 -20 {lab=VSSd}
N 530 0 640 0 {lab=VDDd}
N 940 -80 1040 -80 {lab=BUS[1:4]}
N 940 -60 1040 -60 {lab=dout}
N 940 -40 1040 -40 {lab=BUSFIVE}
N 940 -20 1040 -20 {lab=BUS[6:16]}
N 940 0 1040 0 {lab=swone}
N 940 20 1040 20 {lab=swtwo}
N 940 40 1040 40 {lab=swthree}
N 240 -300 240 -280 {lab=GND}
N 240 -380 240 -360 {lab=vss}
N 240 -460 240 -440 {lab=#net1}
N 140 -360 140 -320 {lab=GND}
N 140 -460 140 -420 {lab=iref}
N 240 -460 360 -460 {lab=#net1}
N 240 -365 360 -365 {lab=vss}
N 420 -365 460 -365 {lab=VSSd}
N 420 -460 455 -460 {lab=VDDd}
N 455 -460 470 -460 {lab=VDDd}
N 460 -365 470 -365 {lab=VSSd}
N 240 -475 240 -460 {lab=#net1}
N 240 -555 240 -535 {lab=vdd}
N 800 -375 880 -375 {lab=vlo}
N 740 -415 880 -415 {lab=vho}
N 740 -415 740 -375 {lab=vho}
N 740 -315 740 -295 {lab=vss}
N 800 -315 800 -295 {lab=vss}
N 1080 -395 1165 -395 {lab=swone}
N 1150 -330 1150 -290 {lab=vss}
N 1325 -515 1325 -450 {lab=vss}
N 1345 -510 1345 -450 {lab=iref}
N 1385 -430 1445 -430 {lab=swthree}
N 1385 -390 1440 -390 {lab=#net2}
N 1325 -370 1325 -315 {lab=vdd}
N 1210 -410 1265 -410 {lab=outp}
N 1210 -230 1250 -230 {lab=#net3}
N 1210 -270 1270 -270 {lab=swtwo}
N 1170 -210 1170 -160 {lab=iref}
N 1150 -210 1150 -170 {lab=vdd}
N 1050 -250 1090 -250 {lab=outn}
N 970 -590 970 -475 {lab=iref}
N 930 -530 930 -475 {lab=vdd}
N 930 -315 930 -240 {lab=vss}
N -90 650 -90 710 {lab=clk}
N -40 210 -40 270 {lab=en}
N -40 330 -40 370 {lab=VSSd}
N -90 770 -90 820 {lab=VSSd}
N 1250 -170 1250 -135 {lab=vss}
N 1435 -330 1435 -295 {lab=vss}
N -190 -120 -100 -120 {lab=vdd}
N -190 -140 -90 -140 {lab=vdd}
N -190 -80 -110 -80 {lab=vdd}
N -190 -60 -110 -60 {lab=vss}
N -190 -40 -100 -40 {lab=#net4}
N -190 0 -100 0 {lab=#net5}
N -190 -20 -90 -20 {lab=#net6}
N -190 20 -120 20 {lab=#net7}
N -190 40 -120 40 {lab=vss}
N 150 510 220 510 {lab=vdd}
N 160 770 230 770 {lab=vss}
N 340 590 380 590 {lab=clk_in}
N -10 650 80 650 {lab=clk}
N 340 570 430 570 {lab=vdd}
N 340 550 440 550 {lab=vdd}
N 340 610 420 610 {lab=vdd}
N 340 630 420 630 {lab=vss}
N 340 650 430 650 {lab=#net8}
N 340 690 430 690 {lab=#net9}
N 340 670 440 670 {lab=#net10}
N 340 710 410 710 {lab=#net11}
N 340 730 410 730 {lab=vss}
N 190 70 260 70 {lab=vdd}
N 200 330 270 330 {lab=vss}
N 380 150 420 150 {lab=en_in}
N 380 130 470 130 {lab=vdd}
N 380 110 480 110 {lab=vdd}
N 380 170 460 170 {lab=vdd}
N 380 190 460 190 {lab=vss}
N 380 210 470 210 {lab=#net12}
N 380 250 470 250 {lab=#net13}
N 380 230 480 230 {lab=#net14}
N 380 270 450 270 {lab=#net15}
N 380 290 450 290 {lab=vss}
N -40 210 120 210 {lab=en}
C {lab_wire.sym} -320 -180 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -300 80 0 0 {name=p2 sig_type=std_logic lab=vss}
C {lab_wire.sym} -130 -80 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -150 -100 0 0 {name=p4 sig_type=std_logic lab=data_in}
C {lab_wire.sym} -500 -40 0 0 {name=p9 sig_type=std_logic lab=data}
C {libs/core_swmatrix/Swmatrix_small.sym} 790 -20 0 0 {name=x1}
C {noconn.sym} 1040 -60 2 0 {name=l4}
C {lab_wire.sym} 570 -60 0 0 {name=p14 sig_type=std_logic lab=data_in}
C {lab_wire.sym} 570 0 0 0 {name=p15 sig_type=std_logic lab=VDDd}
C {lab_wire.sym} 550 -20 0 0 {name=p16 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} 550 -40 0 0 {name=p17 sig_type=std_logic lab=clk_in}
C {lab_wire.sym} 550 -80 0 0 {name=p18 sig_type=std_logic lab=en_in
}
C {lab_wire.sym} 1000 -80 0 0 {name=p19 sig_type=std_logic lab=BUS[1:4]}
C {lab_wire.sym} 980 -60 0 0 {name=p20 sig_type=std_logic lab=dout}
C {lab_wire.sym} 980 -40 0 0 {name=p21 sig_type=std_logic lab=BUSFIVE}
C {lab_wire.sym} 1000 -20 0 0 {name=p22 sig_type=std_logic lab=BUS[6:16]}
C {lab_wire.sym} 1010 0 0 0 {name=p23 sig_type=std_logic lab=swone}
C {lab_wire.sym} 1010 20 0 0 {name=p24 sig_type=std_logic lab=swtwo}
C {lab_wire.sym} 1000 40 0 0 {name=p25 sig_type=std_logic lab=swthree}
C {vsource.sym} 240 -410 0 0 {name=V1 value=\\\{VDD\\\} savecurrent=false}
C {vsource.sym} 240 -330 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 240 -280 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 240 -370 0 0 {name=p26 sig_type=std_logic lab=vss}
C {isource.sym} 140 -390 2 0 {name=I0 value=10u}
C {gnd.sym} 140 -320 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 240 -555 0 0 {name=p27 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 140 -460 0 0 {name=p28 sig_type=std_logic lab=iref}
C {vsource.sym} 390 -460 1 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} 390 -365 1 0 {name=V6 value=0 savecurrent=false}
C {lab_wire.sym} 470 -365 0 0 {name=p29 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} 470 -460 0 0 {name=p30 sig_type=std_logic lab=VDDd}
C {res.sym} 240 -505 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {libs/core_analog/Comparator/Pmos_Comparator.sym} 1365 -370 2 0 {name=xp_comp1}
C {libs/core_analog/Comparator/Nmos_Comparator.sym} 1190 -210 2 0 {name=xn_comp}
C {libs/core_analog/oscillator/triangle_osc.sym} 900 -455 0 0 {name=x5}
C {vsource.sym} 740 -345 0 0 {name=V3 value=2.5 savecurrent=false}
C {vsource.sym} 800 -345 0 0 {name=V4 value=0.8 savecurrent=false}
C {lab_wire.sym} 740 -295 0 0 {name=p31 sig_type=std_logic lab=vss}
C {lab_wire.sym} 800 -295 0 0 {name=p32 sig_type=std_logic lab=vss}
C {lab_wire.sym} 820 -415 0 0 {name=p33 sig_type=std_logic lab=vho}
C {lab_wire.sym} 860 -375 0 0 {name=p34 sig_type=std_logic lab=vlo}
C {lab_wire.sym} 1135 -395 0 0 {name=p35 sig_type=std_logic lab=swone}
C {lab_wire.sym} 1260 -270 0 0 {name=p36 sig_type=std_logic lab=swtwo}
C {lab_wire.sym} 1440 -430 0 0 {name=p37 sig_type=std_logic lab=swthree}
C {lab_wire.sym} 970 -570 0 0 {name=p38 sig_type=std_logic lab=iref}
C {lab_wire.sym} 1345 -500 2 0 {name=p39 sig_type=std_logic lab=iref}
C {lab_wire.sym} 1170 -180 2 0 {name=p40 sig_type=std_logic lab=iref}
C {lab_wire.sym} 930 -515 0 0 {name=p41 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 930 -270 0 0 {name=p42 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1150 -182.160898711949 0 0 {name=p43 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 1325 -332.160898711949 0 0 {name=p44 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 1150 -310 0 0 {name=p45 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1325 -490 0 0 {name=p46 sig_type=std_logic lab=vss}
C {noconn.sym} 1040 -80 2 0 {name=l7}
C {noconn.sym} 1040 -40 2 0 {name=l8}
C {noconn.sym} 1040 -20 2 0 {name=l9}
C {lab_wire.sym} -90 680 0 1 {name=p49 sig_type=std_logic lab=clk
}
C {vsource.sym} -90 740 0 0 {name=V7 value="PULSE(0 3.3 0.1n 50n 50n 500n 1u 49)" savecurrent=false}
C {vsource.sym} -40 300 0 0 {name=V8 value="PULSE(0 3.3 49u 50n 50n 50u 100u 1)" savecurrent=false}
C {lab_wire.sym} -40 360 0 1 {name=p50 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} -90 800 0 1 {name=p51 sig_type=std_logic lab=VSSd}
C {devices/code_shown.sym} -920 -670 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include /foss/designs/libs/core_analog/Chipathon2025_pads/xschem/gf180mcu_fd_io.spice
.include $::180MCU_MODELS/design.ngspice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {devices/code_shown.sym} -760 100 0 0 {name=Simulation only_toplevel=false value="
.param VDD = 3.3
.global VDDd VSSd
.options savecurrents
.control
save all


TRAN 25n 100u 0

.endc
"}
C {netlist.sym} -1250 430 0 0 {name=s1 value="


* data
aclock [ clock_node ] clock_vector
.model clock_vector d_source(input_file=\\"/foss/designs/libs/data_source/data_swmatrix_small.txt\\")
* convert digital signals to analog
aconvert [ clock_node ] [  data ] dac_in
.model dac_in dac_bridge (out_low=0V out_high=3.3V t_rise=50ns t_fall=50ns)
"}
C {opin.sym} 1210 -410 2 0 {name=p52 lab=outp}
C {opin.sym} 1050 -250 2 0 {name=p53 lab=outn}
C {vsource.sym} 1250 -200 0 0 {name=V9 value=1.5 savecurrent=false}
C {lab_wire.sym} 1250 -145 0 1 {name=p47 sig_type=std_logic lab=vss}
C {vsource.sym} 1435 -360 0 0 {name=V10 value=1.5 savecurrent=false}
C {lab_wire.sym} 1435 -305 0 1 {name=p48 sig_type=std_logic lab=vss}
C {lab_wire.sym} -40 250 0 1 {name=p54 sig_type=std_logic lab=en
}
C {libs/core_analog/Chipathon2025_pads/xschem/symbols/io_bi_t.sym} -450 80 0 0 {name=IO4
model=gf180mcu_fd_io__bi_t
spiceprefix=X
}
C {lab_wire.sym} -130 -140 0 0 {name=p55 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -120 -120 0 0 {name=p56 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -150 40 0 0 {name=p57 sig_type=std_logic lab=vss}
C {lab_wire.sym} 210 510 0 0 {name=p58 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 230 770 0 0 {name=p59 sig_type=std_logic lab=vss}
C {lab_wire.sym} 400 610 0 0 {name=p60 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 380 590 0 0 {name=p61 sig_type=std_logic lab=clk_in}
C {libs/core_analog/Chipathon2025_pads/xschem/symbols/io_bi_t.sym} 80 770 0 0 {name=IO1
model=gf180mcu_fd_io__bi_t
spiceprefix=X
}
C {lab_wire.sym} 400 550 0 0 {name=p63 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 410 570 0 0 {name=p64 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 380 730 0 0 {name=p65 sig_type=std_logic lab=vss}
C {noconn.sym} 430 650 2 0 {name=l11}
C {noconn.sym} 440 670 2 0 {name=l12}
C {noconn.sym} 430 690 2 0 {name=l13}
C {noconn.sym} 410 710 2 0 {name=l14}
C {noconn.sym} -100 -40 2 0 {name=l15}
C {noconn.sym} -90 -20 2 0 {name=l16}
C {noconn.sym} -110 0 2 0 {name=l17}
C {noconn.sym} -130 20 2 0 {name=l18}
C {lab_wire.sym} -140 -60 0 0 {name=p62 sig_type=std_logic lab=vss}
C {lab_wire.sym} 380 630 0 0 {name=p66 sig_type=std_logic lab=vss}
C {lab_wire.sym} 250 70 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 270 330 0 0 {name=p6 sig_type=std_logic lab=vss}
C {lab_wire.sym} 440 170 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 420 150 0 0 {name=p8 sig_type=std_logic lab=en_in}
C {libs/core_analog/Chipathon2025_pads/xschem/symbols/io_bi_t.sym} 120 330 0 0 {name=IO2
model=gf180mcu_fd_io__bi_t
spiceprefix=X
}
C {lab_wire.sym} 440 110 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 450 130 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 420 290 0 0 {name=p13 sig_type=std_logic lab=vss}
C {noconn.sym} 470 210 2 0 {name=l1}
C {noconn.sym} 480 230 2 0 {name=l2}
C {noconn.sym} 460 250 2 0 {name=l3}
C {noconn.sym} 440 270 2 0 {name=l10}
C {lab_wire.sym} 430 190 0 0 {name=p67 sig_type=std_logic lab=vss}
