#!/usr/bin/perl
use strict;
use Data::Dumper;

use lib '.';
use Planet::Earth;
my $e = Planet::Earth->new;
my $countries = map { $_->countries() } $e->continents;

print Dumper($countries);
