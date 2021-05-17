union(){
translate([0,115,4])  linear_extrude(1)
        text("Centennial", size = 16, font = str("Liberation Sans"), halign="center"); 
        
linear_extrude(4) union()
{
    
    rotate([0,180,0])polygon([[0,0],[2,10],[2,100],[60,100],[60,150],[0,150]]);
    polygon([[0,0],[1,10],[1,100],[60,100],[60,150],[0,150]]);
}
}
