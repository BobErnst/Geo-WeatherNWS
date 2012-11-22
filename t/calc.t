#!perl -T

use strict;
use warnings;
use Test::More tests => 8; 
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


