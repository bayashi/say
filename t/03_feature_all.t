use strict;
use warnings;
use Test::More;

use say ':5.10';

if( $] < 5.010 ) {
    plan skip_all => 'no support feature';
}

eval {
    state $foo = 1;

    given ($foo) {
        when (1) { ok 1 }
        default  { say "default" }
    }
};

ok !$@;

done_testing;
