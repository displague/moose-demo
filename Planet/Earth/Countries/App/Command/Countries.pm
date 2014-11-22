use MooseX::Declare;

# ABSTRACT: list the countries
class Planet::Earth::Countries::App::Command::Countries extends MooseX::App::Cmd::Command {
  use Planet::Earth;
  use Data::Printer;

  has continent => (
    # traits => [qw(Getopt)],
    isa => 'Str',
    is => 'rw',
    #cmd_aliases => 'c',
    documentation => 'filter by a continent',
  );

  method execute {
    my ( $class, $opts, $args ) = @_;
    my $e = Planet::Earth->new;

    my $continents = $e->continents;
    #p $continents;
    #my @matching = grep { p $_;  } @{$continents};
    #p @matching;

    my @countries = map { @{$_->countries} if defined $_->countries } values @{$continents};
    #my @countries = map { @{$_->countries} if defined $_->countries } values @matching;
    my $flat = [@countries];
    p $flat;
    return $flat;
  }
}
