print "1..1\n";

eval {
    require Acme::Tao;
};

package Bar;

@ISA = qw(Acme::Tao);

@messages = (qq(BARBARBAR));

package main;

use constant Tao;

eval {
    Bar -> import();
};

if($@ && $@ =~ m{BARBARBAR}) {
    print "ok 1\n";
} else {
    print "not ok 1\n";
}


exit 0;
