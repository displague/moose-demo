class Planet::Earth::Country {
  has name => (is=>'rw', isa=>'Str',required=>1);

  our $countries = {
    'North America' => ['United States','Canada','Mexico'],
    Europe => ['France', 'Germany', 'Italy'],
    'South America' => ['Brazil', 'Paraguay', 'Uruguay'],
    # 'Antarctica' intentionally empty.  Handle undefs
    Africa => ['Egypt', 'South Africa', 'Sudan'],
    Australia => ['Australia','New Zealand'],
    Asia => ['China','Japan','India']
  };

  sub getCountries {
    my $continent = shift;
    my @countries;
    return unless exists $countries->{$continent};
    @countries = map { Planet::Earth::Country->new(name=>$_) if $_ } @{$countries->{$continent}};
    return \@countries;
  }

}

