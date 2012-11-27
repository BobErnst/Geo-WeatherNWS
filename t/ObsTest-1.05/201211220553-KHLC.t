#!perl -T

use strict;
use warnings;

# Test 201211220553-KHLC
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 05:53 KHLC 220553Z AUTO 22006KT 10SM CLR 12/04 A2979 RMK AO2 SLP078 T01220039 10183 20122 402390061 58012 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 05:53 KHLC 220553Z AUTO 22006KT 10SM CLR 12/04 A2979 RMK AO2 SLP078 T01220039 10183 20122 402390061 58012 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220553-KHLC');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220553-KHLC');
is($rpt->{code}, 'KHLC', 'code 201211220553-KHLC');
is($rpt->{conditions1}, undef, 'conditions1 201211220553-KHLC');
is($rpt->{conditions2}, undef, 'conditions2 201211220553-KHLC');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220553-KHLC');
is($rpt->{day}, '22', 'day 201211220553-KHLC');
is($rpt->{dewpoint_c}, '04', 'dewpoint_c 201211220553-KHLC');
is($rpt->{dewpoint_f}, '39', 'dewpoint_f 201211220553-KHLC');
is($rpt->{error}, undef, 'error 201211220553-KHLC');
is($rpt->{errortext}, undef, 'errortext 201211220553-KHLC');
is($rpt->{eventbe}, undef, 'eventbe 201211220553-KHLC');
is($rpt->{heat_index_c}, '33', 'heat_index_c 201211220553-KHLC');
is($rpt->{heat_index_f}, '92', 'heat_index_f 201211220553-KHLC');
is($rpt->{http}, undef, 'http 201211220553-KHLC');
is($rpt->{intensity}, undef, 'intensity 201211220553-KHLC');
is($rpt->{maintenance}, undef, 'maintenance 201211220553-KHLC');
is($rpt->{obs}, '2012/11/22 05:53 KHLC 220553Z AUTO 22006KT 10SM CLR 12/04 A2979 RMK AO2 SLP078 T01220039 10183 20122 402390061 58012 ', 'obs 201211220553-KHLC');
is($rpt->{precipslr}, undef, 'precipslr 201211220553-KHLC');
is($rpt->{pressure_inhg}, '29.79', 'pressure_inhg 201211220553-KHLC');
is($rpt->{pressure_kgcm}, '1.028696364', 'pressure_kgcm 201211220553-KHLC');
is($rpt->{pressure_lbin}, '14.63147766', 'pressure_lbin 201211220553-KHLC');
is($rpt->{pressure_mb}, '1009', 'pressure_mb 201211220553-KHLC');
is($rpt->{pressure_mmhg}, '757', 'pressure_mmhg 201211220553-KHLC');
is($rpt->{ptemperature}, 'T01220039', 'ptemperature 201211220553-KHLC');
is($rpt->{relative_humidity}, '58', 'relative_humidity 201211220553-KHLC');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1007.8','T01220039','10183','20122','402390061','58012'], 'remark_arrayref 201211220553-KHLC');
is($rpt->{slp_inhg}, '29.76', 'slp_inhg 201211220553-KHLC');
is($rpt->{slp_kgcm}, '1.027673816', 'slp_kgcm 201211220553-KHLC');
is($rpt->{slp_lbin}, '14.61692964', 'slp_lbin 201211220553-KHLC');
is($rpt->{slp_mb}, '1008', 'slp_mb 201211220553-KHLC');
is($rpt->{slp_mmhg}, '756', 'slp_mmhg 201211220553-KHLC');
is($rpt->{station_type}, 'Automated', 'station_type 201211220553-KHLC');
is($rpt->{storm}, undef, 'storm 201211220553-KHLC');
is($rpt->{temperature_c}, '12', 'temperature_c 201211220553-KHLC');
is($rpt->{temperature_f}, '54', 'temperature_f 201211220553-KHLC');
is($rpt->{templateout}, undef, 'templateout 201211220553-KHLC');
is($rpt->{tfile}, undef, 'tfile 201211220553-KHLC');
is($rpt->{thpressure}, '58012', 'thpressure 201211220553-KHLC');
is($rpt->{time}, '0553', 'time 201211220553-KHLC');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220553-KHLC');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220553-KHLC');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220553-KHLC');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220553-KHLC');
is($rpt->{winddir}, '220', 'winddir 201211220553-KHLC');
is($rpt->{winddirtext}, 'Southwest', 'winddirtext 201211220553-KHLC');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220553-KHLC');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220553-KHLC');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220553-KHLC');
is($rpt->{windspeedkmh}, '11', 'windspeedkmh 201211220553-KHLC');
is($rpt->{windspeedkts}, '6', 'windspeedkts 201211220553-KHLC');
is($rpt->{windspeedmph}, '7', 'windspeedmph 201211220553-KHLC');
