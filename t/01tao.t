print "1..1\n";

eval {
    require Acme::Tao;
};

use constant Tao;

eval {
    Acme::Tao -> import;
};

if($@) {
    print "ok 1\n";
} else {
    print "not ok 1\n";
}

exit 0;
