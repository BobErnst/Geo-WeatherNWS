#!perl -T

use strict;
use warnings;

# Test 201211220635-KBAX
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 06:35 KBAX 220635Z AUTO 19008KT 5SM BR CLR 06/05 A3009 RMK AO2 T00610045 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 06:35 KBAX 220635Z AUTO 19008KT 5SM BR CLR 06/05 A3009 RMK AO2 T00610045 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220635-KBAX');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220635-KBAX');
is($rpt->{code}, 'KBAX', 'code 201211220635-KBAX');
is($rpt->{conditions1}, 'Mist', 'conditions1 201211220635-KBAX');
is($rpt->{conditions2}, undef, 'conditions2 201211220635-KBAX');
is($rpt->{conditionstext}, 'Mist', 'conditionstext 201211220635-KBAX');
is($rpt->{day}, '22', 'day 201211220635-KBAX');
is($rpt->{dewpoint_c}, '05', 'dewpoint_c 201211220635-KBAX');
is($rpt->{dewpoint_f}, '41', 'dewpoint_f 201211220635-KBAX');
is($rpt->{error}, undef, 'error 201211220635-KBAX');
is($rpt->{errortext}, undef, 'errortext 201211220635-KBAX');
is($rpt->{eventbe}, undef, 'eventbe 201211220635-KBAX');
is($rpt->{heat_index_c}, '38', 'heat_index_c 201211220635-KBAX');
is($rpt->{heat_index_f}, '101', 'heat_index_f 201211220635-KBAX');
is($rpt->{http}, undef, 'http 201211220635-KBAX');
is($rpt->{intensity}, undef, 'intensity 201211220635-KBAX');
is($rpt->{maintenance}, undef, 'maintenance 201211220635-KBAX');
is($rpt->{obs}, '2012/11/22 06:35 KBAX 220635Z AUTO 19008KT 5SM BR CLR 06/05 A3009 RMK AO2 T00610045 ', 'obs 201211220635-KBAX');
is($rpt->{precipslr}, undef, 'precipslr 201211220635-KBAX');
is($rpt->{pressure_inhg}, '30.09', 'pressure_inhg 201211220635-KBAX');
is($rpt->{pressure_kgcm}, '1.039055844', 'pressure_kgcm 201211220635-KBAX');
is($rpt->{pressure_lbin}, '14.77882386', 'pressure_lbin 201211220635-KBAX');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211220635-KBAX');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211220635-KBAX');
is($rpt->{ptemperature}, 'T00610045', 'ptemperature 201211220635-KBAX');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211220635-KBAX');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00610045'], 'remark_arrayref 201211220635-KBAX');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211220635-KBAX');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211220635-KBAX');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211220635-KBAX');
is($rpt->{slp_mb}, undef, 'slp_mb 201211220635-KBAX');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211220635-KBAX');
is($rpt->{station_type}, 'Automated', 'station_type 201211220635-KBAX');
is($rpt->{storm}, undef, 'storm 201211220635-KBAX');
is($rpt->{temperature_c}, '06', 'temperature_c 201211220635-KBAX');
is($rpt->{temperature_f}, '43', 'temperature_f 201211220635-KBAX');
is($rpt->{templateout}, undef, 'templateout 201211220635-KBAX');
is($rpt->{tfile}, undef, 'tfile 201211220635-KBAX');
is($rpt->{thpressure}, undef, 'thpressure 201211220635-KBAX');
is($rpt->{time}, '0635', 'time 201211220635-KBAX');
is($rpt->{visibility_km}, '8', 'visibility_km 201211220635-KBAX');
is($rpt->{visibility_mi}, '5', 'visibility_mi 201211220635-KBAX');
is($rpt->{windchill_c}, '3', 'windchill_c 201211220635-KBAX');
is($rpt->{windchill_f}, '38', 'windchill_f 201211220635-KBAX');
is($rpt->{winddir}, '190', 'winddir 201211220635-KBAX');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211220635-KBAX');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220635-KBAX');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220635-KBAX');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220635-KBAX');
is($rpt->{windspeedkmh}, '15', 'windspeedkmh 201211220635-KBAX');
is($rpt->{windspeedkts}, '8', 'windspeedkts 201211220635-KBAX');
is($rpt->{windspeedmph}, '9', 'windspeedmph 201211220635-KBAX');
