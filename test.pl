#!/usr/bin/perl
use strict;

use lib '.';
use Planet::Earth;
my $e = Planet::Earth->new;
$e->continents;
