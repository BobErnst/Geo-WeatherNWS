#!perl -T

use strict;
use warnings;

# Test 201211210253-KPOU
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:53 KPOU 210253Z 00000KT 9SM CLR M01/M03 A3015 RMK AO2 SLP209 T10111033 50002 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:53 KPOU 210253Z 00000KT 9SM CLR M01/M03 A3015 RMK AO2 SLP209 T10111033 50002 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210253-KPOU');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210253-KPOU');
is($rpt->{code}, 'KPOU', 'code 201211210253-KPOU');
is($rpt->{conditions1}, undef, 'conditions1 201211210253-KPOU');
is($rpt->{conditions2}, undef, 'conditions2 201211210253-KPOU');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210253-KPOU');
is($rpt->{day}, '21', 'day 201211210253-KPOU');
is($rpt->{dewpoint_c}, '-3', 'dewpoint_c 201211210253-KPOU');
is($rpt->{dewpoint_f}, '27', 'dewpoint_f 201211210253-KPOU');
is($rpt->{error}, undef, 'error 201211210253-KPOU');
is($rpt->{errortext}, undef, 'errortext 201211210253-KPOU');
is($rpt->{eventbe}, undef, 'eventbe 201211210253-KPOU');
is($rpt->{heat_index_c}, '77', 'heat_index_c 201211210253-KPOU');
is($rpt->{heat_index_f}, '170', 'heat_index_f 201211210253-KPOU');
is($rpt->{http}, undef, 'http 201211210253-KPOU');
is($rpt->{intensity}, undef, 'intensity 201211210253-KPOU');
is($rpt->{maintenance}, undef, 'maintenance 201211210253-KPOU');
is($rpt->{obs}, '2012/11/21 02:53 KPOU 210253Z 00000KT 9SM CLR M01/M03 A3015 RMK AO2 SLP209 T10111033 50002 ', 'obs 201211210253-KPOU');
is($rpt->{precipslr}, undef, 'precipslr 201211210253-KPOU');
is($rpt->{pressure_inhg}, '30.15', 'pressure_inhg 201211210253-KPOU');
is($rpt->{pressure_kgcm}, '1.04112774', 'pressure_kgcm 201211210253-KPOU');
is($rpt->{pressure_lbin}, '14.8082931', 'pressure_lbin 201211210253-KPOU');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210253-KPOU');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210253-KPOU');
is($rpt->{ptemperature}, 'T10111033', 'ptemperature 201211210253-KPOU');
is($rpt->{relative_humidity}, '86', 'relative_humidity 201211210253-KPOU');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1020.9','T10111033','50002'], 'remark_arrayref 201211210253-KPOU');
is($rpt->{slp_inhg}, '30.14', 'slp_inhg 201211210253-KPOU');
is($rpt->{slp_kgcm}, '1.041032148', 'slp_kgcm 201211210253-KPOU');
is($rpt->{slp_lbin}, '14.80692942', 'slp_lbin 201211210253-KPOU');
is($rpt->{slp_mb}, '1021', 'slp_mb 201211210253-KPOU');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210253-KPOU');
is($rpt->{station_type}, 'Automated', 'station_type 201211210253-KPOU');
is($rpt->{storm}, undef, 'storm 201211210253-KPOU');
is($rpt->{temperature_c}, '-1', 'temperature_c 201211210253-KPOU');
is($rpt->{temperature_f}, '30', 'temperature_f 201211210253-KPOU');
is($rpt->{templateout}, undef, 'templateout 201211210253-KPOU');
is($rpt->{tfile}, undef, 'tfile 201211210253-KPOU');
is($rpt->{thpressure}, '50002', 'thpressure 201211210253-KPOU');
is($rpt->{time}, '0253', 'time 201211210253-KPOU');
is($rpt->{visibility_km}, '14', 'visibility_km 201211210253-KPOU');
is($rpt->{visibility_mi}, '9', 'visibility_mi 201211210253-KPOU');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210253-KPOU');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210253-KPOU');
is($rpt->{winddir}, '0', 'winddir 201211210253-KPOU');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210253-KPOU');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210253-KPOU');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210253-KPOU');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210253-KPOU');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210253-KPOU');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210253-KPOU');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210253-KPOU');
