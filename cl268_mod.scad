$fn=360;

module body(h, r1, r2, s1, s2, t) {
    cylinder(h+s2, r2, r2);
    cylinder(s1, r1, r1);
    translate([0, 0, s1])
        cylinder(h-s1, r1, r2+t);
}

module cl286_mod() {
    difference() {
        body(25, 65/2, 37/2, 5, 12, 1.5);
        body(25, (65-4)/2, (37-4)/2, 3, 14, 0);
    }
}

cl286_mod();
