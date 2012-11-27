#!perl -T

use strict;
use warnings;

# Test 201211220616-KMOT
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 06:16 KMOT 220616Z AUTO 30012KT 5SM BR OVC003 00/M01 A2967 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 06:16 KMOT 220616Z AUTO 30012KT 5SM BR OVC003 00/M01 A2967 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211220616-KMOT');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC003'], 'cloudlevel_arrayref 201211220616-KMOT');
is($rpt->{code}, 'KMOT', 'code 201211220616-KMOT');
is($rpt->{conditions1}, 'Mist', 'conditions1 201211220616-KMOT');
is($rpt->{conditions2}, undef, 'conditions2 201211220616-KMOT');
is($rpt->{conditionstext}, 'Mist', 'conditionstext 201211220616-KMOT');
is($rpt->{day}, '22', 'day 201211220616-KMOT');
is($rpt->{dewpoint_c}, '-1', 'dewpoint_c 201211220616-KMOT');
is($rpt->{dewpoint_f}, '30', 'dewpoint_f 201211220616-KMOT');
is($rpt->{error}, undef, 'error 201211220616-KMOT');
is($rpt->{errortext}, undef, 'errortext 201211220616-KMOT');
is($rpt->{eventbe}, undef, 'eventbe 201211220616-KMOT');
is($rpt->{heat_index_c}, '67', 'heat_index_c 201211220616-KMOT');
is($rpt->{heat_index_f}, '152', 'heat_index_f 201211220616-KMOT');
is($rpt->{http}, undef, 'http 201211220616-KMOT');
is($rpt->{intensity}, undef, 'intensity 201211220616-KMOT');
is($rpt->{maintenance}, undef, 'maintenance 201211220616-KMOT');
is($rpt->{obs}, '2012/11/22 06:16 KMOT 220616Z AUTO 30012KT 5SM BR OVC003 00/M01 A2967 RMK AO2 ', 'obs 201211220616-KMOT');
is($rpt->{precipslr}, undef, 'precipslr 201211220616-KMOT');
is($rpt->{pressure_inhg}, '29.67', 'pressure_inhg 201211220616-KMOT');
is($rpt->{pressure_kgcm}, '1.024552572', 'pressure_kgcm 201211220616-KMOT');
is($rpt->{pressure_lbin}, '14.57253918', 'pressure_lbin 201211220616-KMOT');
is($rpt->{pressure_mb}, '1005', 'pressure_mb 201211220616-KMOT');
is($rpt->{pressure_mmhg}, '754', 'pressure_mmhg 201211220616-KMOT');
is($rpt->{ptemperature}, undef, 'ptemperature 201211220616-KMOT');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211220616-KMOT');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211220616-KMOT');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211220616-KMOT');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211220616-KMOT');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211220616-KMOT');
is($rpt->{slp_mb}, undef, 'slp_mb 201211220616-KMOT');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211220616-KMOT');
is($rpt->{station_type}, 'Automated', 'station_type 201211220616-KMOT');
is($rpt->{storm}, undef, 'storm 201211220616-KMOT');
is($rpt->{temperature_c}, '00', 'temperature_c 201211220616-KMOT');
is($rpt->{temperature_f}, '32', 'temperature_f 201211220616-KMOT');
is($rpt->{templateout}, undef, 'templateout 201211220616-KMOT');
is($rpt->{tfile}, undef, 'tfile 201211220616-KMOT');
is($rpt->{thpressure}, undef, 'thpressure 201211220616-KMOT');
is($rpt->{time}, '0616', 'time 201211220616-KMOT');
is($rpt->{visibility_km}, '8', 'visibility_km 201211220616-KMOT');
is($rpt->{visibility_mi}, '5', 'visibility_mi 201211220616-KMOT');
is($rpt->{windchill_c}, '-6', 'windchill_c 201211220616-KMOT');
is($rpt->{windchill_f}, '22', 'windchill_f 201211220616-KMOT');
is($rpt->{winddir}, '300', 'winddir 201211220616-KMOT');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 201211220616-KMOT');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220616-KMOT');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220616-KMOT');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220616-KMOT');
is($rpt->{windspeedkmh}, '22', 'windspeedkmh 201211220616-KMOT');
is($rpt->{windspeedkts}, '12', 'windspeedkts 201211220616-KMOT');
is($rpt->{windspeedmph}, '14', 'windspeedmph 201211220616-KMOT');
