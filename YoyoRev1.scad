scale_factor = 2.122;

rotate_extrude($fn = 100)
rotate([0,0,90])
    scale([scale_factor,scale_factor,0])
        import("Rev2SideEffect.svg");

        //50.5/ 2 = 25.25
        //53.6
