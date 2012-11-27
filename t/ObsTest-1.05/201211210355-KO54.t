#!perl -T

use strict;
use warnings;

# Test 201211210355-KO54
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KO54 210355Z AUTO 02003KT 2 1/2SM 09/08 A2989 RMK AO1 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KO54 210355Z AUTO 02003KT 2 1/2SM 09/08 A2989 RMK AO1 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211210355-KO54');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201211210355-KO54');
is($rpt->{code}, 'KO54', 'code 201211210355-KO54');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KO54');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KO54');
is($rpt->{conditionstext}, undef, 'conditionstext 201211210355-KO54');
is($rpt->{day}, '21', 'day 201211210355-KO54');
is($rpt->{dewpoint_c}, '08', 'dewpoint_c 201211210355-KO54');
is($rpt->{dewpoint_f}, '46', 'dewpoint_f 201211210355-KO54');
is($rpt->{error}, undef, 'error 201211210355-KO54');
is($rpt->{errortext}, undef, 'errortext 201211210355-KO54');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KO54');
is($rpt->{heat_index_c}, '28', 'heat_index_c 201211210355-KO54');
is($rpt->{heat_index_f}, '83', 'heat_index_f 201211210355-KO54');
is($rpt->{http}, undef, 'http 201211210355-KO54');
is($rpt->{intensity}, undef, 'intensity 201211210355-KO54');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KO54');
is($rpt->{obs}, '2012/11/21 03:55 KO54 210355Z AUTO 02003KT 2 1/2SM 09/08 A2989 RMK AO1 ', 'obs 201211210355-KO54');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KO54');
is($rpt->{pressure_inhg}, '29.89', 'pressure_inhg 201211210355-KO54');
is($rpt->{pressure_kgcm}, '1.032149524', 'pressure_kgcm 201211210355-KO54');
is($rpt->{pressure_lbin}, '14.68059306', 'pressure_lbin 201211210355-KO54');
is($rpt->{pressure_mb}, '1012', 'pressure_mb 201211210355-KO54');
is($rpt->{pressure_mmhg}, '759', 'pressure_mmhg 201211210355-KO54');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210355-KO54');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211210355-KO54');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO1'], 'remark_arrayref 201211210355-KO54');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KO54');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KO54');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KO54');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KO54');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KO54');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KO54');
is($rpt->{storm}, undef, 'storm 201211210355-KO54');
is($rpt->{temperature_c}, '09', 'temperature_c 201211210355-KO54');
is($rpt->{temperature_f}, '48', 'temperature_f 201211210355-KO54');
is($rpt->{templateout}, undef, 'templateout 201211210355-KO54');
is($rpt->{tfile}, undef, 'tfile 201211210355-KO54');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KO54');
is($rpt->{time}, '0355', 'time 201211210355-KO54');
is($rpt->{visibility_km}, '1', 'visibility_km 201211210355-KO54');
is($rpt->{visibility_mi}, '0', 'visibility_mi 201211210355-KO54');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210355-KO54');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210355-KO54');
is($rpt->{winddir}, '20', 'winddir 201211210355-KO54');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211210355-KO54');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KO54');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KO54');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KO54');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211210355-KO54');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211210355-KO54');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211210355-KO54');
