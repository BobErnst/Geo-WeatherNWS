#!perl -T

use strict;
use warnings;

# Test 201211210356-KNMM
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:56 KNMM 210356Z 00000KT 10SM CLR 08/06 A3017 RMK AO2 SLP227 T00830061 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:56 KNMM 210356Z 00000KT 10SM CLR 08/06 A3017 RMK AO2 SLP227 T00830061 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210356-KNMM');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210356-KNMM');
is($rpt->{code}, 'KNMM', 'code 201211210356-KNMM');
is($rpt->{conditions1}, undef, 'conditions1 201211210356-KNMM');
is($rpt->{conditions2}, undef, 'conditions2 201211210356-KNMM');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210356-KNMM');
is($rpt->{day}, '21', 'day 201211210356-KNMM');
is($rpt->{dewpoint_c}, '06', 'dewpoint_c 201211210356-KNMM');
is($rpt->{dewpoint_f}, '43', 'dewpoint_f 201211210356-KNMM');
is($rpt->{error}, undef, 'error 201211210356-KNMM');
is($rpt->{errortext}, undef, 'errortext 201211210356-KNMM');
is($rpt->{eventbe}, undef, 'eventbe 201211210356-KNMM');
is($rpt->{heat_index_c}, '35', 'heat_index_c 201211210356-KNMM');
is($rpt->{heat_index_f}, '95', 'heat_index_f 201211210356-KNMM');
is($rpt->{http}, undef, 'http 201211210356-KNMM');
is($rpt->{intensity}, undef, 'intensity 201211210356-KNMM');
is($rpt->{maintenance}, undef, 'maintenance 201211210356-KNMM');
is($rpt->{obs}, '2012/11/21 03:56 KNMM 210356Z 00000KT 10SM CLR 08/06 A3017 RMK AO2 SLP227 T00830061 ', 'obs 201211210356-KNMM');
is($rpt->{precipslr}, undef, 'precipslr 201211210356-KNMM');
is($rpt->{pressure_inhg}, '30.17', 'pressure_inhg 201211210356-KNMM');
is($rpt->{pressure_kgcm}, '1.041818372', 'pressure_kgcm 201211210356-KNMM');
is($rpt->{pressure_lbin}, '14.81811618', 'pressure_lbin 201211210356-KNMM');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211210356-KNMM');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210356-KNMM');
is($rpt->{ptemperature}, 'T00830061', 'ptemperature 201211210356-KNMM');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211210356-KNMM');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1022.7','T00830061'], 'remark_arrayref 201211210356-KNMM');
is($rpt->{slp_inhg}, '30.20', 'slp_inhg 201211210356-KNMM');
is($rpt->{slp_kgcm}, '1.042867644', 'slp_kgcm 201211210356-KNMM');
is($rpt->{slp_lbin}, '14.83303626', 'slp_lbin 201211210356-KNMM');
is($rpt->{slp_mb}, '1023', 'slp_mb 201211210356-KNMM');
is($rpt->{slp_mmhg}, '767', 'slp_mmhg 201211210356-KNMM');
is($rpt->{station_type}, 'Automated', 'station_type 201211210356-KNMM');
is($rpt->{storm}, undef, 'storm 201211210356-KNMM');
is($rpt->{temperature_c}, '08', 'temperature_c 201211210356-KNMM');
is($rpt->{temperature_f}, '46', 'temperature_f 201211210356-KNMM');
is($rpt->{templateout}, undef, 'templateout 201211210356-KNMM');
is($rpt->{tfile}, undef, 'tfile 201211210356-KNMM');
is($rpt->{thpressure}, undef, 'thpressure 201211210356-KNMM');
is($rpt->{time}, '0356', 'time 201211210356-KNMM');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210356-KNMM');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210356-KNMM');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210356-KNMM');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210356-KNMM');
is($rpt->{winddir}, '0', 'winddir 201211210356-KNMM');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210356-KNMM');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210356-KNMM');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210356-KNMM');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210356-KNMM');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210356-KNMM');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210356-KNMM');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210356-KNMM');
