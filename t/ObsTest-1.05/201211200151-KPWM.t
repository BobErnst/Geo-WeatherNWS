#!perl -T

use strict;
use warnings;

# Test 201211200151-KPWM
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:51 KPWM 200151Z 29003KT 10SM CLR M01/M02 A3033 RMK AO2 SLP273 T10111022 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:51 KPWM 200151Z 29003KT 10SM CLR M01/M02 A3033 RMK AO2 SLP273 T10111022 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211200151-KPWM');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211200151-KPWM');
is($rpt->{code}, 'KPWM', 'code 201211200151-KPWM');
is($rpt->{conditions1}, undef, 'conditions1 201211200151-KPWM');
is($rpt->{conditions2}, undef, 'conditions2 201211200151-KPWM');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211200151-KPWM');
is($rpt->{day}, '20', 'day 201211200151-KPWM');
is($rpt->{dewpoint_c}, '-2', 'dewpoint_c 201211200151-KPWM');
is($rpt->{dewpoint_f}, '28', 'dewpoint_f 201211200151-KPWM');
is($rpt->{error}, undef, 'error 201211200151-KPWM');
is($rpt->{errortext}, undef, 'errortext 201211200151-KPWM');
is($rpt->{eventbe}, undef, 'eventbe 201211200151-KPWM');
is($rpt->{heat_index_c}, '73', 'heat_index_c 201211200151-KPWM');
is($rpt->{heat_index_f}, '163', 'heat_index_f 201211200151-KPWM');
is($rpt->{http}, undef, 'http 201211200151-KPWM');
is($rpt->{intensity}, undef, 'intensity 201211200151-KPWM');
is($rpt->{maintenance}, undef, 'maintenance 201211200151-KPWM');
is($rpt->{obs}, '2012/11/20 01:51 KPWM 200151Z 29003KT 10SM CLR M01/M02 A3033 RMK AO2 SLP273 T10111022 ', 'obs 201211200151-KPWM');
is($rpt->{precipslr}, undef, 'precipslr 201211200151-KPWM');
is($rpt->{pressure_inhg}, '30.33', 'pressure_inhg 201211200151-KPWM');
is($rpt->{pressure_kgcm}, '1.047343428', 'pressure_kgcm 201211200151-KPWM');
is($rpt->{pressure_lbin}, '14.89670082', 'pressure_lbin 201211200151-KPWM');
is($rpt->{pressure_mb}, '1027', 'pressure_mb 201211200151-KPWM');
is($rpt->{pressure_mmhg}, '770', 'pressure_mmhg 201211200151-KPWM');
is($rpt->{ptemperature}, 'T10111022', 'ptemperature 201211200151-KPWM');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211200151-KPWM');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1027.3','T10111022'], 'remark_arrayref 201211200151-KPWM');
is($rpt->{slp_inhg}, '30.33', 'slp_inhg 201211200151-KPWM');
is($rpt->{slp_kgcm}, '1.047558356', 'slp_kgcm 201211200151-KPWM');
is($rpt->{slp_lbin}, '14.89975374', 'slp_lbin 201211200151-KPWM');
is($rpt->{slp_mb}, '1027', 'slp_mb 201211200151-KPWM');
is($rpt->{slp_mmhg}, '771', 'slp_mmhg 201211200151-KPWM');
is($rpt->{station_type}, 'Automated', 'station_type 201211200151-KPWM');
is($rpt->{storm}, undef, 'storm 201211200151-KPWM');
is($rpt->{temperature_c}, '-1', 'temperature_c 201211200151-KPWM');
is($rpt->{temperature_f}, '30', 'temperature_f 201211200151-KPWM');
is($rpt->{templateout}, undef, 'templateout 201211200151-KPWM');
is($rpt->{tfile}, undef, 'tfile 201211200151-KPWM');
is($rpt->{thpressure}, undef, 'thpressure 201211200151-KPWM');
is($rpt->{time}, '0151', 'time 201211200151-KPWM');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200151-KPWM');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200151-KPWM');
is($rpt->{windchill_c}, undef, 'windchill_c 201211200151-KPWM');
is($rpt->{windchill_f}, undef, 'windchill_f 201211200151-KPWM');
is($rpt->{winddir}, '290', 'winddir 201211200151-KPWM');
is($rpt->{winddirtext}, 'West', 'winddirtext 201211200151-KPWM');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200151-KPWM');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200151-KPWM');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200151-KPWM');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211200151-KPWM');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211200151-KPWM');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211200151-KPWM');
