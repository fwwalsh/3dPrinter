//minkowski(){
//    color("red")
//        translate([12,16])
//            circle(1,$fn=100);
$fn = 100;
stringHoleWidth = 2.5 ;
height = 20;
color("red")
rotate_extrude()
offset(r=.5)
polygon(points = [ 
    [stringHoleWidth,11] , 
    [7 , 11 ], 
    [ 7, 0],
    [13 , 0], 
    [17,2], 
    [ 10 , 6  ], 
    [6 , height], 
    [ stringHoleWidth, height]] );
//cylinder(10,5);

//color("red")
//rotate_extrude()
//polygon( points = [[.25,0], [2,0], [2,2] , [1 , 2] , [ 1, 3] , [ .25 ,3 ] ]);

//rotate([0,180,0])
//translate([0,50,0])
//rotate_extrude()
//      color("green")
            //translate([2.1,0,0])
//            rotate([180,0,0])
            
//            scale([6,6,1,])
//                offset(r=.25)  
//                    polygon( points=[[.5,0],[8,4],[4,8],[4,12],[12,16],[2.2,19], [2.2 , 17], [.5,17]] );

//}