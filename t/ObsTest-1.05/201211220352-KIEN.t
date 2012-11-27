#!perl -T

use strict;
use warnings;

# Test 201211220352-KIEN
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 03:52 KIEN 220352Z AUTO 28006KT 10SM CLR 12/M07 A2976 RMK AO2 SLP070 T01171067 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 03:52 KIEN 220352Z AUTO 28006KT 10SM CLR 12/M07 A2976 RMK AO2 SLP070 T01171067 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220352-KIEN');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220352-KIEN');
is($rpt->{code}, 'KIEN', 'code 201211220352-KIEN');
is($rpt->{conditions1}, undef, 'conditions1 201211220352-KIEN');
is($rpt->{conditions2}, undef, 'conditions2 201211220352-KIEN');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220352-KIEN');
is($rpt->{day}, '22', 'day 201211220352-KIEN');
is($rpt->{dewpoint_c}, '-7', 'dewpoint_c 201211220352-KIEN');
is($rpt->{dewpoint_f}, '19', 'dewpoint_f 201211220352-KIEN');
is($rpt->{error}, undef, 'error 201211220352-KIEN');
is($rpt->{errortext}, undef, 'errortext 201211220352-KIEN');
is($rpt->{eventbe}, undef, 'eventbe 201211220352-KIEN');
is($rpt->{heat_index_c}, '27', 'heat_index_c 201211220352-KIEN');
is($rpt->{heat_index_f}, '80', 'heat_index_f 201211220352-KIEN');
is($rpt->{http}, undef, 'http 201211220352-KIEN');
is($rpt->{intensity}, undef, 'intensity 201211220352-KIEN');
is($rpt->{maintenance}, undef, 'maintenance 201211220352-KIEN');
is($rpt->{obs}, '2012/11/22 03:52 KIEN 220352Z AUTO 28006KT 10SM CLR 12/M07 A2976 RMK AO2 SLP070 T01171067 ', 'obs 201211220352-KIEN');
is($rpt->{precipslr}, undef, 'precipslr 201211220352-KIEN');
is($rpt->{pressure_inhg}, '29.76', 'pressure_inhg 201211220352-KIEN');
is($rpt->{pressure_kgcm}, '1.027660416', 'pressure_kgcm 201211220352-KIEN');
is($rpt->{pressure_lbin}, '14.61674304', 'pressure_lbin 201211220352-KIEN');
is($rpt->{pressure_mb}, '1008', 'pressure_mb 201211220352-KIEN');
is($rpt->{pressure_mmhg}, '756', 'pressure_mmhg 201211220352-KIEN');
is($rpt->{ptemperature}, 'T01171067', 'ptemperature 201211220352-KIEN');
is($rpt->{relative_humidity}, '26', 'relative_humidity 201211220352-KIEN');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2',1007,'T01171067'], 'remark_arrayref 201211220352-KIEN');
is($rpt->{slp_inhg}, '29.73', 'slp_inhg 201211220352-KIEN');
is($rpt->{slp_kgcm}, '1.02685804', 'slp_kgcm 201211220352-KIEN');
is($rpt->{slp_lbin}, '14.6053266', 'slp_lbin 201211220352-KIEN');
is($rpt->{slp_mb}, '1007', 'slp_mb 201211220352-KIEN');
is($rpt->{slp_mmhg}, '755', 'slp_mmhg 201211220352-KIEN');
is($rpt->{station_type}, 'Automated', 'station_type 201211220352-KIEN');
is($rpt->{storm}, undef, 'storm 201211220352-KIEN');
is($rpt->{temperature_c}, '12', 'temperature_c 201211220352-KIEN');
is($rpt->{temperature_f}, '54', 'temperature_f 201211220352-KIEN');
is($rpt->{templateout}, undef, 'templateout 201211220352-KIEN');
is($rpt->{tfile}, undef, 'tfile 201211220352-KIEN');
is($rpt->{thpressure}, undef, 'thpressure 201211220352-KIEN');
is($rpt->{time}, '0352', 'time 201211220352-KIEN');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220352-KIEN');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220352-KIEN');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220352-KIEN');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220352-KIEN');
is($rpt->{winddir}, '280', 'winddir 201211220352-KIEN');
is($rpt->{winddirtext}, 'West', 'winddirtext 201211220352-KIEN');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220352-KIEN');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220352-KIEN');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220352-KIEN');
is($rpt->{windspeedkmh}, '11', 'windspeedkmh 201211220352-KIEN');
is($rpt->{windspeedkts}, '6', 'windspeedkts 201211220352-KIEN');
is($rpt->{windspeedmph}, '7', 'windspeedmph 201211220352-KIEN');
