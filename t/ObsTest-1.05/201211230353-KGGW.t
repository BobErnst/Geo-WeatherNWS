#!perl -T

use strict;
use warnings;

# Test 201211230353-KGGW
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 03:53 KGGW 230353Z AUTO 29004KT 10SM CLR M13/M15 A3051 RMK AO2 SLP381 T11281150 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 03:53 KGGW 230353Z AUTO 29004KT 10SM CLR M13/M15 A3051 RMK AO2 SLP381 T11281150 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211230353-KGGW');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211230353-KGGW');
is($rpt->{code}, 'KGGW', 'code 201211230353-KGGW');
is($rpt->{conditions1}, undef, 'conditions1 201211230353-KGGW');
is($rpt->{conditions2}, undef, 'conditions2 201211230353-KGGW');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211230353-KGGW');
is($rpt->{day}, '23', 'day 201211230353-KGGW');
is($rpt->{dewpoint_c}, '-15', 'dewpoint_c 201211230353-KGGW');
is($rpt->{dewpoint_f}, '5', 'dewpoint_f 201211230353-KGGW');
is($rpt->{error}, undef, 'error 201211230353-KGGW');
is($rpt->{errortext}, undef, 'errortext 201211230353-KGGW');
is($rpt->{eventbe}, undef, 'eventbe 201211230353-KGGW');
is($rpt->{heat_index_c}, '169', 'heat_index_c 201211230353-KGGW');
is($rpt->{heat_index_f}, '336', 'heat_index_f 201211230353-KGGW');
is($rpt->{http}, undef, 'http 201211230353-KGGW');
is($rpt->{intensity}, undef, 'intensity 201211230353-KGGW');
is($rpt->{maintenance}, undef, 'maintenance 201211230353-KGGW');
is($rpt->{obs}, '2012/11/23 03:53 KGGW 230353Z AUTO 29004KT 10SM CLR M13/M15 A3051 RMK AO2 SLP381 T11281150 ', 'obs 201211230353-KGGW');
is($rpt->{precipslr}, undef, 'precipslr 201211230353-KGGW');
is($rpt->{pressure_inhg}, '30.51', 'pressure_inhg 201211230353-KGGW');
is($rpt->{pressure_kgcm}, '1.053559116', 'pressure_kgcm 201211230353-KGGW');
is($rpt->{pressure_lbin}, '14.98510854', 'pressure_lbin 201211230353-KGGW');
is($rpt->{pressure_mb}, '1033', 'pressure_mb 201211230353-KGGW');
is($rpt->{pressure_mmhg}, '775', 'pressure_mmhg 201211230353-KGGW');
is($rpt->{ptemperature}, 'T11281150', 'ptemperature 201211230353-KGGW');
is($rpt->{relative_humidity}, '85', 'relative_humidity 201211230353-KGGW');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1038.1','T11281150'], 'remark_arrayref 201211230353-KGGW');
is($rpt->{slp_inhg}, '30.65', 'slp_inhg 201211230353-KGGW');
is($rpt->{slp_kgcm}, '1.058571332', 'slp_kgcm 201211230353-KGGW');
is($rpt->{slp_lbin}, '15.05639478', 'slp_lbin 201211230353-KGGW');
is($rpt->{slp_mb}, '1038', 'slp_mb 201211230353-KGGW');
is($rpt->{slp_mmhg}, '779', 'slp_mmhg 201211230353-KGGW');
is($rpt->{station_type}, 'Automated', 'station_type 201211230353-KGGW');
is($rpt->{storm}, undef, 'storm 201211230353-KGGW');
is($rpt->{temperature_c}, '-13', 'temperature_c 201211230353-KGGW');
is($rpt->{temperature_f}, '9', 'temperature_f 201211230353-KGGW');
is($rpt->{templateout}, undef, 'templateout 201211230353-KGGW');
is($rpt->{tfile}, undef, 'tfile 201211230353-KGGW');
is($rpt->{thpressure}, undef, 'thpressure 201211230353-KGGW');
is($rpt->{time}, '0353', 'time 201211230353-KGGW');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230353-KGGW');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230353-KGGW');
is($rpt->{windchill_c}, '-18', 'windchill_c 201211230353-KGGW');
is($rpt->{windchill_f}, '-0', 'windchill_f 201211230353-KGGW');
is($rpt->{winddir}, '290', 'winddir 201211230353-KGGW');
is($rpt->{winddirtext}, 'West', 'winddirtext 201211230353-KGGW');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230353-KGGW');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230353-KGGW');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230353-KGGW');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211230353-KGGW');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211230353-KGGW');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211230353-KGGW');
