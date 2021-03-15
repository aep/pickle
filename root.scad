use <2020_profile.scad>
use <plate.scad>
use <feet.scad>
use <head.scad>
use <holes.scad>


$fn=30;


module hgh15cc() {
    rotate([90,0,90])   color([0.9,0.3,0.3])    import("hgh15cc.stl");
}

module hgr15_300() {
    color([0.9,0.99,0.99])
    translate([0,0,10.5])
    rotate ([90,0,90])
    linear_extrude(height=300)
    import("hgr15.dxf");
}


module 2020_300() {
    color([0.99,0.99,0.99])
    rotate ([0,90,0])
    linear_extrude(height=300) 2020_profile();
}

module 2020_200() {
    color([0.99,0.99,0.99])
    rotate ([0,90,90])
    linear_extrude(height=200) 2020_profile();
}

module base() {
    render() {
    translate([0, 0,0])
    2020_300();
    translate([0,220,0])
    2020_300();
    translate([10,10,0])
    2020_200();
    translate([290,10,0])
    2020_200();
    }
}


xrods_height = 39;

module rod_250() {
    color([0.9,0.99,0.99])
    translate([0,110,xrods_height])
    rotate([90,0,0])
    cylinder(h=250, d=8,center=true);
}


module sledrider() {


    translate([36.5,17,xrods_height])
    difference() {
        hh = 34;
        rotate([90,0,0])
        difference() {

            union() {
                translate([0.5,-2,0]) cube([54.5,8,hh]);

                cylinder(h=hh, d=12);
                translate([54.5,0,0])
                cylinder(h=hh, d=12);
            }


            translate([0,0,-1])
            cylinder(h=hh+2, d=8.2);

            translate([54.5,0,0])
            translate([0,0,-1])
            cylinder(h=hh+2, d=8.2);
        }

        translate([14,-4,2])
        rotate([0,180,0])
        m4hole();

        translate([14+26,-4,2])
        rotate([0,180,0])
        m4hole();

        translate([14+26,-4-26,2])
        rotate([0,180,0])
        m4hole();

        translate([14,-4-26,2])
        rotate([0,180,0])
        m4hole();
    }

}

module nema17() {
    color([0.2,0.2,0.2])
    import("nema17.stl");

}

base();
plate();
translate([0,0,0])      hgr15_300();
translate([0,220,0])    hgr15_300();
translate([40,-15,-3])  hgh15cc();
translate([40,205,-3])  hgh15cc();
translate([36.5,0,0])   rod_250();
translate([91,0,0])     rod_250();
translate([36,0,15])    rod_250();
translate([36,0,30])    rod_250();
foot1();
sledrider();
translate([55, 60,60]) rotate([0,-90,-90]) head();

translate([110, 75, 5]) rotate([0,0,180]) nema17();
