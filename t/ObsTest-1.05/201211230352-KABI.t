#!perl -T

use strict;
use warnings;

# Test 201211230352-KABI
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 03:52 KABI 230352Z 19008KT 10SM CLR 19/12 A3007 RMK AO2 SLP167 T01940117 $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 03:52 KABI 230352Z 19008KT 10SM CLR 19/12 A3007 RMK AO2 SLP167 T01940117 $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211230352-KABI');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211230352-KABI');
is($rpt->{code}, 'KABI', 'code 201211230352-KABI');
is($rpt->{conditions1}, undef, 'conditions1 201211230352-KABI');
is($rpt->{conditions2}, undef, 'conditions2 201211230352-KABI');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211230352-KABI');
is($rpt->{day}, '23', 'day 201211230352-KABI');
is($rpt->{dewpoint_c}, '12', 'dewpoint_c 201211230352-KABI');
is($rpt->{dewpoint_f}, '54', 'dewpoint_f 201211230352-KABI');
is($rpt->{error}, undef, 'error 201211230352-KABI');
is($rpt->{errortext}, undef, 'errortext 201211230352-KABI');
is($rpt->{eventbe}, undef, 'eventbe 201211230352-KABI');
is($rpt->{heat_index_c}, '24', 'heat_index_c 201211230352-KABI');
is($rpt->{heat_index_f}, '76', 'heat_index_f 201211230352-KABI');
is($rpt->{http}, undef, 'http 201211230352-KABI');
is($rpt->{intensity}, undef, 'intensity 201211230352-KABI');
is($rpt->{maintenance}, '$', 'maintenance 201211230352-KABI');
is($rpt->{obs}, '2012/11/23 03:52 KABI 230352Z 19008KT 10SM CLR 19/12 A3007 RMK AO2 SLP167 T01940117 $ ', 'obs 201211230352-KABI');
is($rpt->{precipslr}, undef, 'precipslr 201211230352-KABI');
is($rpt->{pressure_inhg}, '30.07', 'pressure_inhg 201211230352-KABI');
is($rpt->{pressure_kgcm}, '1.038365212', 'pressure_kgcm 201211230352-KABI');
is($rpt->{pressure_lbin}, '14.76900078', 'pressure_lbin 201211230352-KABI');
is($rpt->{pressure_mb}, '1018', 'pressure_mb 201211230352-KABI');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211230352-KABI');
is($rpt->{ptemperature}, 'T01940117', 'ptemperature 201211230352-KABI');
is($rpt->{relative_humidity}, '64', 'relative_humidity 201211230352-KABI');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1016.7','T01940117','$'], 'remark_arrayref 201211230352-KABI');
is($rpt->{slp_inhg}, '30.02', 'slp_inhg 201211230352-KABI');
is($rpt->{slp_kgcm}, '1.036749324', 'slp_kgcm 201211230352-KABI');
is($rpt->{slp_lbin}, '14.74601346', 'slp_lbin 201211230352-KABI');
is($rpt->{slp_mb}, '1017', 'slp_mb 201211230352-KABI');
is($rpt->{slp_mmhg}, '763', 'slp_mmhg 201211230352-KABI');
is($rpt->{station_type}, 'Automated', 'station_type 201211230352-KABI');
is($rpt->{storm}, undef, 'storm 201211230352-KABI');
is($rpt->{temperature_c}, '19', 'temperature_c 201211230352-KABI');
is($rpt->{temperature_f}, '66', 'temperature_f 201211230352-KABI');
is($rpt->{templateout}, undef, 'templateout 201211230352-KABI');
is($rpt->{tfile}, undef, 'tfile 201211230352-KABI');
is($rpt->{thpressure}, undef, 'thpressure 201211230352-KABI');
is($rpt->{time}, '0352', 'time 201211230352-KABI');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230352-KABI');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230352-KABI');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230352-KABI');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230352-KABI');
is($rpt->{winddir}, '190', 'winddir 201211230352-KABI');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211230352-KABI');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230352-KABI');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230352-KABI');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230352-KABI');
is($rpt->{windspeedkmh}, '15', 'windspeedkmh 201211230352-KABI');
is($rpt->{windspeedkts}, '8', 'windspeedkts 201211230352-KABI');
is($rpt->{windspeedmph}, '9', 'windspeedmph 201211230352-KABI');
