#!/usr/bin/perl
use v5.020;
use strict;
use Data::Dumper;

use lib '.';
use Planet::Earth;
my $e = Planet::Earth->new;

print "\nContinents =====\n";
my $continents = $e->continents;
print Dumper($continents);
print Dumper($continents->[0]);

print "\nCountries =====\n";
#print Dumper($continents->[6]->countries);

#print Dumper($continents->[6]->countries->['North America']);
my @countries = map { @{$_->countries} if defined $_->countries } values @{$continents};
#my @countries = map { map { $_ } @{$_->countries} } values @{$continents};

print Dumper([@countries]);
