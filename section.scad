module section(){
    difference(){
        for(i=[0:$children-1])
        {children();}
        translate([100/2,0,0])cube(100,true);
    }
}
