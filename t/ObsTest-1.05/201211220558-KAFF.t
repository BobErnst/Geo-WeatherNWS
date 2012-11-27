#!perl -T

use strict;
use warnings;

# Test 201211220558-KAFF
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 05:58 KAFF 220558Z AUTO 29007KT 260V360 10SM CLR 11/M21 A2997 RMK AO2 SLP081 T01101208 10161 20081 58007 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 05:58 KAFF 220558Z AUTO 29007KT 260V360 10SM CLR 11/M21 A2997 RMK AO2 SLP081 T01101208 10161 20081 58007 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220558-KAFF');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220558-KAFF');
is($rpt->{code}, 'KAFF', 'code 201211220558-KAFF');
is($rpt->{conditions1}, undef, 'conditions1 201211220558-KAFF');
is($rpt->{conditions2}, undef, 'conditions2 201211220558-KAFF');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220558-KAFF');
is($rpt->{day}, '22', 'day 201211220558-KAFF');
is($rpt->{dewpoint_c}, '-21', 'dewpoint_c 201211220558-KAFF');
is($rpt->{dewpoint_f}, '-6', 'dewpoint_f 201211220558-KAFF');
is($rpt->{error}, undef, 'error 201211220558-KAFF');
is($rpt->{errortext}, undef, 'errortext 201211220558-KAFF');
is($rpt->{eventbe}, undef, 'eventbe 201211220558-KAFF');
is($rpt->{heat_index_c}, '16', 'heat_index_c 201211220558-KAFF');
is($rpt->{heat_index_f}, '60', 'heat_index_f 201211220558-KAFF');
is($rpt->{http}, undef, 'http 201211220558-KAFF');
is($rpt->{intensity}, undef, 'intensity 201211220558-KAFF');
is($rpt->{maintenance}, undef, 'maintenance 201211220558-KAFF');
is($rpt->{obs}, '2012/11/22 05:58 KAFF 220558Z AUTO 29007KT 260V360 10SM CLR 11/M21 A2997 RMK AO2 SLP081 T01101208 10161 20081 58007 ', 'obs 201211220558-KAFF');
is($rpt->{precipslr}, undef, 'precipslr 201211220558-KAFF');
is($rpt->{pressure_inhg}, '29.97', 'pressure_inhg 201211220558-KAFF');
is($rpt->{pressure_kgcm}, '1.034912052', 'pressure_kgcm 201211220558-KAFF');
is($rpt->{pressure_lbin}, '14.71988538', 'pressure_lbin 201211220558-KAFF');
is($rpt->{pressure_mb}, '1015', 'pressure_mb 201211220558-KAFF');
is($rpt->{pressure_mmhg}, '761', 'pressure_mmhg 201211220558-KAFF');
is($rpt->{ptemperature}, 'T01101208', 'ptemperature 201211220558-KAFF');
is($rpt->{relative_humidity}, '9', 'relative_humidity 201211220558-KAFF');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1008.1','T01101208','10161','20081','58007'], 'remark_arrayref 201211220558-KAFF');
is($rpt->{slp_inhg}, '29.76', 'slp_inhg 201211220558-KAFF');
is($rpt->{slp_kgcm}, '1.027979732', 'slp_kgcm 201211220558-KAFF');
is($rpt->{slp_lbin}, '14.62128078', 'slp_lbin 201211220558-KAFF');
is($rpt->{slp_mb}, '1008', 'slp_mb 201211220558-KAFF');
is($rpt->{slp_mmhg}, '756', 'slp_mmhg 201211220558-KAFF');
is($rpt->{station_type}, 'Automated', 'station_type 201211220558-KAFF');
is($rpt->{storm}, undef, 'storm 201211220558-KAFF');
is($rpt->{temperature_c}, '11', 'temperature_c 201211220558-KAFF');
is($rpt->{temperature_f}, '52', 'temperature_f 201211220558-KAFF');
is($rpt->{templateout}, undef, 'templateout 201211220558-KAFF');
is($rpt->{tfile}, undef, 'tfile 201211220558-KAFF');
is($rpt->{thpressure}, '58007', 'thpressure 201211220558-KAFF');
is($rpt->{time}, '0558', 'time 201211220558-KAFF');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220558-KAFF');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220558-KAFF');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220558-KAFF');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220558-KAFF');
is($rpt->{winddir}, '290', 'winddir 201211220558-KAFF');
is($rpt->{winddirtext}, 'West', 'winddirtext 201211220558-KAFF');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220558-KAFF');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220558-KAFF');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220558-KAFF');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211220558-KAFF');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211220558-KAFF');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211220558-KAFF');
