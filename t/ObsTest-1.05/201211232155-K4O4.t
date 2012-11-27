#!perl -T

use strict;
use warnings;

# Test 201211232155-K4O4
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 21:55 K4O4 232155Z AUTO 36012G15KT 10SM CLR 16/M05 A3036 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 21:55 K4O4 232155Z AUTO 36012G15KT 10SM CLR 16/M05 A3036 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211232155-K4O4');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211232155-K4O4');
is($rpt->{code}, 'K4O4', 'code 201211232155-K4O4');
is($rpt->{conditions1}, undef, 'conditions1 201211232155-K4O4');
is($rpt->{conditions2}, undef, 'conditions2 201211232155-K4O4');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211232155-K4O4');
is($rpt->{day}, '23', 'day 201211232155-K4O4');
is($rpt->{dewpoint_c}, '-5', 'dewpoint_c 201211232155-K4O4');
is($rpt->{dewpoint_f}, '23', 'dewpoint_f 201211232155-K4O4');
is($rpt->{error}, undef, 'error 201211232155-K4O4');
is($rpt->{errortext}, undef, 'errortext 201211232155-K4O4');
is($rpt->{eventbe}, undef, 'eventbe 201211232155-K4O4');
is($rpt->{heat_index_c}, '24', 'heat_index_c 201211232155-K4O4');
is($rpt->{heat_index_f}, '75', 'heat_index_f 201211232155-K4O4');
is($rpt->{http}, undef, 'http 201211232155-K4O4');
is($rpt->{intensity}, undef, 'intensity 201211232155-K4O4');
is($rpt->{maintenance}, undef, 'maintenance 201211232155-K4O4');
is($rpt->{obs}, '2012/11/23 21:55 K4O4 232155Z AUTO 36012G15KT 10SM CLR 16/M05 A3036 RMK AO2 ', 'obs 201211232155-K4O4');
is($rpt->{precipslr}, undef, 'precipslr 201211232155-K4O4');
is($rpt->{pressure_inhg}, '30.36', 'pressure_inhg 201211232155-K4O4');
is($rpt->{pressure_kgcm}, '1.048379376', 'pressure_kgcm 201211232155-K4O4');
is($rpt->{pressure_lbin}, '14.91143544', 'pressure_lbin 201211232155-K4O4');
is($rpt->{pressure_mb}, '1028', 'pressure_mb 201211232155-K4O4');
is($rpt->{pressure_mmhg}, '771', 'pressure_mmhg 201211232155-K4O4');
is($rpt->{ptemperature}, undef, 'ptemperature 201211232155-K4O4');
is($rpt->{relative_humidity}, '23', 'relative_humidity 201211232155-K4O4');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211232155-K4O4');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211232155-K4O4');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211232155-K4O4');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211232155-K4O4');
is($rpt->{slp_mb}, undef, 'slp_mb 201211232155-K4O4');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211232155-K4O4');
is($rpt->{station_type}, 'Automated', 'station_type 201211232155-K4O4');
is($rpt->{storm}, undef, 'storm 201211232155-K4O4');
is($rpt->{temperature_c}, '16', 'temperature_c 201211232155-K4O4');
is($rpt->{temperature_f}, '61', 'temperature_f 201211232155-K4O4');
is($rpt->{templateout}, undef, 'templateout 201211232155-K4O4');
is($rpt->{tfile}, undef, 'tfile 201211232155-K4O4');
is($rpt->{thpressure}, undef, 'thpressure 201211232155-K4O4');
is($rpt->{time}, '2155', 'time 201211232155-K4O4');
is($rpt->{visibility_km}, '16', 'visibility_km 201211232155-K4O4');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211232155-K4O4');
is($rpt->{windchill_c}, undef, 'windchill_c 201211232155-K4O4');
is($rpt->{windchill_f}, undef, 'windchill_f 201211232155-K4O4');
is($rpt->{winddir}, '360', 'winddir 201211232155-K4O4');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211232155-K4O4');
is($rpt->{windgustkmh}, '28', 'windgustkmh 201211232155-K4O4');
is($rpt->{windgustkts}, '15', 'windgustkts 201211232155-K4O4');
is($rpt->{windgustmph}, '17', 'windgustmph 201211232155-K4O4');
is($rpt->{windspeedkmh}, '22', 'windspeedkmh 201211232155-K4O4');
is($rpt->{windspeedkts}, '12', 'windspeedkts 201211232155-K4O4');
is($rpt->{windspeedmph}, '14', 'windspeedmph 201211232155-K4O4');
