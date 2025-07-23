v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {libs/core_analog/Comparator/Nmos_Comparator.sym} 80 10 0 0 {name=x1}
C {devices/code_shown.sym} 280 -450 0 0 {name=NGSPICE only_toplevel=true
value="
* Power Supplies
VDD Vdd 0 DC 3.3
VSS Vss 0 DC 0

* Iref Source
IREF Iref 0 DC 10u

* Input sources
* Case 1: in_p = high (1.8V), in_n = low (0V)
Vinp1 INP 0 DC 3.3
Vinn1 INN 0 DC 0

.control

alter Vinp1 DC 3.3
alter Vinn1 DC 0
run
print Vout
*reset

.endc
"}
C {devices/code_shown.sym} 240 30 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {isource.sym} -170 70 0 0 {name=I0 value=1m}
