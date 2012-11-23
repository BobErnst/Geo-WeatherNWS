#!perl -T

use strict;
use warnings;
use Test::More tests => 12; 
use Geo::WeatherNWS;

# Test the supporting calculations

# Fahrenheit to Celsius

is( Geo::WeatherNWS::convert_f_to_c(212),   100,   '212f -> c' );
is( Geo::WeatherNWS::convert_f_to_c(32),    0,     '32f -> c' );
is( Geo::WeatherNWS::convert_f_to_c(-40),   -40,   '-40f -> c' );
is( Geo::WeatherNWS::convert_f_to_c(undef), undef, 'undef f -> c' );

# Celsius to Fahrenheit

is( Geo::WeatherNWS::convert_c_to_f(100),   212,   '100c -> f' );
is( Geo::WeatherNWS::convert_c_to_f(0),     32,    '0c -> f' );
is( Geo::WeatherNWS::convert_c_to_f(-40),   -40,   '-40c -> f' );
is( Geo::WeatherNWS::convert_c_to_f(undef), undef, 'undef c -> f' );

# Wind Chill

#TODO re-enable =>    is( Geo::WeatherNWS::wind_chill(20,undef),   undef,   'undefined wind' );
# TODO these values probably need to be adjusted,
# but for now this checks the existing behavior
is( Geo::WeatherNWS::windchill(20,0),   48,   'wind chill for 32 f, wind calm' );
is( Geo::WeatherNWS::windchill(32,10),   23,   'wind chill for 32 f, wind 10 mph' );
is( Geo::WeatherNWS::windchill(40,20),   30,   'wind chill for 40 f, wind 20 mph' );
is( Geo::WeatherNWS::windchill(0,30),   -25,   'wind chill for 0 f, wind 30 mph' );


