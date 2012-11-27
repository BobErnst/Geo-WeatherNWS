#!perl -T

use strict;
use warnings;

# Test 201211210354-KRIC
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:54 KRIC 210354Z 07004KT 10SM FEW032 SCT170 08/06 A3012 RMK AO2 SLP203 T00830056 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:54 KRIC 210354Z 07004KT 10SM FEW032 SCT170 08/06 A3012 RMK AO2 SLP203 T00830056 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Partly Cloudy', 'cloudcover 201211210354-KRIC');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW032','SCT170'], 'cloudlevel_arrayref 201211210354-KRIC');
is($rpt->{code}, 'KRIC', 'code 201211210354-KRIC');
is($rpt->{conditions1}, undef, 'conditions1 201211210354-KRIC');
is($rpt->{conditions2}, undef, 'conditions2 201211210354-KRIC');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211210354-KRIC');
is($rpt->{day}, '21', 'day 201211210354-KRIC');
is($rpt->{dewpoint_c}, '06', 'dewpoint_c 201211210354-KRIC');
is($rpt->{dewpoint_f}, '43', 'dewpoint_f 201211210354-KRIC');
is($rpt->{error}, undef, 'error 201211210354-KRIC');
is($rpt->{errortext}, undef, 'errortext 201211210354-KRIC');
is($rpt->{eventbe}, undef, 'eventbe 201211210354-KRIC');
is($rpt->{heat_index_c}, '35', 'heat_index_c 201211210354-KRIC');
is($rpt->{heat_index_f}, '95', 'heat_index_f 201211210354-KRIC');
is($rpt->{http}, undef, 'http 201211210354-KRIC');
is($rpt->{intensity}, undef, 'intensity 201211210354-KRIC');
is($rpt->{maintenance}, undef, 'maintenance 201211210354-KRIC');
is($rpt->{obs}, '2012/11/21 03:54 KRIC 210354Z 07004KT 10SM FEW032 SCT170 08/06 A3012 RMK AO2 SLP203 T00830056 ', 'obs 201211210354-KRIC');
is($rpt->{precipslr}, undef, 'precipslr 201211210354-KRIC');
is($rpt->{pressure_inhg}, '30.12', 'pressure_inhg 201211210354-KRIC');
is($rpt->{pressure_kgcm}, '1.040091792', 'pressure_kgcm 201211210354-KRIC');
is($rpt->{pressure_lbin}, '14.79355848', 'pressure_lbin 201211210354-KRIC');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210354-KRIC');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210354-KRIC');
is($rpt->{ptemperature}, 'T00830056', 'ptemperature 201211210354-KRIC');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211210354-KRIC');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1020.3','T00830056'], 'remark_arrayref 201211210354-KRIC');
is($rpt->{slp_inhg}, '30.12', 'slp_inhg 201211210354-KRIC');
is($rpt->{slp_kgcm}, '1.040420316', 'slp_kgcm 201211210354-KRIC');
is($rpt->{slp_lbin}, '14.79822714', 'slp_lbin 201211210354-KRIC');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211210354-KRIC');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211210354-KRIC');
is($rpt->{station_type}, 'Automated', 'station_type 201211210354-KRIC');
is($rpt->{storm}, undef, 'storm 201211210354-KRIC');
is($rpt->{temperature_c}, '08', 'temperature_c 201211210354-KRIC');
is($rpt->{temperature_f}, '46', 'temperature_f 201211210354-KRIC');
is($rpt->{templateout}, undef, 'templateout 201211210354-KRIC');
is($rpt->{tfile}, undef, 'tfile 201211210354-KRIC');
is($rpt->{thpressure}, undef, 'thpressure 201211210354-KRIC');
is($rpt->{time}, '0354', 'time 201211210354-KRIC');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210354-KRIC');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210354-KRIC');
is($rpt->{windchill_c}, '7', 'windchill_c 201211210354-KRIC');
is($rpt->{windchill_f}, '44', 'windchill_f 201211210354-KRIC');
is($rpt->{winddir}, '70', 'winddir 201211210354-KRIC');
is($rpt->{winddirtext}, 'East', 'winddirtext 201211210354-KRIC');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210354-KRIC');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210354-KRIC');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210354-KRIC');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211210354-KRIC');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211210354-KRIC');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211210354-KRIC');
