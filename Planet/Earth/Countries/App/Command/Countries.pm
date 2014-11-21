use MooseX::Declare;

class Planet::Earth::Countries::App::Command::Countries extends MooseX::App::Cmd::Command {
  use Planet::Earth;
  use Data::Printer;

  has continent => (
    traits => [qw(Getopt)],
    isa => 'Bool',
    is => 'rw',
    cmd_aliases => 'c',
    documentation => 'filter by a continent',
  );

  method execute {
    my $e = Planet::Earth->new;

    my $continents = $e->continents;

    my @countries = map { @{$_->countries} if defined $_->countries } values @{$continents};
    my $flat = [@countries];
    p $flat;
    return $flat;
  }
}
