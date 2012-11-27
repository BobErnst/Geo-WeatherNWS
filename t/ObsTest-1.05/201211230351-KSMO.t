#!perl -T

use strict;
use warnings;

# Test 201211230351-KSMO
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 03:51 KSMO 230351Z 00000KT 3SM BR SCT004 14/12 A3010 RMK AO2 SLP192 T01440122 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 03:51 KSMO 230351Z 00000KT 3SM BR SCT004 14/12 A3010 RMK AO2 SLP192 T01440122 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Partly Cloudy', 'cloudcover 201211230351-KSMO');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['SCT004'], 'cloudlevel_arrayref 201211230351-KSMO');
is($rpt->{code}, 'KSMO', 'code 201211230351-KSMO');
is($rpt->{conditions1}, 'Mist', 'conditions1 201211230351-KSMO');
is($rpt->{conditions2}, undef, 'conditions2 201211230351-KSMO');
is($rpt->{conditionstext}, 'Mist', 'conditionstext 201211230351-KSMO');
is($rpt->{day}, '23', 'day 201211230351-KSMO');
is($rpt->{dewpoint_c}, '12', 'dewpoint_c 201211230351-KSMO');
is($rpt->{dewpoint_f}, '54', 'dewpoint_f 201211230351-KSMO');
is($rpt->{error}, undef, 'error 201211230351-KSMO');
is($rpt->{errortext}, undef, 'errortext 201211230351-KSMO');
is($rpt->{eventbe}, undef, 'eventbe 201211230351-KSMO');
is($rpt->{heat_index_c}, '21', 'heat_index_c 201211230351-KSMO');
is($rpt->{heat_index_f}, '70', 'heat_index_f 201211230351-KSMO');
is($rpt->{http}, undef, 'http 201211230351-KSMO');
is($rpt->{intensity}, undef, 'intensity 201211230351-KSMO');
is($rpt->{maintenance}, undef, 'maintenance 201211230351-KSMO');
is($rpt->{obs}, '2012/11/23 03:51 KSMO 230351Z 00000KT 3SM BR SCT004 14/12 A3010 RMK AO2 SLP192 T01440122 ', 'obs 201211230351-KSMO');
is($rpt->{precipslr}, undef, 'precipslr 201211230351-KSMO');
is($rpt->{pressure_inhg}, '30.10', 'pressure_inhg 201211230351-KSMO');
is($rpt->{pressure_kgcm}, '1.03940116', 'pressure_kgcm 201211230351-KSMO');
is($rpt->{pressure_lbin}, '14.7837354', 'pressure_lbin 201211230351-KSMO');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211230351-KSMO');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211230351-KSMO');
is($rpt->{ptemperature}, 'T01440122', 'ptemperature 201211230351-KSMO');
is($rpt->{relative_humidity}, '88', 'relative_humidity 201211230351-KSMO');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1019.2','T01440122'], 'remark_arrayref 201211230351-KSMO');
is($rpt->{slp_inhg}, '30.09', 'slp_inhg 201211230351-KSMO');
is($rpt->{slp_kgcm}, '1.039298624', 'slp_kgcm 201211230351-KSMO');
is($rpt->{slp_lbin}, '14.78227296', 'slp_lbin 201211230351-KSMO');
is($rpt->{slp_mb}, '1019', 'slp_mb 201211230351-KSMO');
is($rpt->{slp_mmhg}, '764', 'slp_mmhg 201211230351-KSMO');
is($rpt->{station_type}, 'Automated', 'station_type 201211230351-KSMO');
is($rpt->{storm}, undef, 'storm 201211230351-KSMO');
is($rpt->{temperature_c}, '14', 'temperature_c 201211230351-KSMO');
is($rpt->{temperature_f}, '57', 'temperature_f 201211230351-KSMO');
is($rpt->{templateout}, undef, 'templateout 201211230351-KSMO');
is($rpt->{tfile}, undef, 'tfile 201211230351-KSMO');
is($rpt->{thpressure}, undef, 'thpressure 201211230351-KSMO');
is($rpt->{time}, '0351', 'time 201211230351-KSMO');
is($rpt->{visibility_km}, '5', 'visibility_km 201211230351-KSMO');
is($rpt->{visibility_mi}, '3', 'visibility_mi 201211230351-KSMO');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230351-KSMO');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230351-KSMO');
is($rpt->{winddir}, '0', 'winddir 201211230351-KSMO');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211230351-KSMO');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230351-KSMO');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230351-KSMO');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230351-KSMO');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211230351-KSMO');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211230351-KSMO');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211230351-KSMO');
