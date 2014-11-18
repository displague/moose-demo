class Planet::Earth::Country {
  has name => (is=>'rw', isa=>'Str',required=>1);

  sub getCountries {
    my $continent = shift;
    my $countries = {
    	North_America => ('United States','Canada','Mexico'),
	Europe => ('France', 'Germany', 'Italy'),
	South_America => ('Brazil', 'Paraguay', 'Uruguay'),
	# 'Antartica' intentionally empty.  Handle undefs
	Africa => ('Egypt', 'South Africa', 'Sudan'),
	Australia => ('Australia','New Zealand'),
	Asia => ('China','Japan','India')
    };
    $countries->[$continent];
  }
}
