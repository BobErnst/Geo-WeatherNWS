#!perl -T

use strict;
use warnings;

# Test 201211210253-K6R6
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:53 K6R6 210253Z AUTO 11006KT 21/12 A3019 RMK AO2 SLP198 T02060117 52012 PWINO TSNO $  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:53 K6R6 210253Z AUTO 11006KT 21/12 A3019 RMK AO2 SLP198 T02060117 52012 PWINO TSNO $  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211210253-K6R6');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201211210253-K6R6');
is($rpt->{code}, 'K6R6', 'code 201211210253-K6R6');
is($rpt->{conditions1}, undef, 'conditions1 201211210253-K6R6');
is($rpt->{conditions2}, undef, 'conditions2 201211210253-K6R6');
is($rpt->{conditionstext}, undef, 'conditionstext 201211210253-K6R6');
is($rpt->{day}, '21', 'day 201211210253-K6R6');
is($rpt->{dewpoint_c}, '12', 'dewpoint_c 201211210253-K6R6');
is($rpt->{dewpoint_f}, '54', 'dewpoint_f 201211210253-K6R6');
is($rpt->{error}, undef, 'error 201211210253-K6R6');
is($rpt->{errortext}, undef, 'errortext 201211210253-K6R6');
is($rpt->{eventbe}, undef, 'eventbe 201211210253-K6R6');
is($rpt->{heat_index_c}, '25', 'heat_index_c 201211210253-K6R6');
is($rpt->{heat_index_f}, '76', 'heat_index_f 201211210253-K6R6');
is($rpt->{http}, undef, 'http 201211210253-K6R6');
is($rpt->{intensity}, undef, 'intensity 201211210253-K6R6');
is($rpt->{maintenance}, '$', 'maintenance 201211210253-K6R6');
is($rpt->{obs}, '2012/11/21 02:53 K6R6 210253Z AUTO 11006KT 21/12 A3019 RMK AO2 SLP198 T02060117 52012 PWINO TSNO $  ', 'obs 201211210253-K6R6');
is($rpt->{precipslr}, undef, 'precipslr 201211210253-K6R6');
is($rpt->{pressure_inhg}, '30.19', 'pressure_inhg 201211210253-K6R6');
is($rpt->{pressure_kgcm}, '1.042509004', 'pressure_kgcm 201211210253-K6R6');
is($rpt->{pressure_lbin}, '14.82793926', 'pressure_lbin 201211210253-K6R6');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211210253-K6R6');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211210253-K6R6');
is($rpt->{ptemperature}, 'T02060117', 'ptemperature 201211210253-K6R6');
is($rpt->{relative_humidity}, '56', 'relative_humidity 201211210253-K6R6');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1019.8','T02060117','52012','PWINO','TSNO','$'], 'remark_arrayref 201211210253-K6R6');
is($rpt->{slp_inhg}, '30.11', 'slp_inhg 201211210253-K6R6');
is($rpt->{slp_kgcm}, '1.039910456', 'slp_kgcm 201211210253-K6R6');
is($rpt->{slp_lbin}, '14.79097524', 'slp_lbin 201211210253-K6R6');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211210253-K6R6');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211210253-K6R6');
is($rpt->{station_type}, 'Automated', 'station_type 201211210253-K6R6');
is($rpt->{storm}, 'TSNO', 'storm 201211210253-K6R6');
is($rpt->{temperature_c}, '21', 'temperature_c 201211210253-K6R6');
is($rpt->{temperature_f}, '70', 'temperature_f 201211210253-K6R6');
is($rpt->{templateout}, undef, 'templateout 201211210253-K6R6');
is($rpt->{tfile}, undef, 'tfile 201211210253-K6R6');
is($rpt->{thpressure}, '52012', 'thpressure 201211210253-K6R6');
is($rpt->{time}, '0253', 'time 201211210253-K6R6');
is($rpt->{visibility_km}, undef, 'visibility_km 201211210253-K6R6');
is($rpt->{visibility_mi}, undef, 'visibility_mi 201211210253-K6R6');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210253-K6R6');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210253-K6R6');
is($rpt->{winddir}, '110', 'winddir 201211210253-K6R6');
is($rpt->{winddirtext}, 'East', 'winddirtext 201211210253-K6R6');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210253-K6R6');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210253-K6R6');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210253-K6R6');
is($rpt->{windspeedkmh}, '11', 'windspeedkmh 201211210253-K6R6');
is($rpt->{windspeedkts}, '6', 'windspeedkts 201211210253-K6R6');
is($rpt->{windspeedmph}, '7', 'windspeedmph 201211210253-K6R6');
