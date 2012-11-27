#!perl -T

use strict;
use warnings;

# Test 201211200155-KAAA
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:55 KAAA 200155Z AUTO 18009KT 10SM OVC055 11/05 A3013 RMK AO2 T01130054 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:55 KAAA 200155Z AUTO 18009KT 10SM OVC055 11/05 A3013 RMK AO2 T01130054 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211200155-KAAA');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC055'], 'cloudlevel_arrayref 201211200155-KAAA');
is($rpt->{code}, 'KAAA', 'code 201211200155-KAAA');
is($rpt->{conditions1}, undef, 'conditions1 201211200155-KAAA');
is($rpt->{conditions2}, undef, 'conditions2 201211200155-KAAA');
is($rpt->{conditionstext}, 'Cloudy', 'conditionstext 201211200155-KAAA');
is($rpt->{day}, '20', 'day 201211200155-KAAA');
is($rpt->{dewpoint_c}, '05', 'dewpoint_c 201211200155-KAAA');
is($rpt->{dewpoint_f}, '41', 'dewpoint_f 201211200155-KAAA');
is($rpt->{error}, undef, 'error 201211200155-KAAA');
is($rpt->{errortext}, undef, 'errortext 201211200155-KAAA');
is($rpt->{eventbe}, undef, 'eventbe 201211200155-KAAA');
is($rpt->{heat_index_c}, '35', 'heat_index_c 201211200155-KAAA');
is($rpt->{heat_index_f}, '94', 'heat_index_f 201211200155-KAAA');
is($rpt->{http}, undef, 'http 201211200155-KAAA');
is($rpt->{intensity}, undef, 'intensity 201211200155-KAAA');
is($rpt->{maintenance}, undef, 'maintenance 201211200155-KAAA');
is($rpt->{obs}, '2012/11/20 01:55 KAAA 200155Z AUTO 18009KT 10SM OVC055 11/05 A3013 RMK AO2 T01130054 ', 'obs 201211200155-KAAA');
is($rpt->{precipslr}, undef, 'precipslr 201211200155-KAAA');
is($rpt->{pressure_inhg}, '30.13', 'pressure_inhg 201211200155-KAAA');
is($rpt->{pressure_kgcm}, '1.040437108', 'pressure_kgcm 201211200155-KAAA');
is($rpt->{pressure_lbin}, '14.79847002', 'pressure_lbin 201211200155-KAAA');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211200155-KAAA');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211200155-KAAA');
is($rpt->{ptemperature}, 'T01130054', 'ptemperature 201211200155-KAAA');
is($rpt->{relative_humidity}, '66', 'relative_humidity 201211200155-KAAA');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T01130054'], 'remark_arrayref 201211200155-KAAA');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211200155-KAAA');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211200155-KAAA');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211200155-KAAA');
is($rpt->{slp_mb}, undef, 'slp_mb 201211200155-KAAA');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211200155-KAAA');
is($rpt->{station_type}, 'Automated', 'station_type 201211200155-KAAA');
is($rpt->{storm}, undef, 'storm 201211200155-KAAA');
is($rpt->{temperature_c}, '11', 'temperature_c 201211200155-KAAA');
is($rpt->{temperature_f}, '52', 'temperature_f 201211200155-KAAA');
is($rpt->{templateout}, undef, 'templateout 201211200155-KAAA');
is($rpt->{tfile}, undef, 'tfile 201211200155-KAAA');
is($rpt->{thpressure}, undef, 'thpressure 201211200155-KAAA');
is($rpt->{time}, '0155', 'time 201211200155-KAAA');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200155-KAAA');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200155-KAAA');
is($rpt->{windchill_c}, undef, 'windchill_c 201211200155-KAAA');
is($rpt->{windchill_f}, undef, 'windchill_f 201211200155-KAAA');
is($rpt->{winddir}, '180', 'winddir 201211200155-KAAA');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211200155-KAAA');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200155-KAAA');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200155-KAAA');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200155-KAAA');
is($rpt->{windspeedkmh}, '17', 'windspeedkmh 201211200155-KAAA');
is($rpt->{windspeedkts}, '9', 'windspeedkts 201211200155-KAAA');
is($rpt->{windspeedmph}, '10', 'windspeedmph 201211200155-KAAA');
