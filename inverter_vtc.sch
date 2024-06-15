v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 70 210 110 {
lab=nfet_out}
N 170 40 170 140 {
lab=nfet_in}
N 210 -40 210 10 {
lab=vdd}
N 210 170 210 220 {
lab=GND}
N 210 140 280 140 {
lab=GND}
N 280 140 280 200 {
lab=GND}
N 210 200 280 200 {
lab=GND}
N 210 40 300 40 {
lab=vdd}
N 300 -20 300 40 {
lab=vdd}
N 210 -20 300 -20 {
lab=vdd}
N 120 80 170 80 {
lab=nfet_in}
N 210 90 310 90 {
lab=nfet_out}
C {/home/hprcse/asap_7nm_pfet.sym} 190 40 0 0 {name=pfet1 model=asap_7nm_pfet spiceprefix=X l=7e-009 nfin=14}
C {/home/hprcse/asap_7nm_nfet.sym} 190 140 0 0 {name=nfet1 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {gnd.sym} 210 220 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 210 -40 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 120 80 0 0 {name=p5 sig_type=std_logic lab=nfet_in}
C {lab_pin.sym} 310 90 2 0 {name=p1 sig_type=std_logic lab=nfet_out}
C {vsource.sym} -80 100 0 0 {name=V1 value="pulse(0 0.7 20p 10p 10p 20p 500p 1)" savecurrent=false}
C {gnd.sym} -80 130 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -80 70 0 0 {name=p2 sig_type=std_logic lab=nfet_in}
C {vsource.sym} 410 170 0 0 {name=V2 value=0.7 savecurrent=false}
C {gnd.sym} 410 200 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 410 140 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {code_shown.sym} 510 50 0 0 {name=s1 only_toplevel=false value="
.dc v1 0 0.7 1m 
.control
    run
    set xbrushwidth=3
    plot nfet_out nfet_in
    meas dc v_th when nfet_out=nfet_in
.endc
"}
