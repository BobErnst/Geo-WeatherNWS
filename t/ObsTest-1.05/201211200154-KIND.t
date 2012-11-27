#!perl -T

use strict;
use warnings;

# Test 201211200154-KIND
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:54 KIND 200154Z 14003KT 10SM BKN130 BKN160 OVC250 10/02 A3020 RMK AO2 SLP228 T01000022 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:54 KIND 200154Z 14003KT 10SM BKN130 BKN160 OVC250 10/02 A3020 RMK AO2 SLP228 T01000022 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211200154-KIND');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['BKN130','BKN160','OVC250'], 'cloudlevel_arrayref 201211200154-KIND');
is($rpt->{code}, 'KIND', 'code 201211200154-KIND');
is($rpt->{conditions1}, undef, 'conditions1 201211200154-KIND');
is($rpt->{conditions2}, undef, 'conditions2 201211200154-KIND');
is($rpt->{conditionstext}, 'Mostly Cloudy', 'conditionstext 201211200154-KIND');
is($rpt->{day}, '20', 'day 201211200154-KIND');
is($rpt->{dewpoint_c}, '02', 'dewpoint_c 201211200154-KIND');
is($rpt->{dewpoint_f}, '36', 'dewpoint_f 201211200154-KIND');
is($rpt->{error}, undef, 'error 201211200154-KIND');
is($rpt->{errortext}, undef, 'errortext 201211200154-KIND');
is($rpt->{eventbe}, undef, 'eventbe 201211200154-KIND');
is($rpt->{heat_index_c}, '38', 'heat_index_c 201211200154-KIND');
is($rpt->{heat_index_f}, '100', 'heat_index_f 201211200154-KIND');
is($rpt->{http}, undef, 'http 201211200154-KIND');
is($rpt->{intensity}, undef, 'intensity 201211200154-KIND');
is($rpt->{maintenance}, undef, 'maintenance 201211200154-KIND');
is($rpt->{obs}, '2012/11/20 01:54 KIND 200154Z 14003KT 10SM BKN130 BKN160 OVC250 10/02 A3020 RMK AO2 SLP228 T01000022 ', 'obs 201211200154-KIND');
is($rpt->{precipslr}, undef, 'precipslr 201211200154-KIND');
is($rpt->{pressure_inhg}, '30.20', 'pressure_inhg 201211200154-KIND');
is($rpt->{pressure_kgcm}, '1.04285432', 'pressure_kgcm 201211200154-KIND');
is($rpt->{pressure_lbin}, '14.8328508', 'pressure_lbin 201211200154-KIND');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211200154-KIND');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211200154-KIND');
is($rpt->{ptemperature}, 'T01000022', 'ptemperature 201211200154-KIND');
is($rpt->{relative_humidity}, '58', 'relative_humidity 201211200154-KIND');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1022.8','T01000022'], 'remark_arrayref 201211200154-KIND');
is($rpt->{slp_inhg}, '30.20', 'slp_inhg 201211200154-KIND');
is($rpt->{slp_kgcm}, '1.042969616', 'slp_kgcm 201211200154-KIND');
is($rpt->{slp_lbin}, '14.83448664', 'slp_lbin 201211200154-KIND');
is($rpt->{slp_mb}, '1023', 'slp_mb 201211200154-KIND');
is($rpt->{slp_mmhg}, '767', 'slp_mmhg 201211200154-KIND');
is($rpt->{station_type}, 'Automated', 'station_type 201211200154-KIND');
is($rpt->{storm}, undef, 'storm 201211200154-KIND');
is($rpt->{temperature_c}, '10', 'temperature_c 201211200154-KIND');
is($rpt->{temperature_f}, '50', 'temperature_f 201211200154-KIND');
is($rpt->{templateout}, undef, 'templateout 201211200154-KIND');
is($rpt->{tfile}, undef, 'tfile 201211200154-KIND');
is($rpt->{thpressure}, undef, 'thpressure 201211200154-KIND');
is($rpt->{time}, '0154', 'time 201211200154-KIND');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200154-KIND');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200154-KIND');
is($rpt->{windchill_c}, undef, 'windchill_c 201211200154-KIND');
is($rpt->{windchill_f}, undef, 'windchill_f 201211200154-KIND');
is($rpt->{winddir}, '140', 'winddir 201211200154-KIND');
is($rpt->{winddirtext}, 'Southeast', 'winddirtext 201211200154-KIND');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200154-KIND');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200154-KIND');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200154-KIND');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211200154-KIND');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211200154-KIND');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211200154-KIND');
