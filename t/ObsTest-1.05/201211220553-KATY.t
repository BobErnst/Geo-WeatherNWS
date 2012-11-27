#!perl -T

use strict;
use warnings;

# Test 201211220553-KATY
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 05:53 KATY 220553Z AUTO 20008KT 10SM CLR 07/M01 A2958 RMK AO2 SLP023 T00721011 10122 20056 401721017 58012 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 05:53 KATY 220553Z AUTO 20008KT 10SM CLR 07/M01 A2958 RMK AO2 SLP023 T00721011 10122 20056 401721017 58012 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220553-KATY');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220553-KATY');
is($rpt->{code}, 'KATY', 'code 201211220553-KATY');
is($rpt->{conditions1}, undef, 'conditions1 201211220553-KATY');
is($rpt->{conditions2}, undef, 'conditions2 201211220553-KATY');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220553-KATY');
is($rpt->{day}, '22', 'day 201211220553-KATY');
is($rpt->{dewpoint_c}, '-1', 'dewpoint_c 201211220553-KATY');
is($rpt->{dewpoint_f}, '30', 'dewpoint_f 201211220553-KATY');
is($rpt->{error}, undef, 'error 201211220553-KATY');
is($rpt->{errortext}, undef, 'errortext 201211220553-KATY');
is($rpt->{eventbe}, undef, 'eventbe 201211220553-KATY');
is($rpt->{heat_index_c}, '46', 'heat_index_c 201211220553-KATY');
is($rpt->{heat_index_f}, '114', 'heat_index_f 201211220553-KATY');
is($rpt->{http}, undef, 'http 201211220553-KATY');
is($rpt->{intensity}, undef, 'intensity 201211220553-KATY');
is($rpt->{maintenance}, undef, 'maintenance 201211220553-KATY');
is($rpt->{obs}, '2012/11/22 05:53 KATY 220553Z AUTO 20008KT 10SM CLR 07/M01 A2958 RMK AO2 SLP023 T00721011 10122 20056 401721017 58012 ', 'obs 201211220553-KATY');
is($rpt->{precipslr}, undef, 'precipslr 201211220553-KATY');
is($rpt->{pressure_inhg}, '29.58', 'pressure_inhg 201211220553-KATY');
is($rpt->{pressure_kgcm}, '1.021444728', 'pressure_kgcm 201211220553-KATY');
is($rpt->{pressure_lbin}, '14.52833532', 'pressure_lbin 201211220553-KATY');
is($rpt->{pressure_mb}, '1002', 'pressure_mb 201211220553-KATY');
is($rpt->{pressure_mmhg}, '751', 'pressure_mmhg 201211220553-KATY');
is($rpt->{ptemperature}, 'T00721011', 'ptemperature 201211220553-KATY');
is($rpt->{relative_humidity}, '57', 'relative_humidity 201211220553-KATY');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1002.3','T00721011','10122','20056','401721017','58012'], 'remark_arrayref 201211220553-KATY');
is($rpt->{slp_inhg}, '29.59', 'slp_inhg 201211220553-KATY');
is($rpt->{slp_kgcm}, '1.022065356', 'slp_kgcm 201211220553-KATY');
is($rpt->{slp_lbin}, '14.53715874', 'slp_lbin 201211220553-KATY');
is($rpt->{slp_mb}, '1002', 'slp_mb 201211220553-KATY');
is($rpt->{slp_mmhg}, '752', 'slp_mmhg 201211220553-KATY');
is($rpt->{station_type}, 'Automated', 'station_type 201211220553-KATY');
is($rpt->{storm}, undef, 'storm 201211220553-KATY');
is($rpt->{temperature_c}, '07', 'temperature_c 201211220553-KATY');
is($rpt->{temperature_f}, '45', 'temperature_f 201211220553-KATY');
is($rpt->{templateout}, undef, 'templateout 201211220553-KATY');
is($rpt->{tfile}, undef, 'tfile 201211220553-KATY');
is($rpt->{thpressure}, '58012', 'thpressure 201211220553-KATY');
is($rpt->{time}, '0553', 'time 201211220553-KATY');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220553-KATY');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220553-KATY');
is($rpt->{windchill_c}, '4', 'windchill_c 201211220553-KATY');
is($rpt->{windchill_f}, '40', 'windchill_f 201211220553-KATY');
is($rpt->{winddir}, '200', 'winddir 201211220553-KATY');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211220553-KATY');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220553-KATY');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220553-KATY');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220553-KATY');
is($rpt->{windspeedkmh}, '15', 'windspeedkmh 201211220553-KATY');
is($rpt->{windspeedkts}, '8', 'windspeedkts 201211220553-KATY');
is($rpt->{windspeedmph}, '9', 'windspeedmph 201211220553-KATY');
