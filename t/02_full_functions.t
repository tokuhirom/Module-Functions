use strict;
use warnings;
use utf8;
use Test::More;
use lib 't/lib/';
use Bar;
use Module::Functions qw/get_full_functions/;

is_deeply(
    [ sort( get_full_functions('Bar') ) ],
    [qw/BEGIN EXPORT ISA _barbar bar catfile import/]
);

done_testing;