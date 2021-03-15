use <holes.scad>
use <../Round-Anything/polyround.scad>

module foot1() {

    resolution = 2;
    fillet = 3;

    rotate([0,90,0])
    translate([-10,-10,-10])
    difference() {
        // body
        union() {
            //front

            w  = 40;
            h  = 30;
            h2 = -20;
            radiiPoints1=[
                [0, -10,    1],
                [0, 0,      10],
                [h2, 0,     10],

                [h2, 20,    10],
                [0,  20,    10],
                [0,  30,    1],
                [0, w,      1],
                [h, w,      1],
                [h, -10,    1],
            ];

                //polyline(radiiPoints1,5);
                polyRoundExtrude(radiiPoints1,10,1,fillet, resolution);



            // bottom

            radiiPoints2=[
                [h-10, w,     1],
                [h,    w,     1],
                [h,   -10,    1],
                [h-10,-10,    1],

            ];
            polyRoundExtrude(radiiPoints2,30,1,fillet, resolution);


            //side

            radiiPoints3=[
                [h,   -10,     1],
                [0,   -10,     1],
                [0,   0,     1],
                [h,   0,     1],

            ];
            polyRoundExtrude(radiiPoints3,30,1,fillet, resolution);

        };

        // holes
        union() {
            translate([10,30,4.5])
                m4hole();
            translate([10,10,6])
                m6hole();

            translate([30-4,30,20])
            rotate([0,-90,0])
                m4hole();

            translate([30-4,10,20])
            rotate([0,-90,0])
                m4hole();


            translate([10,-6,15])
            rotate([-90,0,0])
                m4hole();

        }
    };

}

