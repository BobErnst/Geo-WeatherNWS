#!perl -T

use strict;
use warnings;

# Test 201211200153-KOGD
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:53 KOGD 200153Z AUTO 00000KT 10SM CLR 09/03 A3023 RMK AO2 SLP224 T00890028 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:53 KOGD 200153Z AUTO 00000KT 10SM CLR 09/03 A3023 RMK AO2 SLP224 T00890028 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211200153-KOGD');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211200153-KOGD');
is($rpt->{code}, 'KOGD', 'code 201211200153-KOGD');
is($rpt->{conditions1}, undef, 'conditions1 201211200153-KOGD');
is($rpt->{conditions2}, undef, 'conditions2 201211200153-KOGD');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211200153-KOGD');
is($rpt->{day}, '20', 'day 201211200153-KOGD');
is($rpt->{dewpoint_c}, '03', 'dewpoint_c 201211200153-KOGD');
is($rpt->{dewpoint_f}, '37', 'dewpoint_f 201211200153-KOGD');
is($rpt->{error}, undef, 'error 201211200153-KOGD');
is($rpt->{errortext}, undef, 'errortext 201211200153-KOGD');
is($rpt->{eventbe}, undef, 'eventbe 201211200153-KOGD');
is($rpt->{heat_index_c}, '40', 'heat_index_c 201211200153-KOGD');
is($rpt->{heat_index_f}, '104', 'heat_index_f 201211200153-KOGD');
is($rpt->{http}, undef, 'http 201211200153-KOGD');
is($rpt->{intensity}, undef, 'intensity 201211200153-KOGD');
is($rpt->{maintenance}, undef, 'maintenance 201211200153-KOGD');
is($rpt->{obs}, '2012/11/20 01:53 KOGD 200153Z AUTO 00000KT 10SM CLR 09/03 A3023 RMK AO2 SLP224 T00890028 ', 'obs 201211200153-KOGD');
is($rpt->{precipslr}, undef, 'precipslr 201211200153-KOGD');
is($rpt->{pressure_inhg}, '30.23', 'pressure_inhg 201211200153-KOGD');
is($rpt->{pressure_kgcm}, '1.043890268', 'pressure_kgcm 201211200153-KOGD');
is($rpt->{pressure_lbin}, '14.84758542', 'pressure_lbin 201211200153-KOGD');
is($rpt->{pressure_mb}, '1024', 'pressure_mb 201211200153-KOGD');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211200153-KOGD');
is($rpt->{ptemperature}, 'T00890028', 'ptemperature 201211200153-KOGD');
is($rpt->{relative_humidity}, '66', 'relative_humidity 201211200153-KOGD');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1022.4','T00890028'], 'remark_arrayref 201211200153-KOGD');
is($rpt->{slp_inhg}, '30.19', 'slp_inhg 201211200153-KOGD');
is($rpt->{slp_kgcm}, '1.042561728', 'slp_kgcm 201211200153-KOGD');
is($rpt->{slp_lbin}, '14.82868512', 'slp_lbin 201211200153-KOGD');
is($rpt->{slp_mb}, '1022', 'slp_mb 201211200153-KOGD');
is($rpt->{slp_mmhg}, '767', 'slp_mmhg 201211200153-KOGD');
is($rpt->{station_type}, 'Automated', 'station_type 201211200153-KOGD');
is($rpt->{storm}, undef, 'storm 201211200153-KOGD');
is($rpt->{temperature_c}, '09', 'temperature_c 201211200153-KOGD');
is($rpt->{temperature_f}, '48', 'temperature_f 201211200153-KOGD');
is($rpt->{templateout}, undef, 'templateout 201211200153-KOGD');
is($rpt->{tfile}, undef, 'tfile 201211200153-KOGD');
is($rpt->{thpressure}, undef, 'thpressure 201211200153-KOGD');
is($rpt->{time}, '0153', 'time 201211200153-KOGD');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200153-KOGD');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200153-KOGD');
is($rpt->{windchill_c}, undef, 'windchill_c 201211200153-KOGD');
is($rpt->{windchill_f}, undef, 'windchill_f 201211200153-KOGD');
is($rpt->{winddir}, '0', 'winddir 201211200153-KOGD');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211200153-KOGD');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200153-KOGD');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200153-KOGD');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200153-KOGD');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211200153-KOGD');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211200153-KOGD');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211200153-KOGD');
