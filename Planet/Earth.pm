use MooseX::Declare;

class Planet::Earth {
  use Planet::Earth::Continent;

  has continents => (
	  is => 'ro',
	  isa => 'ArrayRef[Planet::Earth::Continent]',
	  lazy_build => 1,
	  weak_ref => 1
  );

  method _build_continents {
    shift;
    return Planet::Earth::Continent::getContinents($_);
  }

}

