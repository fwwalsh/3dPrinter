$width = 100;  //radius really
$thick = 2;
$lipLength = 10;
$angle = 45;
$text = "Made in Kimberland";


difference(){


rotate_extrude($fn = 90)
    rotate([0,0,90]) // because I screwed up
        union(){
            //bottom of plate
            polygon([ [0,0] , [0,$width], [$thick,$width] , [$thick,0]]) ;
            //lip
            translate([$thick,$width-$thick,0])
                rotate([0,0,$angle])
                    polygon( [[0,0],[0,$thick],[$lipLength,$thick],[$lipLength,0]]);
            }
 translate([0,0,$thick - .25])
    #linear_extrude(3)
        text($text, size = 7, font = str("Liberation Sans"), halign="center");                   
 }