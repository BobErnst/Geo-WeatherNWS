#!perl -T

use strict;
use warnings;

# Test 201110031635-K47A
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2011/10/03 16:35 K47A 031635Z AUTO 29004KT 10SM CLR 19/06 A3020 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2011/10/03 16:35 K47A 031635Z AUTO 29004KT 10SM CLR 19/06 A3020 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201110031635-K47A');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201110031635-K47A');
is($rpt->{code}, 'K47A', 'code 201110031635-K47A');
is($rpt->{conditions1}, undef, 'conditions1 201110031635-K47A');
is($rpt->{conditions2}, undef, 'conditions2 201110031635-K47A');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201110031635-K47A');
is($rpt->{day}, '03', 'day 201110031635-K47A');
is($rpt->{dewpoint_c}, '06', 'dewpoint_c 201110031635-K47A');
is($rpt->{dewpoint_f}, '43', 'dewpoint_f 201110031635-K47A');
is($rpt->{error}, undef, 'error 201110031635-K47A');
is($rpt->{errortext}, undef, 'errortext 201110031635-K47A');
is($rpt->{eventbe}, undef, 'eventbe 201110031635-K47A');
is($rpt->{heat_index_c}, '26', 'heat_index_c 201110031635-K47A');
is($rpt->{heat_index_f}, '78', 'heat_index_f 201110031635-K47A');
is($rpt->{http}, undef, 'http 201110031635-K47A');
is($rpt->{intensity}, undef, 'intensity 201110031635-K47A');
is($rpt->{maintenance}, undef, 'maintenance 201110031635-K47A');
is($rpt->{obs}, '2011/10/03 16:35 K47A 031635Z AUTO 29004KT 10SM CLR 19/06 A3020 RMK AO2 ', 'obs 201110031635-K47A');
is($rpt->{precipslr}, undef, 'precipslr 201110031635-K47A');
is($rpt->{pressure_inhg}, '30.20', 'pressure_inhg 201110031635-K47A');
is($rpt->{pressure_kgcm}, '1.04285432', 'pressure_kgcm 201110031635-K47A');
is($rpt->{pressure_lbin}, '14.8328508', 'pressure_lbin 201110031635-K47A');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201110031635-K47A');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201110031635-K47A');
is($rpt->{ptemperature}, undef, 'ptemperature 201110031635-K47A');
is($rpt->{relative_humidity}, '43', 'relative_humidity 201110031635-K47A');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201110031635-K47A');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201110031635-K47A');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201110031635-K47A');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201110031635-K47A');
is($rpt->{slp_mb}, undef, 'slp_mb 201110031635-K47A');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201110031635-K47A');
is($rpt->{station_type}, 'Automated', 'station_type 201110031635-K47A');
is($rpt->{storm}, undef, 'storm 201110031635-K47A');
is($rpt->{temperature_c}, '19', 'temperature_c 201110031635-K47A');
is($rpt->{temperature_f}, '66', 'temperature_f 201110031635-K47A');
is($rpt->{templateout}, undef, 'templateout 201110031635-K47A');
is($rpt->{tfile}, undef, 'tfile 201110031635-K47A');
is($rpt->{thpressure}, undef, 'thpressure 201110031635-K47A');
is($rpt->{time}, '1635', 'time 201110031635-K47A');
is($rpt->{visibility_km}, '16', 'visibility_km 201110031635-K47A');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201110031635-K47A');
is($rpt->{windchill_c}, undef, 'windchill_c 201110031635-K47A');
is($rpt->{windchill_f}, undef, 'windchill_f 201110031635-K47A');
is($rpt->{winddir}, '290', 'winddir 201110031635-K47A');
is($rpt->{winddirtext}, 'West', 'winddirtext 201110031635-K47A');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201110031635-K47A');
is($rpt->{windgustkts}, '0', 'windgustkts 201110031635-K47A');
is($rpt->{windgustmph}, '0', 'windgustmph 201110031635-K47A');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201110031635-K47A');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201110031635-K47A');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201110031635-K47A');
