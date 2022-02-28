//
// ktRACK16
//

gap1 = 0.001;
gap2 = 0.002;
th = 2;

a = 0;

arm_a();
arm_b();
arm_c();



module arm_a ()
{
difference()
{
    union()
    {
        if(a){
            translate([8, -10/2, 0]) cube([120-8, 10, 15]);
        }else{
            translate([8, -10/2, 0]) cube([120-8-40, 10, 15]);
            translate([71.34, 0, 0]) rotate([0, 0, -60]) cube([70, 10, 15]);
        }
        translate([10, 0, -27]) rotate([0, 90, 0]) cylinder(10, 50, 50, $fn=100);
        translate([10-2, 0, -27+4]) rotate([0, 90, 0]) cylinder(2, 50, 50, $fn=100);
        translate([20, 0, -27+4]) rotate([0, 90, 0]) cylinder(2, 50, 50, $fn=100);
        translate([1.5, -32.5-2.5, 0]) cube([8.5, 32.5, 2]);
        translate([1.5, 5, -gap1]) rotate([180-34.85, 0, 0]) cube([2, 36.1, 25]);
        translate([1.5+2, 2.5, 0]) cube([6.5+gap2, 2.5, 15]);
    }
    
    translate([0, -110, -200]) cube([40, 220, 200]);
    translate([0, 35, -10]) cube([40, 100, 40]);
    translate([0, -35-100, -10]) cube([40, 100, 40]);
    
    
    if(a){
        translate([8-gap1, -5/2, 0-gap1]) cube([65-8, 5, 10]);
        translate([8-gap1, 0, 10]) rotate([0, 90, 0]) cylinder(65-8-17, 2.5, 2.5, $fn=100);
        translate([65-8-8, 0, 10]) rotate([0, 90, 0]) cylinder(16, 2.5, 2.5, $fn=100);
    }else{
        translate([52, 43.5, 0]) rotate([0, 0, -60]) translate([49.5+0.25, -5/2, 0-gap1]) cube([15.5, 5, 10]);
        translate([8-gap1, -5/2, 0-gap1]) cube([65-8+7, 5, 10]);
        translate([8-gap1, 0, 10]) rotate([0, 90, 0]) cylinder(65-8-17+24, 2.5, 2.5, $fn=100);
    }
    translate([1.5-gap1, -2.5, -gap1]) cube([6.5+gap2, 5, 10]);
    translate([1.5-gap1, -2.5, -gap1]) cube([2, 7.5, 10]);
    
    translate([-4, -42, 1]) rotate([-25, 0, 0]) rotate([0, -20, 0]) cube([15, 7.5, 5.5]);
    translate([-4, -42, 1]) rotate([-25, 0, 0]) rotate([0, -20, 0]) translate([15, 7.5, 0]) rotate([0, -20, 180]) cube([16, 17.5, 20]);
    
    if(a){
        translate([120, 10, 0]) rotate([0, -30, 180]) cube([50, 20, 20]);
    }else{
        translate([120, -53, 0]) rotate([0, -30, 180-60]) cube([50, 20, 20]);
    }
    
    if(a){
        translate([57, 6, 4]) rotate([90, 9, 0]) rear_screw_hole();
    }else{
        translate([52, 43.5, 0]) rotate([0, 0, -60])
        translate([57, 6, 4]) rotate([90, 9, 0]) rear_screw_hole();
    }
}
difference()
{
    translate([-4, -42, 1]) rotate([-25, 0, 0]) rotate([0, -20, 0])dock_a();

    translate([-30, -100, -200]) cube([200, 200, 200]);
}
if(a){
    translate([50-2-0.5, -10/2, 0]) cube([2, 10, 15]);
}else{
    translate([49, -10/2+2.5, 0]) cube([2, 2, 2]);
    translate([60, -10/2+2.5+3, 0]) cube([2, 2, 2]);
}
translate([10, -10/2+2.5+3, 0]) cube([2, 2, 2]);
translate([22, -10/2+2.5, 0]) cube([2, 2, 2]);
translate([35, -10/2+2.5+3, 0]) cube([2, 2, 2]);
}



module arm_b ()
{
    if(a)
    {
        difference()
        {
        union()
        {
            translate([50, -10/2, -50]) cube([15, 10, 50]);
            translate([50, -4/2, 0-gap1]) cube([15, 4, 9]);
        }
        translate([65, 10, -50]) rotate([0, 90-45, 180]) cube([20, 20, 50]);
        
        translate([57, 2.5, 4]) rotate([90, 9, 0]) screw_hole();
        }
    }else{
        translate([52, 43.5, 0]) rotate([0, 0, -60])
        difference()
        {
        union()
        {
            translate([50, -10/2, -50]) cube([15, 10, 50]);
            translate([50, -4/2, 0-gap1]) cube([15, 4, 9]);
        }
        translate([65, 10, -50]) rotate([0, 90-60, 180]) cube([20, 20, 50]);
        
        translate([57, 2.5, 4]) rotate([90, 9, 0]) screw_hole();
        }
    }
}



module arm_c ()
{
difference()
{
    union()
    {
        translate([1.5, 5, 15+1.5]) rotate([180-43.1, 0, 0]) cube([8.5, 16.05, 15]);
        translate([1.5, 5, 15+1.5]) rotate([180-0, 0, 0]) cube([8.5, 19.1, 16.5]);
        translate([8.5+1.5, -38.2, 26.95]) rotate([180-20, 0, 180]) cube([8.5, 15, 15]);
        translate([8.5+1.5, -24.1, 32.1]) rotate([180+15, 0, 180]) cube([8.5, 18, 18]);
    }
    
    translate([10-2+gap1, 0, -27+4]) rotate([0, 90, 0]) cylinder(2, 50, 50, $fn=100);
    translate([1.5+2, 3-35+2+gap1, -gap1]) cube([4.5+gap2, 35, 15]);
    translate([1.5+2, 5-2, 15+1.5-1.5]) rotate([180-43.1, 0, 0]) cube([4.5+gap2, 16.05, 15]);
    translate([4.5+1.5+2+gap2, -24.1, 32.1-1.6]) rotate([180+15, 0, 180]) cube([4.5+gap2, 16, 18]);
    translate([4.5+1.5+2+gap2, -38.2, 26.95-1.8]) rotate([180-20, 0, 180]) cube([4.5, 15, 15]);
    translate([1.5-gap1, 5, -gap1]) rotate([180-34.85, 0, 0]) cube([2+gap2, 36.1, 25]);
    translate([-4, -42, 1]) rotate([-25, 0, 0]) rotate([0, -20, 0]) translate([15, 7.5, 0]) rotate([0, -20, 180]) cube([16, 17.5, 20]);
    
}
translate([-4, -42, 1]) rotate([-25, 0, 0]) rotate([0, -20, 0])dock_b();
translate([1.5, -2.5, 0]) cube([2, 7.5, 15]);
}



module dock_a ()
{
difference()
{
    union()
    {
        translate([0, 0, 0]) cube([15, 7.5, 5.5]);
        translate([15, 7.5, 0]) rotate([0, -20, 180]) cube([16, 7.5, 20]);
    }
    
    translate([2, 0, -gap1]) conn();
    translate([8.3, -2, 5]) rotate([0, 24, 0]) cube([4, 4, 30]);
    translate([8.3, -2, 24]) rotate([0, 20, 0]) cube([7, 4, 35]);
    translate([8.3, -2, 24]) rotate([0, 20, 0]) cube([13, 4, 20]);
    translate([25, -2, 51.5]) rotate([0, 20, 0]) cube([53, 4, 10]);
    translate([73.7, -2, 42]) rotate([0, 20, 0]) cube([4, 10, 5]);
    
    translate([9.25, -gap1, 19]) rotate([-90, 9, 0]) screw_hole();

}
}



module dock_b ()
{
difference()
{
    union()
    {
        translate([0, -7.5, 0]) cube([15, 7.5, 5.5]);
        translate([15, 0, 0]) rotate([0, -20, 180]) cube([16, 7.5, 20]);
    }
    
    translate([2, 0, -gap1]) conn();
    translate([8.3, -2, 5]) rotate([0, 24, 0]) cube([4, 4, 30]);
    translate([8.3, -2, 24]) rotate([0, 20, 0]) cube([7, 4, 35]);
    translate([8.3, -2, 24]) rotate([0, 20, 0]) cube([13, 4, 20]);
    translate([25, -2, 51.5]) rotate([0, 20, 0]) cube([53, 4, 10]);
    translate([73.7, -2, 42]) rotate([0, 20, 0]) cube([4, 10, 5]);
    
    translate([9.25, -3.5, 19]) rotate([-90, 9, 0]) rear_screw_hole();

}
}



module conn ()
{
translate([0, -7.5/2, 0])
difference()
{
    translate([0, 0, 0]) cube( [18, 7.5, 19.5]);
    
    translate([12.5, -1, -gap1]) cube([10, 10, 5]);
    translate([12.5, -1, 5]) rotate([0, 20, 0]) cube([10, 10, 20]);
    translate([0, 10-1, 5]) rotate([0, -40, 180]) cube([10, 10, 20]);
    translate([0.8, 10-1, 5]) rotate([0, -38, 180]) cube([10, 10, 20]);
    translate([-9.2, -1, 5]) cube([10, 10, 10]);
    translate([20, 0, 5]) rotate([7, 0, 180]) cube([20, 10, 20]);
    translate([0, 7.5, 5]) rotate([5, 0, 0]) cube([20, 10, 20]);
    translate([18, 10-1, 17]) rotate([5, -23, 180]) cube([10, 10, 20]);
}
}



module screw_hole()
{
    cylinder( 10, 1.6, 1.6, $fn=30 );
    translate( [0, 0, 1.5] ) cylinder( 10, 6.5/2+0.1, 6.5/2+0.1, $fn=6 );
}



module rear_screw_hole()
{
    translate([0, 0, 3]) cylinder(5, 1.5, 1.5, $fn=30);
    translate([0, 0, 2.2-gap1]) cylinder(0.8+gap2, 1.5+0.7, 1.5, $fn=30);
    translate([0, 0, -gap1]) cylinder(2.2+gap1, 3.25+0.4, 3.25-0.6, $fn=30);
    translate([0, 0, -10]) cylinder(10, 3.25+0.4, 3.25+0.4, $fn=30);
}