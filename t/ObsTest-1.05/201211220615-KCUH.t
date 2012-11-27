#!perl -T

use strict;
use warnings;

# Test 201211220615-KCUH
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 06:15 KCUH 220615Z AUTO 18007G15KT 10SM CLR 16/08 A3002 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 06:15 KCUH 220615Z AUTO 18007G15KT 10SM CLR 16/08 A3002 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220615-KCUH');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220615-KCUH');
is($rpt->{code}, 'KCUH', 'code 201211220615-KCUH');
is($rpt->{conditions1}, undef, 'conditions1 201211220615-KCUH');
is($rpt->{conditions2}, undef, 'conditions2 201211220615-KCUH');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220615-KCUH');
is($rpt->{day}, '22', 'day 201211220615-KCUH');
is($rpt->{dewpoint_c}, '08', 'dewpoint_c 201211220615-KCUH');
is($rpt->{dewpoint_f}, '46', 'dewpoint_f 201211220615-KCUH');
is($rpt->{error}, undef, 'error 201211220615-KCUH');
is($rpt->{errortext}, undef, 'errortext 201211220615-KCUH');
is($rpt->{eventbe}, undef, 'eventbe 201211220615-KCUH');
is($rpt->{heat_index_c}, '27', 'heat_index_c 201211220615-KCUH');
is($rpt->{heat_index_f}, '81', 'heat_index_f 201211220615-KCUH');
is($rpt->{http}, undef, 'http 201211220615-KCUH');
is($rpt->{intensity}, undef, 'intensity 201211220615-KCUH');
is($rpt->{maintenance}, undef, 'maintenance 201211220615-KCUH');
is($rpt->{obs}, '2012/11/22 06:15 KCUH 220615Z AUTO 18007G15KT 10SM CLR 16/08 A3002 RMK AO2 ', 'obs 201211220615-KCUH');
is($rpt->{precipslr}, undef, 'precipslr 201211220615-KCUH');
is($rpt->{pressure_inhg}, '30.02', 'pressure_inhg 201211220615-KCUH');
is($rpt->{pressure_kgcm}, '1.036638632', 'pressure_kgcm 201211220615-KCUH');
is($rpt->{pressure_lbin}, '14.74444308', 'pressure_lbin 201211220615-KCUH');
is($rpt->{pressure_mb}, '1017', 'pressure_mb 201211220615-KCUH');
is($rpt->{pressure_mmhg}, '763', 'pressure_mmhg 201211220615-KCUH');
is($rpt->{ptemperature}, undef, 'ptemperature 201211220615-KCUH');
is($rpt->{relative_humidity}, '59', 'relative_humidity 201211220615-KCUH');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211220615-KCUH');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211220615-KCUH');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211220615-KCUH');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211220615-KCUH');
is($rpt->{slp_mb}, undef, 'slp_mb 201211220615-KCUH');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211220615-KCUH');
is($rpt->{station_type}, 'Automated', 'station_type 201211220615-KCUH');
is($rpt->{storm}, undef, 'storm 201211220615-KCUH');
is($rpt->{temperature_c}, '16', 'temperature_c 201211220615-KCUH');
is($rpt->{temperature_f}, '61', 'temperature_f 201211220615-KCUH');
is($rpt->{templateout}, undef, 'templateout 201211220615-KCUH');
is($rpt->{tfile}, undef, 'tfile 201211220615-KCUH');
is($rpt->{thpressure}, undef, 'thpressure 201211220615-KCUH');
is($rpt->{time}, '0615', 'time 201211220615-KCUH');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220615-KCUH');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220615-KCUH');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220615-KCUH');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220615-KCUH');
is($rpt->{winddir}, '180', 'winddir 201211220615-KCUH');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211220615-KCUH');
is($rpt->{windgustkmh}, '28', 'windgustkmh 201211220615-KCUH');
is($rpt->{windgustkts}, '15', 'windgustkts 201211220615-KCUH');
is($rpt->{windgustmph}, '17', 'windgustmph 201211220615-KCUH');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211220615-KCUH');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211220615-KCUH');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211220615-KCUH');
