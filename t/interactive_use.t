#!/usr/bin/perl
use strict; use warnings;

use Test::More;
use lib 'lib';
use Command::Interactive;

my $interaction = Command::Interactive::Interaction->new({
    expected_string => 'Please enter your password:',
    response    => 'secret',
});

my $cmd = Command::Interactive->new({
    echo_output => 0,
    interactions    => [ $interaction ],
});
my $got = $cmd->run("./scripts/login.pl");
ok (!$got, 'interactive command');

done_testing();

