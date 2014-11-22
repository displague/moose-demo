use MooseX::Declare;

# ABSTRACT: list the continents
class Planet::Earth::Countries::App::Command::Continents extends MooseX::App::Cmd::Command {
  use Planet::Earth;
  use Data::Printer;

  method execute {
    my $e = Planet::Earth->new;

    my $continents = $e->continents;

    p $continents;
    return $continents;
  }
}
