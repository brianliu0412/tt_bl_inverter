v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 990 -470 1790 -70 {flags=graph
y1=-0.0032
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.2951735e-09
x2=3.2259256e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
out_parax"
color="7 4"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 30 -480 830 -80 {flags=graph
y1=-4.9e-06
y2=0.0025
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.2951735e-09
x2=3.2259256e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(vmeas)

i(vmeas2)"
color="10 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 990 20 1790 420 {flags=graph
y1=-0.00023
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.2951735e-09
x2=3.2259256e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="pin_out
pin_out_parax"
color="7 4"
dataset=-1
unitx=1
logx=0
logy=0
}
N -200 -150 -200 -130 {
lab=vdd}
N -120 -150 -120 -130 {
lab=vss}
N 440 70 470 70 {
lab=out}
N 440 50 470 50 {
lab=#net1}
N 470 70 600 70 {
lab=out}
N 440 90 470 90 {
lab=#net2}
N 600 70 640 70 {
lab=out}
N 700 70 750 70 {
lab=pin_out}
N 720 70 720 90 {
lab=pin_out}
N -200 -30 -200 -10 {
lab=v_in}
N 100 50 140 50 {
lab=in}
N 470 -30 470 -10 {
lab=vdd}
N 470 90 470 110 {
lab=#net2}
N 440 360 470 360 {
lab=out_parax}
N 440 340 470 340 {
lab=#net3}
N 470 360 600 360 {
lab=out_parax}
N 440 380 470 380 {
lab=#net4}
N 600 360 640 360 {
lab=out_parax}
N 700 360 750 360 {
lab=pin_out_parax}
N 720 360 720 380 {
lab=pin_out_parax}
N 100 340 140 340 {
lab=in}
N 470 260 470 280 {
lab=vdd}
N 470 380 470 400 {
lab=#net4}
C {devices/code.sym} -450 -20 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -510 220 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {bl_inverter.sym} 290 70 0 0 {name=x1}
C {devices/vsource.sym} -200 -100 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -120 -100 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_wire.sym} -200 -150 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -120 -150 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/gnd.sym} -200 -70 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -120 -70 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 470 -30 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 590 70 0 0 {name=p6 sig_type=std_logic lab=out}
C {devices/res.sym} 670 70 3 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 720 120 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 470 170 2 0 {name=p4 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 720 150 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 730 70 2 0 {name=p7 sig_type=std_logic lab=pin_out}
C {devices/simulator_commands_shown.sym} -230 220 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
vin in 0 pulse 0 1.8 5n 1n 1n 50n 100n
.options savecurrents
.control
save all
tran 100p 200n
write testbench.raw
.endc
"}
C {devices/vsource.sym} -200 20 0 0 {name=V4 value="0 ac 1 0 sin(0.85 1000m 1M 0 0 0)"}
C {devices/gnd.sym} -200 50 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -200 -20 0 0 {name=p8 sig_type=std_logic lab=v_in}
C {devices/ipin.sym} 100 50 0 0 {name=p9 lab=in}
C {devices/ammeter.sym} 470 20 0 0 {name=Vmeas savecurrent=true}
C {devices/ammeter.sym} 470 140 0 0 {name=Vmeas1 savecurrent=true}
C {bl_inverter.sym} 290 360 0 0 {name=x2
schematic=bl_inverter_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/bl_inverter.sim.spice])"
tclcommand="textwindow [file normalize ../mag/bl_inverter.sim.spice]"}
C {devices/lab_wire.sym} 470 260 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 590 360 0 0 {name=p10 sig_type=std_logic lab=out_parax}
C {devices/res.sym} 670 360 3 0 {name=R2
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 720 410 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 470 460 2 0 {name=p11 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 720 440 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 730 360 2 0 {name=p12 sig_type=std_logic lab=pin_out_parax}
C {devices/ipin.sym} 100 340 0 0 {name=p13 lab=in}
C {devices/ammeter.sym} 470 310 0 0 {name=Vmeas2 savecurrent=true}
C {devices/ammeter.sym} 470 430 0 0 {name=Vmeas3 savecurrent=true}
