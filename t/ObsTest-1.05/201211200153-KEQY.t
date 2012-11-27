#!perl -T

use strict;
use warnings;

# Test 201211200153-KEQY
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:53 KEQY 200153Z AUTO 03007KT 10SM CLR 10/06 A3020 RMK AO2 SLP239 T01000061 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:53 KEQY 200153Z AUTO 03007KT 10SM CLR 10/06 A3020 RMK AO2 SLP239 T01000061 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211200153-KEQY');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211200153-KEQY');
is($rpt->{code}, 'KEQY', 'code 201211200153-KEQY');
is($rpt->{conditions1}, undef, 'conditions1 201211200153-KEQY');
is($rpt->{conditions2}, undef, 'conditions2 201211200153-KEQY');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211200153-KEQY');
is($rpt->{day}, '20', 'day 201211200153-KEQY');
is($rpt->{dewpoint_c}, '06', 'dewpoint_c 201211200153-KEQY');
is($rpt->{dewpoint_f}, '43', 'dewpoint_f 201211200153-KEQY');
is($rpt->{error}, undef, 'error 201211200153-KEQY');
is($rpt->{errortext}, undef, 'errortext 201211200153-KEQY');
is($rpt->{eventbe}, undef, 'eventbe 201211200153-KEQY');
is($rpt->{heat_index_c}, '35', 'heat_index_c 201211200153-KEQY');
is($rpt->{heat_index_f}, '94', 'heat_index_f 201211200153-KEQY');
is($rpt->{http}, undef, 'http 201211200153-KEQY');
is($rpt->{intensity}, undef, 'intensity 201211200153-KEQY');
is($rpt->{maintenance}, undef, 'maintenance 201211200153-KEQY');
is($rpt->{obs}, '2012/11/20 01:53 KEQY 200153Z AUTO 03007KT 10SM CLR 10/06 A3020 RMK AO2 SLP239 T01000061 ', 'obs 201211200153-KEQY');
is($rpt->{precipslr}, undef, 'precipslr 201211200153-KEQY');
is($rpt->{pressure_inhg}, '30.20', 'pressure_inhg 201211200153-KEQY');
is($rpt->{pressure_kgcm}, '1.04285432', 'pressure_kgcm 201211200153-KEQY');
is($rpt->{pressure_lbin}, '14.8328508', 'pressure_lbin 201211200153-KEQY');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211200153-KEQY');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211200153-KEQY');
is($rpt->{ptemperature}, 'T01000061', 'ptemperature 201211200153-KEQY');
is($rpt->{relative_humidity}, '76', 'relative_humidity 201211200153-KEQY');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1023.9','T01000061'], 'remark_arrayref 201211200153-KEQY');
is($rpt->{slp_inhg}, '30.23', 'slp_inhg 201211200153-KEQY');
is($rpt->{slp_kgcm}, '1.044091308', 'slp_kgcm 201211200153-KEQY');
is($rpt->{slp_lbin}, '14.85044082', 'slp_lbin 201211200153-KEQY');
is($rpt->{slp_mb}, '1024', 'slp_mb 201211200153-KEQY');
is($rpt->{slp_mmhg}, '768', 'slp_mmhg 201211200153-KEQY');
is($rpt->{station_type}, 'Automated', 'station_type 201211200153-KEQY');
is($rpt->{storm}, undef, 'storm 201211200153-KEQY');
is($rpt->{temperature_c}, '10', 'temperature_c 201211200153-KEQY');
is($rpt->{temperature_f}, '50', 'temperature_f 201211200153-KEQY');
is($rpt->{templateout}, undef, 'templateout 201211200153-KEQY');
is($rpt->{tfile}, undef, 'tfile 201211200153-KEQY');
is($rpt->{thpressure}, undef, 'thpressure 201211200153-KEQY');
is($rpt->{time}, '0153', 'time 201211200153-KEQY');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200153-KEQY');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200153-KEQY');
is($rpt->{windchill_c}, '8', 'windchill_c 201211200153-KEQY');
is($rpt->{windchill_f}, '47', 'windchill_f 201211200153-KEQY');
is($rpt->{winddir}, '30', 'winddir 201211200153-KEQY');
is($rpt->{winddirtext}, 'Northeast', 'winddirtext 201211200153-KEQY');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200153-KEQY');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200153-KEQY');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200153-KEQY');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211200153-KEQY');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211200153-KEQY');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211200153-KEQY');
