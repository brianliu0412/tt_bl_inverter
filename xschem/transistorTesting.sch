v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 410 -290 1210 110 {flags=graph
y1=0.72
y2=0.74
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/transistorTesting.raw
color=4
node=bl_v0
sim_type=tran}
B 2 1270 -320 2070 80 {flags=graph
y1=0.99
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/transistorTesting.raw
color=4
node=bl_vG
sim_type=tran}
B 2 400 150 1200 550 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/transistorTesting.raw


sim_type=tran

color="5 6"
node="i(gm_svt)
i(gm_lvt)"}
N 180 0 190 -0 {
lab=GND}
N 300 0 310 -0 {
lab=GND}
N -110 -30 -80 -30 {
lab=#net1}
N -110 -170 -110 -150 {
lab=bl_VDD}
N 30 -170 30 -150 {
lab=bl_VDD}
N 180 -170 180 -150 {
lab=bl_VDD}
N 300 -170 300 -150 {
lab=bl_VDD}
N -110 -90 -80 -90 {
lab=bl_VDD}
N 30 -90 60 -90 {
lab=bl_VDD}
N 180 -90 200 -90 {
lab=bl_VDD}
N 300 -90 320 -90 {
lab=bl_VDD}
N -140 -150 -110 -150 {
lab=bl_VDD}
N -140 -150 -140 -90 {
lab=bl_VDD}
N -140 -90 -110 -90 {
lab=bl_VDD}
N -0 -150 30 -150 {
lab=bl_VDD}
N -0 -150 0 -90 {
lab=bl_VDD}
N 0 -90 30 -90 {
lab=bl_VDD}
N 150 -150 180 -150 {
lab=bl_VDD}
N 150 -150 150 -90 {
lab=bl_VDD}
N 150 -90 180 -90 {
lab=bl_VDD}
N 270 -150 300 -150 {
lab=bl_VDD}
N 270 -150 270 -90 {
lab=bl_VDD}
N 270 -90 300 -90 {
lab=bl_VDD}
C {sky130_fd_pr/nfet3_01v8.sym} -130 0 0 0 {name=M1
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 10 0 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 160 0 0 0 {name=M3
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 280 0 0 0 {name=M4
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/gnd.sym} 190 0 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 310 0 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -110 30 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 30 30 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 180 30 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 300 30 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -350 20 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -350 50 0 0 {name=l7 lab=GND}
C {devices/simulator_commands_shown.sym} -280 -730 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
*.lib /home/ttuser/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.options method=gear reltol=0.001 abstol=1e-12
*.options savecurrents

.control
save all
set appendwrite

op
write transistorTesting.raw

tran 10p 20n
write transistorTesting.raw

dc V2 0 1.8 0.01
let gm_svt = deriv(i(vmeas))
let gm_lvt = deriv(i(vmeas1))
*dc V1 0 1.8 0.01
*let c1 = deriv(bl_v0)
*let c2 = deriv(bl_v1)
write transistorTesting.raw
.endc
"
}
C {devices/lab_wire.sym} -350 -10 0 0 {name=p1 sig_type=std_logic lab=bl_VDD}
C {devices/lab_wire.sym} -110 -170 0 0 {name=p2 sig_type=std_logic lab=bl_VDD}
C {devices/lab_wire.sym} 30 -170 0 0 {name=p3 sig_type=std_logic lab=bl_VDD}
C {devices/lab_wire.sym} 180 -170 0 0 {name=p4 sig_type=std_logic lab=bl_VDD}
C {devices/lab_wire.sym} 300 -170 0 0 {name=p5 sig_type=std_logic lab=bl_VDD}
C {devices/vsource.sym} -350 130 0 0 {name=V2 value="SINE(1 1m 1G)" savecurrent=false}
C {devices/gnd.sym} -350 160 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} -350 100 0 0 {name=p6 sig_type=std_logic lab=bl_vG}
C {devices/lab_wire.sym} -150 0 0 0 {name=p7 sig_type=std_logic lab=bl_vG}
C {devices/lab_wire.sym} -10 0 0 0 {name=p8 sig_type=std_logic lab=bl_vG}
C {devices/lab_wire.sym} 140 0 0 0 {name=p9 sig_type=std_logic lab=bl_vG}
C {devices/lab_wire.sym} 260 0 0 0 {name=p10 sig_type=std_logic lab=bl_vG}
C {devices/ammeter.sym} -110 -60 0 0 {name=Vmeas savecurrent=true}
C {devices/ammeter.sym} 30 -60 0 0 {name=Vmeas1 savecurrent=true}
C {devices/ammeter.sym} 180 -60 0 0 {name=Vmeas2 savecurrent=true}
C {devices/ammeter.sym} 300 -60 0 0 {name=Vmeas3 savecurrent=true}
C {devices/code.sym} -440 -400 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -420 -260 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/lab_wire.sym} -80 -90 2 0 {name=p11 sig_type=std_logic lab=bl_v0}
C {devices/lab_wire.sym} 50 -90 2 0 {name=p12 sig_type=std_logic lab=bl_v1}
C {devices/lab_wire.sym} 200 -90 2 0 {name=p13 sig_type=std_logic lab=bl_v2}
C {devices/lab_wire.sym} 320 -90 2 0 {name=p14 sig_type=std_logic lab=bl_v3}
C {sky130_fd_pr/res_xhigh_po.sym} -110 -120 0 0 {name=R1
W=0.2
L=1
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} 30 -120 0 0 {name=R2
W=0.2
L=1
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} 180 -120 0 0 {name=R3
W=0.2
L=1
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} 300 -120 0 0 {name=R4
W=0.2
L=1
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/launcher.sym} -420 -210 0 0 {name=h1 
descr="Load waves dc" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc

"
}
C {devices/launcher.sym} -420 -160 0 0 {name=h2 
descr="Load waves op" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw op

"
}
