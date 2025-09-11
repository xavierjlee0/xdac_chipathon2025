# Tcl script to run LVS on triangle_osc

if {[catch {set PDK_ROOT $::env(PDK_ROOT)}]} {set PDK_ROOT /usr/share/pdk}
if {[catch {set PDK $::env(PDK)}]} {set PDK gf180mcuD}

set pdklib ${PDK_ROOT}/${PDK}
set techlibs ${pdklib}/libs.tech

set reflibs /foss/designs/libs/layout_analog/libs_new.ref

set setupfile gf180mcuD_setup.tcl
set sclib ${reflibs}/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice

set circuit1 [readnet spice triangle_osc_layout.spice]
set circuit2 [readnet spice $sclib]

readnet spice triangle_osc.spice $circuit2

lvs "$circuit1 triangle_osc" "$circuit2 triangle_osc" \
        $setupfile triangle_osc_comp.out
