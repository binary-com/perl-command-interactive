#!/usr/bin/perl
use strict; use warnings;

use Test::More;
use lib 'lib';
use Command::Interactive;

my $cmd = Command::Interactive->new;

my $got = $cmd->run("echo 1");
ok (!$got, 'simple command');

$got = $cmd->run("ech 1");
ok ($got, 'unknown command');

done_testing();

