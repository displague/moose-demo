use MooseX::Declare;

class Planet::Earth::Continent {
  use Planet::Earth::Country;
  has name => ( is=>'rw', isa => 'Str', required => 1 );
  has countries => ( is=>'ro', isa => 'Maybe[ArrayRef[Planet::Earth::Country]]', required => 1, lazy_build => 1 );

  sub getContinents {
    my @carr = ('Antarctica', 'Africa', 'Asia', 'Australia', 'Europe', 'North America', 'South America');
    my @continents = map { Planet::Earth::Continent->new(name=>$_) } @carr;
    return \@continents;
  }

  method _build_countries { Planet::Earth::Country::getCountries($self->name) }
}

