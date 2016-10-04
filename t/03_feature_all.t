use strict;
use warnings;
use Test::More;

use say ':5.10';

state $foo = 1;

given ($foo) {
    when (1) { ok 1 }
    default  { say "default" }
}

done_testing;
