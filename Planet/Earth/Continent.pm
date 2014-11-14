use MooseX::Declare;

class Planet::Earth::Continent {
  has name => ( is=>'rw', isa => 'Str', required => 1 );

  sub getContinents {
    my @carr = ['Antarctica', 'Africa', 'Asia', 'Australia', 'Europe', 'North America', 'South America'];
    my $continents = map { Planet::Earth::Continent->new({name=>$_}); } @carr;
    return $continents;
  }
}

