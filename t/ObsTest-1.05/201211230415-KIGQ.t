#!perl -T

use strict;
use warnings;

# Test 201211230415-KIGQ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 04:15 KIGQ 230415Z AUTO 22014G20KT 10SM SCT035 BKN060 13/09 A2981 RMK AO2 T01270085 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 04:15 KIGQ 230415Z AUTO 22014G20KT 10SM SCT035 BKN060 13/09 A2981 RMK AO2 T01270085 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Mostly Cloudy', 'cloudcover 201211230415-KIGQ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['SCT035','BKN060'], 'cloudlevel_arrayref 201211230415-KIGQ');
is($rpt->{code}, 'KIGQ', 'code 201211230415-KIGQ');
is($rpt->{conditions1}, undef, 'conditions1 201211230415-KIGQ');
is($rpt->{conditions2}, undef, 'conditions2 201211230415-KIGQ');
is($rpt->{conditionstext}, 'Partly Cloudy', 'conditionstext 201211230415-KIGQ');
is($rpt->{day}, '23', 'day 201211230415-KIGQ');
is($rpt->{dewpoint_c}, '09', 'dewpoint_c 201211230415-KIGQ');
is($rpt->{dewpoint_f}, '48', 'dewpoint_f 201211230415-KIGQ');
is($rpt->{error}, undef, 'error 201211230415-KIGQ');
is($rpt->{errortext}, undef, 'errortext 201211230415-KIGQ');
is($rpt->{eventbe}, undef, 'eventbe 201211230415-KIGQ');
is($rpt->{heat_index_c}, '28', 'heat_index_c 201211230415-KIGQ');
is($rpt->{heat_index_f}, '82', 'heat_index_f 201211230415-KIGQ');
is($rpt->{http}, undef, 'http 201211230415-KIGQ');
is($rpt->{intensity}, undef, 'intensity 201211230415-KIGQ');
is($rpt->{maintenance}, undef, 'maintenance 201211230415-KIGQ');
is($rpt->{obs}, '2012/11/23 04:15 KIGQ 230415Z AUTO 22014G20KT 10SM SCT035 BKN060 13/09 A2981 RMK AO2 T01270085 ', 'obs 201211230415-KIGQ');
is($rpt->{precipslr}, undef, 'precipslr 201211230415-KIGQ');
is($rpt->{pressure_inhg}, '29.81', 'pressure_inhg 201211230415-KIGQ');
is($rpt->{pressure_kgcm}, '1.029386996', 'pressure_kgcm 201211230415-KIGQ');
is($rpt->{pressure_lbin}, '14.64130074', 'pressure_lbin 201211230415-KIGQ');
is($rpt->{pressure_mb}, '1009', 'pressure_mb 201211230415-KIGQ');
is($rpt->{pressure_mmhg}, '757', 'pressure_mmhg 201211230415-KIGQ');
is($rpt->{ptemperature}, 'T01270085', 'ptemperature 201211230415-KIGQ');
is($rpt->{relative_humidity}, '77', 'relative_humidity 201211230415-KIGQ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T01270085'], 'remark_arrayref 201211230415-KIGQ');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211230415-KIGQ');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211230415-KIGQ');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211230415-KIGQ');
is($rpt->{slp_mb}, undef, 'slp_mb 201211230415-KIGQ');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211230415-KIGQ');
is($rpt->{station_type}, 'Automated', 'station_type 201211230415-KIGQ');
is($rpt->{storm}, undef, 'storm 201211230415-KIGQ');
is($rpt->{temperature_c}, '13', 'temperature_c 201211230415-KIGQ');
is($rpt->{temperature_f}, '55', 'temperature_f 201211230415-KIGQ');
is($rpt->{templateout}, undef, 'templateout 201211230415-KIGQ');
is($rpt->{tfile}, undef, 'tfile 201211230415-KIGQ');
is($rpt->{thpressure}, undef, 'thpressure 201211230415-KIGQ');
is($rpt->{time}, '0415', 'time 201211230415-KIGQ');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230415-KIGQ');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230415-KIGQ');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230415-KIGQ');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230415-KIGQ');
is($rpt->{winddir}, '220', 'winddir 201211230415-KIGQ');
is($rpt->{winddirtext}, 'Southwest', 'winddirtext 201211230415-KIGQ');
is($rpt->{windgustkmh}, '37', 'windgustkmh 201211230415-KIGQ');
is($rpt->{windgustkts}, '20', 'windgustkts 201211230415-KIGQ');
is($rpt->{windgustmph}, '23', 'windgustmph 201211230415-KIGQ');
is($rpt->{windspeedkmh}, '26', 'windspeedkmh 201211230415-KIGQ');
is($rpt->{windspeedkts}, '14', 'windspeedkts 201211230415-KIGQ');
is($rpt->{windspeedmph}, '16', 'windspeedmph 201211230415-KIGQ');
