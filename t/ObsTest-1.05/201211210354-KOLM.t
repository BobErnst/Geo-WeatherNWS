#!perl -T

use strict;
use warnings;

# Test 201211210354-KOLM
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:54 KOLM 210354Z 18012KT 10SM FEW060 08/06 A2966 RMK AO2 RAE0259 SLP044 P0000 T00780056 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:54 KOLM 210354Z 18012KT 10SM FEW060 08/06 A2966 RMK AO2 RAE0259 SLP044 P0000 T00780056 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Fair', 'cloudcover 201211210354-KOLM');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW060'], 'cloudlevel_arrayref 201211210354-KOLM');
is($rpt->{code}, 'KOLM', 'code 201211210354-KOLM');
is($rpt->{conditions1}, undef, 'conditions1 201211210354-KOLM');
is($rpt->{conditions2}, undef, 'conditions2 201211210354-KOLM');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211210354-KOLM');
is($rpt->{day}, '21', 'day 201211210354-KOLM');
is($rpt->{dewpoint_c}, '06', 'dewpoint_c 201211210354-KOLM');
is($rpt->{dewpoint_f}, '43', 'dewpoint_f 201211210354-KOLM');
is($rpt->{error}, undef, 'error 201211210354-KOLM');
is($rpt->{errortext}, undef, 'errortext 201211210354-KOLM');
is($rpt->{eventbe}, undef, 'eventbe 201211210354-KOLM');
is($rpt->{heat_index_c}, '35', 'heat_index_c 201211210354-KOLM');
is($rpt->{heat_index_f}, '95', 'heat_index_f 201211210354-KOLM');
is($rpt->{http}, undef, 'http 201211210354-KOLM');
is($rpt->{intensity}, undef, 'intensity 201211210354-KOLM');
is($rpt->{maintenance}, undef, 'maintenance 201211210354-KOLM');
is($rpt->{obs}, '2012/11/21 03:54 KOLM 210354Z 18012KT 10SM FEW060 08/06 A2966 RMK AO2 RAE0259 SLP044 P0000 T00780056 ', 'obs 201211210354-KOLM');
is($rpt->{precipslr}, 'P0000', 'precipslr 201211210354-KOLM');
is($rpt->{pressure_inhg}, '29.66', 'pressure_inhg 201211210354-KOLM');
is($rpt->{pressure_kgcm}, '1.024207256', 'pressure_kgcm 201211210354-KOLM');
is($rpt->{pressure_lbin}, '14.56762764', 'pressure_lbin 201211210354-KOLM');
is($rpt->{pressure_mb}, '1004', 'pressure_mb 201211210354-KOLM');
is($rpt->{pressure_mmhg}, '753', 'pressure_mmhg 201211210354-KOLM');
is($rpt->{ptemperature}, 'T00780056', 'ptemperature 201211210354-KOLM');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211210354-KOLM');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','RAE0259','1004.4','P0000','T00780056'], 'remark_arrayref 201211210354-KOLM');
is($rpt->{slp_inhg}, '29.65', 'slp_inhg 201211210354-KOLM');
is($rpt->{slp_kgcm}, '1.024206768', 'slp_kgcm 201211210354-KOLM');
is($rpt->{slp_lbin}, '14.56761672', 'slp_lbin 201211210354-KOLM');
is($rpt->{slp_mb}, '1004', 'slp_mb 201211210354-KOLM');
is($rpt->{slp_mmhg}, '753', 'slp_mmhg 201211210354-KOLM');
is($rpt->{station_type}, 'Automated', 'station_type 201211210354-KOLM');
is($rpt->{storm}, undef, 'storm 201211210354-KOLM');
is($rpt->{temperature_c}, '08', 'temperature_c 201211210354-KOLM');
is($rpt->{temperature_f}, '46', 'temperature_f 201211210354-KOLM');
is($rpt->{templateout}, undef, 'templateout 201211210354-KOLM');
is($rpt->{tfile}, undef, 'tfile 201211210354-KOLM');
is($rpt->{thpressure}, undef, 'thpressure 201211210354-KOLM');
is($rpt->{time}, '0354', 'time 201211210354-KOLM');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210354-KOLM');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210354-KOLM');
is($rpt->{windchill_c}, '5', 'windchill_c 201211210354-KOLM');
is($rpt->{windchill_f}, '40', 'windchill_f 201211210354-KOLM');
is($rpt->{winddir}, '180', 'winddir 201211210354-KOLM');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210354-KOLM');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210354-KOLM');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210354-KOLM');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210354-KOLM');
is($rpt->{windspeedkmh}, '22', 'windspeedkmh 201211210354-KOLM');
is($rpt->{windspeedkts}, '12', 'windspeedkts 201211210354-KOLM');
is($rpt->{windspeedmph}, '14', 'windspeedmph 201211210354-KOLM');
