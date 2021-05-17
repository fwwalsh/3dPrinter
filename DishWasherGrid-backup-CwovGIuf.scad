width = 5;
height = 3;
scale([.60, .52, 1]){
    union(){
        //sides
        cube([width,100,5]);
        translate([100-width,0,0])
            cube([width,100,5]);
        cube([100,width,5]);
        translate([0,98,0])
            cube([100,width,5]);
        
        for( a =  [20: 20: 80])
            translate([ a,0,0])
                color("Red")
                    cube([5,100,height]);

        translate([100,0,0])
            rotate(90)
                for( a =  [20: 20: 80])
                    translate([ a,0,0])
                        color("Green")
                            cube([5,100,height]);
            };
        }
            