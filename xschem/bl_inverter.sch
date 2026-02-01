v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 -60 -10 30 {
lab=bl_v_in}
N 30 -30 30 0 {
lab=bl_v_1}
N 30 -110 30 -90 {
lab=VDD}
N 30 60 30 80 {
lab=VSS}
N 30 30 110 30 {
lab=VSS}
N 110 30 110 80 {
lab=VSS}
N 30 80 110 80 {
lab=VSS}
N 20 -70 120 -70 {
lab=VDD}
N 120 -110 120 -70 {
lab=VDD}
N 30 -110 120 -110 {
lab=VDD}
N 190 -60 190 30 {
lab=bl_v_1}
N 230 -30 230 0 {
lab=bl_v_out}
N 230 -110 230 -90 {
lab=VDD}
N 230 60 230 80 {
lab=VSS}
N 230 30 310 30 {
lab=VSS}
N 310 30 310 80 {
lab=VSS}
N 230 80 310 80 {
lab=VSS}
N 220 -70 320 -70 {
lab=VDD}
N 320 -110 320 -70 {
lab=VDD}
N 230 -110 320 -110 {
lab=VDD}
N 30 -20 190 -20 {
lab=bl_v_1}
N 230 -20 360 -20 {
lab=bl_v_out}
N -50 -20 -10 -20 {
lab=bl_v_in}
N 360 -20 420 -20 {
lab=bl_v_out}
C {devices/iopin.sym} -190 -40 0 0 {name=p1 lab=VDD
}
C {devices/iopin.sym} -190 -10 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/pfet3_01v8.sym} 10 -60 0 0 {name=M1
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 10 30 0 0 {name=M2
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
C {devices/lab_wire.sym} 30 -110 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 30 80 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet3_01v8.sym} 210 -60 0 0 {name=M3
L=0.15
W=20
body=VDD
nf=20
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 210 30 0 0 {name=M4
L=0.15
W=20
nf=20 
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
C {devices/lab_wire.sym} 230 -110 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 230 80 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -50 -20 0 0 {name=p9 lab=bl_v_in}
C {devices/opin.sym} 420 -20 0 0 {name=p5 lab=bl_v_out}
C {devices/lab_wire.sym} 150 -20 0 0 {name=p8 sig_type=std_logic lab=bl_v_1}
