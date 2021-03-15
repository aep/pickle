module plate() {
    color([0.4,0.4,0.4])
    translate([0,-10,10])
    difference() {
        square([300,240]);

        union() {
            translate([30,10])
            circle(d=5);
        };
    }
}
