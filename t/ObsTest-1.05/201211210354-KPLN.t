#!perl -T

use strict;
use warnings;

# Test 201211210354-KPLN
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:54 KPLN 210354Z AUTO 00000KT 6SM BR OVC020 05/04 A3014 RMK AO2 SLP213 T00500039 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:54 KPLN 210354Z AUTO 00000KT 6SM BR OVC020 05/04 A3014 RMK AO2 SLP213 T00500039 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210354-KPLN');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC020'], 'cloudlevel_arrayref 201211210354-KPLN');
is($rpt->{code}, 'KPLN', 'code 201211210354-KPLN');
is($rpt->{conditions1}, 'Mist', 'conditions1 201211210354-KPLN');
is($rpt->{conditions2}, undef, 'conditions2 201211210354-KPLN');
is($rpt->{conditionstext}, 'Mist', 'conditionstext 201211210354-KPLN');
is($rpt->{day}, '21', 'day 201211210354-KPLN');
is($rpt->{dewpoint_c}, '04', 'dewpoint_c 201211210354-KPLN');
is($rpt->{dewpoint_f}, '39', 'dewpoint_f 201211210354-KPLN');
is($rpt->{error}, undef, 'error 201211210354-KPLN');
is($rpt->{errortext}, undef, 'errortext 201211210354-KPLN');
is($rpt->{eventbe}, undef, 'eventbe 201211210354-KPLN');
is($rpt->{heat_index_c}, '42', 'heat_index_c 201211210354-KPLN');
is($rpt->{heat_index_f}, '108', 'heat_index_f 201211210354-KPLN');
is($rpt->{http}, undef, 'http 201211210354-KPLN');
is($rpt->{intensity}, undef, 'intensity 201211210354-KPLN');
is($rpt->{maintenance}, undef, 'maintenance 201211210354-KPLN');
is($rpt->{obs}, '2012/11/21 03:54 KPLN 210354Z AUTO 00000KT 6SM BR OVC020 05/04 A3014 RMK AO2 SLP213 T00500039 ', 'obs 201211210354-KPLN');
is($rpt->{precipslr}, undef, 'precipslr 201211210354-KPLN');
is($rpt->{pressure_inhg}, '30.14', 'pressure_inhg 201211210354-KPLN');
is($rpt->{pressure_kgcm}, '1.040782424', 'pressure_kgcm 201211210354-KPLN');
is($rpt->{pressure_lbin}, '14.80338156', 'pressure_lbin 201211210354-KPLN');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210354-KPLN');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210354-KPLN');
is($rpt->{ptemperature}, 'T00500039', 'ptemperature 201211210354-KPLN');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211210354-KPLN');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1021.3','T00500039'], 'remark_arrayref 201211210354-KPLN');
is($rpt->{slp_inhg}, '30.15', 'slp_inhg 201211210354-KPLN');
is($rpt->{slp_kgcm}, '1.041440036', 'slp_kgcm 201211210354-KPLN');
is($rpt->{slp_lbin}, '14.81273094', 'slp_lbin 201211210354-KPLN');
is($rpt->{slp_mb}, '1021', 'slp_mb 201211210354-KPLN');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210354-KPLN');
is($rpt->{station_type}, 'Automated', 'station_type 201211210354-KPLN');
is($rpt->{storm}, undef, 'storm 201211210354-KPLN');
is($rpt->{temperature_c}, '05', 'temperature_c 201211210354-KPLN');
is($rpt->{temperature_f}, '41', 'temperature_f 201211210354-KPLN');
is($rpt->{templateout}, undef, 'templateout 201211210354-KPLN');
is($rpt->{tfile}, undef, 'tfile 201211210354-KPLN');
is($rpt->{thpressure}, undef, 'thpressure 201211210354-KPLN');
is($rpt->{time}, '0354', 'time 201211210354-KPLN');
is($rpt->{visibility_km}, '10', 'visibility_km 201211210354-KPLN');
is($rpt->{visibility_mi}, '6', 'visibility_mi 201211210354-KPLN');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210354-KPLN');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210354-KPLN');
is($rpt->{winddir}, '0', 'winddir 201211210354-KPLN');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210354-KPLN');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210354-KPLN');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210354-KPLN');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210354-KPLN');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210354-KPLN');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210354-KPLN');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210354-KPLN');
