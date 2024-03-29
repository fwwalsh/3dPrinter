

module pickup(width,length, height)
{
    
    //cube([36.4, 100, 100],center = true);
    minkowski()
    {
        linear_extrude(height = height, center = true)
            union(){
                //top pickup
                //11.7 is the width of the hump
                //36.5 is the distance between the humps
                //100.9 is the total distance

                //radius of hump is 11.7 /2 =  5.85
                //ratio of radius of hump to size of pickup
                // 5.85/100.9 = 0.0579781962338949

                //the hump center is X offset from the center of the pickup
                // 36.5 / 2 = 18.25 + 5.85 = 24.1
                // ratio of offset to size of pickup
                // 24.1/100.9 = 0.2388503468780971


                //12 is the width of the hump
                //37.7 is the distance between the humps
                //103.3 is the total distance


                //bottom
                //radius of hump is 12 /2 = 6
                //ratio of radius of hump to size of pickup
                // 6/103.3 = 0.0580832526621491

                //the hump center is X offset from the center of the pickup
                // 37.7 / 2 = 18.85 + 6 = 24.85
                // ratio of offset to size of pickup
                // 24.85/100.9 = 0.2462834489593657


                radiusOfMount = 0.058 * width;

                mountOffsetX = width * .24.5;
                mountOffsetY = length /2;
                translate([mountOffsetX,mountOffsetY])
                    circle(r=radiusOfMount);
                translate([-mountOffsetX,mountOffsetY])
                    circle(r=radiusOfMount);
                translate([mountOffsetX,-mountOffsetY])
                    circle(r=radiusOfMount);
                translate([-mountOffsetX,-mountOffsetY])
                    circle(r=radiusOfMount);
                square([width,length], center =true);
            };
        cylinder(r=.5,h=height, center = true);
    }
};


pickGuardRadius = 80;
pickGuardOffest = [-17, 20];

intersection(){
    difference()
    {
        union()
        {
            intersection() {
                translate([0,40,10])
                        minkowski()
                            {
                                cube([110, 150, 20], center = true);
                                
                                cylinder(r=2,h=1, center =true, $fn=500);
                            };
                

                $fn=100;
                translate([0,200,-346])
                    rotate([90,0,0])
                        cylinder(h = 300 ,  r= 355.6);
            }

            translate(pickGuardOffest)
                linear_extrude(height = 1.5, center = true)
                    circle(r = pickGuardRadius);
        }
            

        pickup( 100.9, 19, 20);
            translate([0,73 + (19),0])
        pickup( 103.3, 19 ,20);

        linear_extrude(height = 20, center = true)
            #polygon(points=[[-126,114],[-54,60],[-69,25],[-107,17.5]]);
    };
    translate(pickGuardOffest)
        cylinder(r=pickGuardRadius,h = 100, $fn=500);
}



