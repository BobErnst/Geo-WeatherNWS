#!perl -T

use strict;
use warnings;

# Test 201211200155-KOCW
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:55 KOCW 200155Z AUTO 36011G15KT 10SM OVC011 12/08 A3017 RMK AO2 T01150083 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:55 KOCW 200155Z AUTO 36011G15KT 10SM OVC011 12/08 A3017 RMK AO2 T01150083 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211200155-KOCW');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC011'], 'cloudlevel_arrayref 201211200155-KOCW');
is($rpt->{code}, 'KOCW', 'code 201211200155-KOCW');
is($rpt->{conditions1}, undef, 'conditions1 201211200155-KOCW');
is($rpt->{conditions2}, undef, 'conditions2 201211200155-KOCW');
is($rpt->{conditionstext}, 'Cloudy', 'conditionstext 201211200155-KOCW');
is($rpt->{day}, '20', 'day 201211200155-KOCW');
is($rpt->{dewpoint_c}, '08', 'dewpoint_c 201211200155-KOCW');
is($rpt->{dewpoint_f}, '46', 'dewpoint_f 201211200155-KOCW');
is($rpt->{error}, undef, 'error 201211200155-KOCW');
is($rpt->{errortext}, undef, 'errortext 201211200155-KOCW');
is($rpt->{eventbe}, undef, 'eventbe 201211200155-KOCW');
is($rpt->{heat_index_c}, '30', 'heat_index_c 201211200155-KOCW');
is($rpt->{heat_index_f}, '85', 'heat_index_f 201211200155-KOCW');
is($rpt->{http}, undef, 'http 201211200155-KOCW');
is($rpt->{intensity}, undef, 'intensity 201211200155-KOCW');
is($rpt->{maintenance}, undef, 'maintenance 201211200155-KOCW');
is($rpt->{obs}, '2012/11/20 01:55 KOCW 200155Z AUTO 36011G15KT 10SM OVC011 12/08 A3017 RMK AO2 T01150083 ', 'obs 201211200155-KOCW');
is($rpt->{precipslr}, undef, 'precipslr 201211200155-KOCW');
is($rpt->{pressure_inhg}, '30.17', 'pressure_inhg 201211200155-KOCW');
is($rpt->{pressure_kgcm}, '1.041818372', 'pressure_kgcm 201211200155-KOCW');
is($rpt->{pressure_lbin}, '14.81811618', 'pressure_lbin 201211200155-KOCW');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211200155-KOCW');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211200155-KOCW');
is($rpt->{ptemperature}, 'T01150083', 'ptemperature 201211200155-KOCW');
is($rpt->{relative_humidity}, '77', 'relative_humidity 201211200155-KOCW');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T01150083'], 'remark_arrayref 201211200155-KOCW');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211200155-KOCW');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211200155-KOCW');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211200155-KOCW');
is($rpt->{slp_mb}, undef, 'slp_mb 201211200155-KOCW');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211200155-KOCW');
is($rpt->{station_type}, 'Automated', 'station_type 201211200155-KOCW');
is($rpt->{storm}, undef, 'storm 201211200155-KOCW');
is($rpt->{temperature_c}, '12', 'temperature_c 201211200155-KOCW');
is($rpt->{temperature_f}, '54', 'temperature_f 201211200155-KOCW');
is($rpt->{templateout}, undef, 'templateout 201211200155-KOCW');
is($rpt->{tfile}, undef, 'tfile 201211200155-KOCW');
is($rpt->{thpressure}, undef, 'thpressure 201211200155-KOCW');
is($rpt->{time}, '0155', 'time 201211200155-KOCW');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200155-KOCW');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200155-KOCW');
is($rpt->{windchill_c}, undef, 'windchill_c 201211200155-KOCW');
is($rpt->{windchill_f}, undef, 'windchill_f 201211200155-KOCW');
is($rpt->{winddir}, '360', 'winddir 201211200155-KOCW');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211200155-KOCW');
is($rpt->{windgustkmh}, '28', 'windgustkmh 201211200155-KOCW');
is($rpt->{windgustkts}, '15', 'windgustkts 201211200155-KOCW');
is($rpt->{windgustmph}, '17', 'windgustmph 201211200155-KOCW');
is($rpt->{windspeedkmh}, '20', 'windspeedkmh 201211200155-KOCW');
is($rpt->{windspeedkts}, '11', 'windspeedkts 201211200155-KOCW');
is($rpt->{windspeedmph}, '13', 'windspeedmph 201211200155-KOCW');
