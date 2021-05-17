difference(){
    cube([24, 130, 65]);
    
    translate([4,4,0])cube([16,13,65]);
    translate([9,0,8])cube([6,4,57]);
    
    #translate([.5,50,10]) rotate([90,0,-90]) linear_extrude(3)
        text("Made in Kimberland", size = 6, font = str("Liberation Sans"), halign="center");  
}