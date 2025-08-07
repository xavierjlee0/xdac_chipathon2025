v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 230 -420 230 -400 {lab=vdd}
N 230 -400 260 -400 {lab=vdd}
N 240 -300 260 -300 {lab=vss}
N 240 -300 240 -260 {lab=vss}
N 120 -350 260 -350 {lab=vin}
N 910 -320 910 -260 {lab=#net1}
N 550 -260 910 -260 {lab=#net1}
N 550 -260 550 -170 {lab=#net1}
N 950 -220 950 -190 {lab=#net2}
N 550 -270 950 -270 {lab=#net2}
N 550 -370 550 -270 {lab=#net2}
N 720 -460 720 -440 {lab=vdd}
N 840 -40 840 0 {lab=vss}
N 950 -220 1010 -220 {lab=#net2}
N 910 -320 970 -320 {lab=#net1}
N 990 -360 990 -350 {lab=vss}
N 1040 -80 1040 -60 {lab=vss}
N 950 -270 950 -220 {lab=#net2}
N 40 -350 120 -350 {lab=vin}
N 1120 -210 1120 -190 {lab=vdd}
N 1120 -190 1150 -190 {lab=vdd}
N 1130 -90 1150 -90 {lab=vss}
N 1130 -90 1130 -50 {lab=vss}
N 970 -440 970 -320 {lab=#net1}
N 1010 -220 1010 -140 {lab=#net2}
N 1010 -140 1150 -140 {lab=#net2}
N 1410 -440 1500 -440 {lab=vout_pmos}
N 1600 -140 1660 -140 {lab=vout_nmos}
N 410 -350 610 -350 {lab=#net3}
N 120 -350 120 -150 {lab=vin}
N 150 -100 680 -100 {lab=vin}
N 610 -350 660 -350 {lab=#net3}
N 550 -390 550 -370 {lab=#net2}
N 550 -390 660 -390 {lab=#net2}
N 830 -365 910 -365 {lab=#net1}
N 910 -365 910 -350 {lab=#net1}
N 910 -350 910 -320 {lab=#net1}
N 840 -210 840 -190 {lab=vdd}
N 590 -290 720 -290 {lab=vss}
N 120 -100 150 -100 {lab=vin}
N 120 -150 120 -100 {lab=vin}
N 550 -170 550 -140 {lab=#net1}
N 550 -140 680 -140 {lab=#net1}
N 950 -190 950 -115 {lab=#net2}
N 1070 -510 1070 -490 {lab=vdd}
N 1070 -490 1100 -490 {lab=vdd}
N 1080 -390 1100 -390 {lab=vss}
N 1080 -390 1080 -350 {lab=vss}
N 1290 -440 1410 -440 {lab=vout_pmos}
N 1310 -210 1310 -190 {lab=vdd}
N 1310 -190 1340 -190 {lab=vdd}
N 1320 -90 1340 -90 {lab=vss}
N 1320 -90 1320 -50 {lab=vss}
N 1300 -140 1340 -140 {lab=yx2}
N 990 -440 990 -420 {lab=#net1}
N 1490 -140 1520 -140 {lab=vout_nmos}
N 1580 -140 1600 -140 {lab=vout_nmos}
N 1520 -140 1580 -140 {lab=vout_nmos}
N 1660 -140 1680 -140 {lab=vout_nmos}
N 1500 -440 1680 -440 {lab=vout_pmos}
N 740 0 900 0 {lab=vss}
N 900 0 900 50 {lab=vss}
N 900 0 1130 0 {lab=vss}
N 1130 -50 1130 0 {lab=vss}
N 1040 -60 1040 -0 {lab=vss}
N 1320 -50 1320 0 {lab=vss}
N 1130 0 1320 0 {lab=vss}
N 990 -350 990 0 {lab=vss}
N 1080 -350 1080 -0 {lab=vss}
N 1080 -0 1090 -0 {lab=vss}
N 990 -440 1100 -440 {lab=#net1}
N 970 -440 990 -440 {lab=#net1}
N 1250 -440 1290 -440 {lab=vout_pmos}
N 240 -260 240 -0 {lab=vss}
N 240 -0 740 -0 {lab=vss}
N 590 -290 590 -0 {lab=vss}
N 1070 -580 1070 -510 {lab=vdd}
N 860 -580 1070 -580 {lab=vdd}
N 860 -590 860 -580 {lab=vdd}
N 720 -580 860 -580 {lab=vdd}
N 720 -580 720 -460 {lab=vdd}
N 230 -580 720 -580 {lab=vdd}
N 230 -580 230 -420 {lab=vdd}
N 840 -580 840 -210 {lab=vdd}
N 680 -140 780 -140 {lab=#net1}
N 680 -100 780 -100 {lab=vin}
N 1120 -260 1120 -210 {lab=vdd}
N 1310 -260 1310 -210 {lab=vdd}
N 1120 -260 1310 -260 {lab=vdd}
N 1310 -580 1310 -260 {lab=vdd}
N 1070 -580 1310 -580 {lab=vdd}
C {title.sym} 100 250 0 0 {name=l1 author="Christopher O Amankwaa"}
C {libs/core_analog/Gates/NAND_Gate.sym} 680 -330 0 0 {name=x1}
C {libs/core_analog/Gates/NAND_Gate.sym} 800 -80 0 0 {name=x2}
C {capa.sym} 990 -390 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1040 -110 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1330 -140 0 0 {name=p6 sig_type=std_logic lab=yx2}
C {libs/core_analog/Gates/Inverter.sym} 300 -390 0 0 {name=xinverter1}
C {libs/core_analog/Gates/Inverter.sym} 1140 -480 0 0 {name=xinverter2}
C {libs/core_analog/Gates/Inverter.sym} 1190 -180 0 0 {name=xinverter3}
C {libs/core_analog/Gates/Inverter.sym} 1380 -180 0 0 {name=xinverter4}
C {opin.sym} 1680 -140 0 0 {name=p7 lab=vout_nmos}
C {opin.sym} 1680 -440 0 0 {name=p4 lab=vout_pmos}
C {ipin.sym} 900 50 3 0 {name=p8 lab=vss}
C {ipin.sym} 860 -590 1 0 {name=p9 lab=vdd}
C {ipin.sym} 40 -350 0 0 {name=p1 lab=vin}
