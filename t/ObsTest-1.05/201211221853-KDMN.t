#!perl -T

use strict;
use warnings;

# Test 201211221853-KDMN
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 18:53 KDMN 221853Z AUTO 00000KT 10SM CLR 21/03 A3017 RMK AO2 SLP168 T02060028 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 18:53 KDMN 221853Z AUTO 00000KT 10SM CLR 21/03 A3017 RMK AO2 SLP168 T02060028 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211221853-KDMN');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211221853-KDMN');
is($rpt->{code}, 'KDMN', 'code 201211221853-KDMN');
is($rpt->{conditions1}, undef, 'conditions1 201211221853-KDMN');
is($rpt->{conditions2}, undef, 'conditions2 201211221853-KDMN');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211221853-KDMN');
is($rpt->{day}, '22', 'day 201211221853-KDMN');
is($rpt->{dewpoint_c}, '03', 'dewpoint_c 201211221853-KDMN');
is($rpt->{dewpoint_f}, '37', 'dewpoint_f 201211221853-KDMN');
is($rpt->{error}, undef, 'error 201211221853-KDMN');
is($rpt->{errortext}, undef, 'errortext 201211221853-KDMN');
is($rpt->{eventbe}, undef, 'eventbe 201211221853-KDMN');
is($rpt->{heat_index_c}, '25', 'heat_index_c 201211221853-KDMN');
is($rpt->{heat_index_f}, '76', 'heat_index_f 201211221853-KDMN');
is($rpt->{http}, undef, 'http 201211221853-KDMN');
is($rpt->{intensity}, undef, 'intensity 201211221853-KDMN');
is($rpt->{maintenance}, undef, 'maintenance 201211221853-KDMN');
is($rpt->{obs}, '2012/11/22 18:53 KDMN 221853Z AUTO 00000KT 10SM CLR 21/03 A3017 RMK AO2 SLP168 T02060028 ', 'obs 201211221853-KDMN');
is($rpt->{precipslr}, undef, 'precipslr 201211221853-KDMN');
is($rpt->{pressure_inhg}, '30.17', 'pressure_inhg 201211221853-KDMN');
is($rpt->{pressure_kgcm}, '1.041818372', 'pressure_kgcm 201211221853-KDMN');
is($rpt->{pressure_lbin}, '14.81811618', 'pressure_lbin 201211221853-KDMN');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211221853-KDMN');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211221853-KDMN');
is($rpt->{ptemperature}, 'T02060028', 'ptemperature 201211221853-KDMN');
is($rpt->{relative_humidity}, '31', 'relative_humidity 201211221853-KDMN');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1016.8','T02060028'], 'remark_arrayref 201211221853-KDMN');
is($rpt->{slp_inhg}, '30.02', 'slp_inhg 201211221853-KDMN');
is($rpt->{slp_kgcm}, '1.036851296', 'slp_kgcm 201211221853-KDMN');
is($rpt->{slp_lbin}, '14.74746384', 'slp_lbin 201211221853-KDMN');
is($rpt->{slp_mb}, '1017', 'slp_mb 201211221853-KDMN');
is($rpt->{slp_mmhg}, '763', 'slp_mmhg 201211221853-KDMN');
is($rpt->{station_type}, 'Automated', 'station_type 201211221853-KDMN');
is($rpt->{storm}, undef, 'storm 201211221853-KDMN');
is($rpt->{temperature_c}, '21', 'temperature_c 201211221853-KDMN');
is($rpt->{temperature_f}, '70', 'temperature_f 201211221853-KDMN');
is($rpt->{templateout}, undef, 'templateout 201211221853-KDMN');
is($rpt->{tfile}, undef, 'tfile 201211221853-KDMN');
is($rpt->{thpressure}, undef, 'thpressure 201211221853-KDMN');
is($rpt->{time}, '1853', 'time 201211221853-KDMN');
is($rpt->{visibility_km}, '16', 'visibility_km 201211221853-KDMN');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211221853-KDMN');
is($rpt->{windchill_c}, undef, 'windchill_c 201211221853-KDMN');
is($rpt->{windchill_f}, undef, 'windchill_f 201211221853-KDMN');
is($rpt->{winddir}, '0', 'winddir 201211221853-KDMN');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211221853-KDMN');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211221853-KDMN');
is($rpt->{windgustkts}, '0', 'windgustkts 201211221853-KDMN');
is($rpt->{windgustmph}, '0', 'windgustmph 201211221853-KDMN');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211221853-KDMN');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211221853-KDMN');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211221853-KDMN');
