#!perl -T

use strict;
use warnings;

# Test 201211210253-KFWN
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:53 KFWN 210253Z AUTO 00000KT 10SM CLR M01/M03 A3015 RMK AO2 SLP213 T10061028 53002 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:53 KFWN 210253Z AUTO 00000KT 10SM CLR M01/M03 A3015 RMK AO2 SLP213 T10061028 53002 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210253-KFWN');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210253-KFWN');
is($rpt->{code}, 'KFWN', 'code 201211210253-KFWN');
is($rpt->{conditions1}, undef, 'conditions1 201211210253-KFWN');
is($rpt->{conditions2}, undef, 'conditions2 201211210253-KFWN');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210253-KFWN');
is($rpt->{day}, '21', 'day 201211210253-KFWN');
is($rpt->{dewpoint_c}, '-3', 'dewpoint_c 201211210253-KFWN');
is($rpt->{dewpoint_f}, '27', 'dewpoint_f 201211210253-KFWN');
is($rpt->{error}, undef, 'error 201211210253-KFWN');
is($rpt->{errortext}, undef, 'errortext 201211210253-KFWN');
is($rpt->{eventbe}, undef, 'eventbe 201211210253-KFWN');
is($rpt->{heat_index_c}, '77', 'heat_index_c 201211210253-KFWN');
is($rpt->{heat_index_f}, '170', 'heat_index_f 201211210253-KFWN');
is($rpt->{http}, undef, 'http 201211210253-KFWN');
is($rpt->{intensity}, undef, 'intensity 201211210253-KFWN');
is($rpt->{maintenance}, undef, 'maintenance 201211210253-KFWN');
is($rpt->{obs}, '2012/11/21 02:53 KFWN 210253Z AUTO 00000KT 10SM CLR M01/M03 A3015 RMK AO2 SLP213 T10061028 53002 ', 'obs 201211210253-KFWN');
is($rpt->{precipslr}, undef, 'precipslr 201211210253-KFWN');
is($rpt->{pressure_inhg}, '30.15', 'pressure_inhg 201211210253-KFWN');
is($rpt->{pressure_kgcm}, '1.04112774', 'pressure_kgcm 201211210253-KFWN');
is($rpt->{pressure_lbin}, '14.8082931', 'pressure_lbin 201211210253-KFWN');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210253-KFWN');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210253-KFWN');
is($rpt->{ptemperature}, 'T10061028', 'ptemperature 201211210253-KFWN');
is($rpt->{relative_humidity}, '86', 'relative_humidity 201211210253-KFWN');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1021.3','T10061028','53002'], 'remark_arrayref 201211210253-KFWN');
is($rpt->{slp_inhg}, '30.15', 'slp_inhg 201211210253-KFWN');
is($rpt->{slp_kgcm}, '1.041440036', 'slp_kgcm 201211210253-KFWN');
is($rpt->{slp_lbin}, '14.81273094', 'slp_lbin 201211210253-KFWN');
is($rpt->{slp_mb}, '1021', 'slp_mb 201211210253-KFWN');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210253-KFWN');
is($rpt->{station_type}, 'Automated', 'station_type 201211210253-KFWN');
is($rpt->{storm}, undef, 'storm 201211210253-KFWN');
is($rpt->{temperature_c}, '-1', 'temperature_c 201211210253-KFWN');
is($rpt->{temperature_f}, '30', 'temperature_f 201211210253-KFWN');
is($rpt->{templateout}, undef, 'templateout 201211210253-KFWN');
is($rpt->{tfile}, undef, 'tfile 201211210253-KFWN');
is($rpt->{thpressure}, '53002', 'thpressure 201211210253-KFWN');
is($rpt->{time}, '0253', 'time 201211210253-KFWN');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210253-KFWN');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210253-KFWN');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210253-KFWN');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210253-KFWN');
is($rpt->{winddir}, '0', 'winddir 201211210253-KFWN');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210253-KFWN');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210253-KFWN');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210253-KFWN');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210253-KFWN');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210253-KFWN');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210253-KFWN');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210253-KFWN');
