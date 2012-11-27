#!perl -T

use strict;
use warnings;

# Test 201211210247-KSUN
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:47 KSUN 210247Z 28007KT 10SM BKN070 OVC085 03/03 A3002 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:47 KSUN 210247Z 28007KT 10SM BKN070 OVC085 03/03 A3002 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210247-KSUN');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['BKN070','OVC085'], 'cloudlevel_arrayref 201211210247-KSUN');
is($rpt->{code}, 'KSUN', 'code 201211210247-KSUN');
is($rpt->{conditions1}, undef, 'conditions1 201211210247-KSUN');
is($rpt->{conditions2}, undef, 'conditions2 201211210247-KSUN');
is($rpt->{conditionstext}, 'Mostly Cloudy', 'conditionstext 201211210247-KSUN');
is($rpt->{day}, '21', 'day 201211210247-KSUN');
is($rpt->{dewpoint_c}, '03', 'dewpoint_c 201211210247-KSUN');
is($rpt->{dewpoint_f}, '37', 'dewpoint_f 201211210247-KSUN');
is($rpt->{error}, undef, 'error 201211210247-KSUN');
is($rpt->{errortext}, undef, 'errortext 201211210247-KSUN');
is($rpt->{eventbe}, undef, 'eventbe 201211210247-KSUN');
is($rpt->{heat_index_c}, '45', 'heat_index_c 201211210247-KSUN');
is($rpt->{heat_index_f}, '113', 'heat_index_f 201211210247-KSUN');
is($rpt->{http}, undef, 'http 201211210247-KSUN');
is($rpt->{intensity}, undef, 'intensity 201211210247-KSUN');
is($rpt->{maintenance}, undef, 'maintenance 201211210247-KSUN');
is($rpt->{obs}, '2012/11/21 02:47 KSUN 210247Z 28007KT 10SM BKN070 OVC085 03/03 A3002 ', 'obs 201211210247-KSUN');
is($rpt->{precipslr}, undef, 'precipslr 201211210247-KSUN');
is($rpt->{pressure_inhg}, '30.02', 'pressure_inhg 201211210247-KSUN');
is($rpt->{pressure_kgcm}, '1.036638632', 'pressure_kgcm 201211210247-KSUN');
is($rpt->{pressure_lbin}, '14.74444308', 'pressure_lbin 201211210247-KSUN');
is($rpt->{pressure_mb}, '1017', 'pressure_mb 201211210247-KSUN');
is($rpt->{pressure_mmhg}, '763', 'pressure_mmhg 201211210247-KSUN');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210247-KSUN');
is($rpt->{relative_humidity}, '100', 'relative_humidity 201211210247-KSUN');
is_deeply(\$rpt->{remark_arrayref}, \[], 'remark_arrayref 201211210247-KSUN');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210247-KSUN');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210247-KSUN');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210247-KSUN');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210247-KSUN');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210247-KSUN');
is($rpt->{station_type}, 'Manual', 'station_type 201211210247-KSUN');
is($rpt->{storm}, undef, 'storm 201211210247-KSUN');
is($rpt->{temperature_c}, '03', 'temperature_c 201211210247-KSUN');
is($rpt->{temperature_f}, '37', 'temperature_f 201211210247-KSUN');
is($rpt->{templateout}, undef, 'templateout 201211210247-KSUN');
is($rpt->{tfile}, undef, 'tfile 201211210247-KSUN');
is($rpt->{thpressure}, undef, 'thpressure 201211210247-KSUN');
is($rpt->{time}, '0247', 'time 201211210247-KSUN');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210247-KSUN');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210247-KSUN');
is($rpt->{windchill_c}, '-0', 'windchill_c 201211210247-KSUN');
is($rpt->{windchill_f}, '31', 'windchill_f 201211210247-KSUN');
is($rpt->{winddir}, '280', 'winddir 201211210247-KSUN');
is($rpt->{winddirtext}, 'West', 'winddirtext 201211210247-KSUN');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210247-KSUN');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210247-KSUN');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210247-KSUN');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211210247-KSUN');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211210247-KSUN');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211210247-KSUN');
