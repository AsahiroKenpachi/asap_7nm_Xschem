v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 90 170 120 {
lab=GND}
N 170 60 240 60 {
lab=GND}
N 240 60 240 110 {
lab=GND}
N 170 110 240 110 {
lab=GND}
N 170 10 170 30 {
lab=nfet_out}
N 100 20 170 20 {
lab=nfet_out}
C {vsource.sym} -40 100 0 0 {name=V1 value=0 savecurrent=false}
C {gnd.sym} 170 120 0 0 {name=l1 lab=GND}
C {gnd.sym} -40 130 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -40 70 0 0 {name=p1 sig_type=std_logic lab=nfet_in}
C {lab_pin.sym} 130 60 0 0 {name=p2 sig_type=std_logic lab=nfet_in}
C {vsource.sym} 370 100 0 0 {name=V2 value=3 savecurrent=false}
C {gnd.sym} 370 130 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 370 70 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 170 -50 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {code_shown.sym} 430 20 0 0 {name=s1 only_toplevel=false value="
.dc v1 0 0.7 1m v2 0 0.7 0.2
.control
run
set xbrushwidth=3
let vd = vdd - nfet_out
let id  = vd/1000
plot id
.endc
"}
C {res.sym} 170 -20 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 100 20 0 0 {name=p5 sig_type=std_logic lab=nfet_out}
C {/home/hprcse/asap_7nm_nfet.sym} 150 60 0 0 {name=nfet2 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
