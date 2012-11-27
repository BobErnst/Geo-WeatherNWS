#!perl -T

use strict;
use warnings;

# Test 201211220550-KSWF
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 05:50 KSWF 220550Z 00000KT 10SM SKC M02/M04 A3026 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 05:50 KSWF 220550Z 00000KT 10SM SKC M02/M04 A3026 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211220550-KSWF');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201211220550-KSWF');
is($rpt->{code}, 'KSWF', 'code 201211220550-KSWF');
is($rpt->{conditions1}, undef, 'conditions1 201211220550-KSWF');
is($rpt->{conditions2}, undef, 'conditions2 201211220550-KSWF');
is($rpt->{conditionstext}, undef, 'conditionstext 201211220550-KSWF');
is($rpt->{day}, '22', 'day 201211220550-KSWF');
is($rpt->{dewpoint_c}, '-4', 'dewpoint_c 201211220550-KSWF');
is($rpt->{dewpoint_f}, '25', 'dewpoint_f 201211220550-KSWF');
is($rpt->{error}, undef, 'error 201211220550-KSWF');
is($rpt->{errortext}, undef, 'errortext 201211220550-KSWF');
is($rpt->{eventbe}, undef, 'eventbe 201211220550-KSWF');
is($rpt->{heat_index_c}, '83', 'heat_index_c 201211220550-KSWF');
is($rpt->{heat_index_f}, '181', 'heat_index_f 201211220550-KSWF');
is($rpt->{http}, undef, 'http 201211220550-KSWF');
is($rpt->{intensity}, undef, 'intensity 201211220550-KSWF');
is($rpt->{maintenance}, undef, 'maintenance 201211220550-KSWF');
is($rpt->{obs}, '2012/11/22 05:50 KSWF 220550Z 00000KT 10SM SKC M02/M04 A3026 ', 'obs 201211220550-KSWF');
is($rpt->{precipslr}, undef, 'precipslr 201211220550-KSWF');
is($rpt->{pressure_inhg}, '30.26', 'pressure_inhg 201211220550-KSWF');
is($rpt->{pressure_kgcm}, '1.044926216', 'pressure_kgcm 201211220550-KSWF');
is($rpt->{pressure_lbin}, '14.86232004', 'pressure_lbin 201211220550-KSWF');
is($rpt->{pressure_mb}, '1025', 'pressure_mb 201211220550-KSWF');
is($rpt->{pressure_mmhg}, '769', 'pressure_mmhg 201211220550-KSWF');
is($rpt->{ptemperature}, undef, 'ptemperature 201211220550-KSWF');
is($rpt->{relative_humidity}, '86', 'relative_humidity 201211220550-KSWF');
is_deeply(\$rpt->{remark_arrayref}, \[], 'remark_arrayref 201211220550-KSWF');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211220550-KSWF');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211220550-KSWF');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211220550-KSWF');
is($rpt->{slp_mb}, undef, 'slp_mb 201211220550-KSWF');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211220550-KSWF');
is($rpt->{station_type}, 'Manual', 'station_type 201211220550-KSWF');
is($rpt->{storm}, undef, 'storm 201211220550-KSWF');
is($rpt->{temperature_c}, '-2', 'temperature_c 201211220550-KSWF');
is($rpt->{temperature_f}, '28', 'temperature_f 201211220550-KSWF');
is($rpt->{templateout}, undef, 'templateout 201211220550-KSWF');
is($rpt->{tfile}, undef, 'tfile 201211220550-KSWF');
is($rpt->{thpressure}, undef, 'thpressure 201211220550-KSWF');
is($rpt->{time}, '0550', 'time 201211220550-KSWF');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220550-KSWF');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220550-KSWF');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220550-KSWF');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220550-KSWF');
is($rpt->{winddir}, '0', 'winddir 201211220550-KSWF');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211220550-KSWF');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220550-KSWF');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220550-KSWF');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220550-KSWF');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211220550-KSWF');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211220550-KSWF');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211220550-KSWF');
