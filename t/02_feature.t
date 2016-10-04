use strict;
use warnings;
use Test::More;

use say qw/state switch/;

state $foo = 1;

given ($foo) {
    when (1) { ok 1 }
    default  { say "default" }
}

done_testing;
