module head(){

    position = 20;

    color([0.9,0.4,0.4])
    translate([position-30,0,0]) {
        linear_extrude(height=24) {

            // bracket
            square([80,5]);
            square([4.2,26.5]);

            // motor
            translate([5,6])
            square([38,20]);

            // sled
            translate([11.2,-8])
            square([29,8]);
        }

        translate([-20,12,12])
        rotate([0,90,0])
        cylinder(h=20,d=12);

        translate([-45,12,12])
        rotate([0,90,0])
        cylinder(h=25,d=5);
    }

    // rail
    translate([-20,-3.3 - 6.5, 7.7])
    cube([100,6.5, 9]);


}
