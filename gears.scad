use <Getriebe.scad>















difference() {
    kegelrad(modul = 1.5, zahnzahl = 23, teilkegelwinkel = 45, zahnbreite = 8, bohrung = 10.2, eingriffswinkel = 20, schraegungswinkel=0);
    translate([8,0,-1])      cylinder(h=20, d=3.5, $fn=20);
    translate([0,8,-1])     cylinder(h=20,  d=3.5, $fn=20);
    translate([-8,0,-1])    cylinder(h=20,  d=3.5, $fn=20);
    translate([0,-8,-1])     cylinder(h=20, d=3.5, $fn=20);
}



//translate([-25,0,25]) rotate([0,90,0]) {
translate([-40,0,0]){
    kegelrad(modul = 1.5, zahnzahl = 23, teilkegelwinkel = 45, zahnbreite = 10, bohrung = 5.3, eingriffswinkel = 20, schraegungswinkel=0);
}
