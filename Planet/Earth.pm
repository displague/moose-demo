use MooseX::Declare;

class Planet::Earth {
use Data::Dumper;
  use Planet::Earth::Continent;

  has continents => (
	  is => 'ro',
	  isa => 'ArrayRef[Planet::Earth::Continent]',
	  lazy_build => 1,
  );

  method _build_continents {
    shift;
    my $c = Planet::Earth::Continent::getContinents;
    return $c;
  }

}

