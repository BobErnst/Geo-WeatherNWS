#!perl -T

use strict;
use warnings;

# Test 201211210252-KABI
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:52 KABI 210252Z 15005KT 10SM CLR 13/05 A3022 RMK AO2 SLP226 T01280050 51015 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:52 KABI 210252Z 15005KT 10SM CLR 13/05 A3022 RMK AO2 SLP226 T01280050 51015 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210252-KABI');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210252-KABI');
is($rpt->{code}, 'KABI', 'code 201211210252-KABI');
is($rpt->{conditions1}, undef, 'conditions1 201211210252-KABI');
is($rpt->{conditions2}, undef, 'conditions2 201211210252-KABI');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210252-KABI');
is($rpt->{day}, '21', 'day 201211210252-KABI');
is($rpt->{dewpoint_c}, '05', 'dewpoint_c 201211210252-KABI');
is($rpt->{dewpoint_f}, '41', 'dewpoint_f 201211210252-KABI');
is($rpt->{error}, undef, 'error 201211210252-KABI');
is($rpt->{errortext}, undef, 'errortext 201211210252-KABI');
is($rpt->{eventbe}, undef, 'eventbe 201211210252-KABI');
is($rpt->{heat_index_c}, '32', 'heat_index_c 201211210252-KABI');
is($rpt->{heat_index_f}, '89', 'heat_index_f 201211210252-KABI');
is($rpt->{http}, undef, 'http 201211210252-KABI');
is($rpt->{intensity}, undef, 'intensity 201211210252-KABI');
is($rpt->{maintenance}, undef, 'maintenance 201211210252-KABI');
is($rpt->{obs}, '2012/11/21 02:52 KABI 210252Z 15005KT 10SM CLR 13/05 A3022 RMK AO2 SLP226 T01280050 51015 ', 'obs 201211210252-KABI');
is($rpt->{precipslr}, undef, 'precipslr 201211210252-KABI');
is($rpt->{pressure_inhg}, '30.22', 'pressure_inhg 201211210252-KABI');
is($rpt->{pressure_kgcm}, '1.043544952', 'pressure_kgcm 201211210252-KABI');
is($rpt->{pressure_lbin}, '14.84267388', 'pressure_lbin 201211210252-KABI');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211210252-KABI');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211210252-KABI');
is($rpt->{ptemperature}, 'T01280050', 'ptemperature 201211210252-KABI');
is($rpt->{relative_humidity}, '58', 'relative_humidity 201211210252-KABI');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1022.6','T01280050','51015'], 'remark_arrayref 201211210252-KABI');
is($rpt->{slp_inhg}, '30.19', 'slp_inhg 201211210252-KABI');
is($rpt->{slp_kgcm}, '1.042765672', 'slp_kgcm 201211210252-KABI');
is($rpt->{slp_lbin}, '14.83158588', 'slp_lbin 201211210252-KABI');
is($rpt->{slp_mb}, '1023', 'slp_mb 201211210252-KABI');
is($rpt->{slp_mmhg}, '767', 'slp_mmhg 201211210252-KABI');
is($rpt->{station_type}, 'Automated', 'station_type 201211210252-KABI');
is($rpt->{storm}, undef, 'storm 201211210252-KABI');
is($rpt->{temperature_c}, '13', 'temperature_c 201211210252-KABI');
is($rpt->{temperature_f}, '55', 'temperature_f 201211210252-KABI');
is($rpt->{templateout}, undef, 'templateout 201211210252-KABI');
is($rpt->{tfile}, undef, 'tfile 201211210252-KABI');
is($rpt->{thpressure}, '51015', 'thpressure 201211210252-KABI');
is($rpt->{time}, '0252', 'time 201211210252-KABI');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210252-KABI');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210252-KABI');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210252-KABI');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210252-KABI');
is($rpt->{winddir}, '150', 'winddir 201211210252-KABI');
is($rpt->{winddirtext}, 'Southeast', 'winddirtext 201211210252-KABI');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210252-KABI');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210252-KABI');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210252-KABI');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211210252-KABI');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211210252-KABI');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211210252-KABI');
