//measurements
height = 80.4;
width = 25;
circumOfCartHolder = 15;
lengthOfCube = 11.9;
widthOfWindow = 10;
heightOfWindow = 14.3;
$fn = 100;

difference()
{
    buffer = 2;
    minkowski()
    {
        translate([0,5.25,-.75])
            cube([circumOfCartHolder +4,width +3.5,height +1 ],center = true);
        
        cylinder( h = 1 , center = true);
    }

    minkowski()
    {
        union()
        {
            cylinder(r=circumOfCartHolder/2, h = height , center = true);
            translate([0,11,0])
                cube([lengthOfCube,14,height],center = true);
        }
        cylinder( h = 1 , center = true);

    }       
    //translate([0,-circumOfCartHolder/2,0])
    //    cube([1,width, 1]);
translate([0,15,25])
    minkowski()
    {

        cube([widthOfWindow,20,heightOfWindow],center =true);
        rotate([90,0,0])
            cylinder(r=1, h=  1,center= true );
    }
}
