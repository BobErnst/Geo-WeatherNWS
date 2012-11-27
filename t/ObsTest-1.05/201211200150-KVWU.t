#!perl -T

use strict;
use warnings;

# Test 201211200150-KVWU
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:50 KVWU 200150Z AUTO 28005KT 10SM CLR 00/M01 A3008 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:50 KVWU 200150Z AUTO 28005KT 10SM CLR 00/M01 A3008 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211200150-KVWU');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211200150-KVWU');
is($rpt->{code}, 'KVWU', 'code 201211200150-KVWU');
is($rpt->{conditions1}, undef, 'conditions1 201211200150-KVWU');
is($rpt->{conditions2}, undef, 'conditions2 201211200150-KVWU');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211200150-KVWU');
is($rpt->{day}, '20', 'day 201211200150-KVWU');
is($rpt->{dewpoint_c}, '-1', 'dewpoint_c 201211200150-KVWU');
is($rpt->{dewpoint_f}, '30', 'dewpoint_f 201211200150-KVWU');
is($rpt->{error}, undef, 'error 201211200150-KVWU');
is($rpt->{errortext}, undef, 'errortext 201211200150-KVWU');
is($rpt->{eventbe}, undef, 'eventbe 201211200150-KVWU');
is($rpt->{heat_index_c}, '67', 'heat_index_c 201211200150-KVWU');
is($rpt->{heat_index_f}, '152', 'heat_index_f 201211200150-KVWU');
is($rpt->{http}, undef, 'http 201211200150-KVWU');
is($rpt->{intensity}, undef, 'intensity 201211200150-KVWU');
is($rpt->{maintenance}, undef, 'maintenance 201211200150-KVWU');
is($rpt->{obs}, '2012/11/20 01:50 KVWU 200150Z AUTO 28005KT 10SM CLR 00/M01 A3008 RMK AO2 ', 'obs 201211200150-KVWU');
is($rpt->{precipslr}, undef, 'precipslr 201211200150-KVWU');
is($rpt->{pressure_inhg}, '30.08', 'pressure_inhg 201211200150-KVWU');
is($rpt->{pressure_kgcm}, '1.038710528', 'pressure_kgcm 201211200150-KVWU');
is($rpt->{pressure_lbin}, '14.77391232', 'pressure_lbin 201211200150-KVWU');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211200150-KVWU');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211200150-KVWU');
is($rpt->{ptemperature}, undef, 'ptemperature 201211200150-KVWU');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211200150-KVWU');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211200150-KVWU');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211200150-KVWU');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211200150-KVWU');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211200150-KVWU');
is($rpt->{slp_mb}, undef, 'slp_mb 201211200150-KVWU');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211200150-KVWU');
is($rpt->{station_type}, 'Automated', 'station_type 201211200150-KVWU');
is($rpt->{storm}, undef, 'storm 201211200150-KVWU');
is($rpt->{temperature_c}, '00', 'temperature_c 201211200150-KVWU');
is($rpt->{temperature_f}, '32', 'temperature_f 201211200150-KVWU');
is($rpt->{templateout}, undef, 'templateout 201211200150-KVWU');
is($rpt->{tfile}, undef, 'tfile 201211200150-KVWU');
is($rpt->{thpressure}, undef, 'thpressure 201211200150-KVWU');
is($rpt->{time}, '0150', 'time 201211200150-KVWU');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200150-KVWU');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200150-KVWU');
is($rpt->{windchill_c}, '-3', 'windchill_c 201211200150-KVWU');
is($rpt->{windchill_f}, '26', 'windchill_f 201211200150-KVWU');
is($rpt->{winddir}, '280', 'winddir 201211200150-KVWU');
is($rpt->{winddirtext}, 'West', 'winddirtext 201211200150-KVWU');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200150-KVWU');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200150-KVWU');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200150-KVWU');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211200150-KVWU');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211200150-KVWU');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211200150-KVWU');
