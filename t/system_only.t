#!/usr/bin/perl -I../../../lib
use strict;
use warnings;

use lib 'lib';
use Test::More tests => 2;
use Test::Exception;
use Command::Interactive;

my $command = Command::Interactive->new;

is($command->run("echo yes"), undef, "Run command successfully");
like($command->run("asdfasdf"), qr/Could not execute asdfasdf/, "Bogus command");

1;
