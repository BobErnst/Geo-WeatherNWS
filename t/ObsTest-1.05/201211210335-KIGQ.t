#!perl -T

use strict;
use warnings;

# Test 201211210335-KIGQ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:35 KIGQ 210335Z AUTO 00000KT M1/4SM FG OVC003 03/03 A3018 RMK AO2 T00300027 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:35 KIGQ 210335Z AUTO 00000KT M1/4SM FG OVC003 03/03 A3018 RMK AO2 T00300027 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210335-KIGQ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC003'], 'cloudlevel_arrayref 201211210335-KIGQ');
is($rpt->{code}, 'KIGQ', 'code 201211210335-KIGQ');
is($rpt->{conditions1}, 'Fog', 'conditions1 201211210335-KIGQ');
is($rpt->{conditions2}, undef, 'conditions2 201211210335-KIGQ');
is($rpt->{conditionstext}, 'Fog', 'conditionstext 201211210335-KIGQ');
is($rpt->{day}, '21', 'day 201211210335-KIGQ');
is($rpt->{dewpoint_c}, '03', 'dewpoint_c 201211210335-KIGQ');
is($rpt->{dewpoint_f}, '37', 'dewpoint_f 201211210335-KIGQ');
is($rpt->{error}, undef, 'error 201211210335-KIGQ');
is($rpt->{errortext}, undef, 'errortext 201211210335-KIGQ');
is($rpt->{eventbe}, undef, 'eventbe 201211210335-KIGQ');
is($rpt->{heat_index_c}, '45', 'heat_index_c 201211210335-KIGQ');
is($rpt->{heat_index_f}, '113', 'heat_index_f 201211210335-KIGQ');
is($rpt->{http}, undef, 'http 201211210335-KIGQ');
is($rpt->{intensity}, undef, 'intensity 201211210335-KIGQ');
is($rpt->{maintenance}, undef, 'maintenance 201211210335-KIGQ');
is($rpt->{obs}, '2012/11/21 03:35 KIGQ 210335Z AUTO 00000KT M1/4SM FG OVC003 03/03 A3018 RMK AO2 T00300027 ', 'obs 201211210335-KIGQ');
is($rpt->{precipslr}, undef, 'precipslr 201211210335-KIGQ');
is($rpt->{pressure_inhg}, '30.18', 'pressure_inhg 201211210335-KIGQ');
is($rpt->{pressure_kgcm}, '1.042163688', 'pressure_kgcm 201211210335-KIGQ');
is($rpt->{pressure_lbin}, '14.82302772', 'pressure_lbin 201211210335-KIGQ');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211210335-KIGQ');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211210335-KIGQ');
is($rpt->{ptemperature}, 'T00300027', 'ptemperature 201211210335-KIGQ');
is($rpt->{relative_humidity}, '100', 'relative_humidity 201211210335-KIGQ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00300027'], 'remark_arrayref 201211210335-KIGQ');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210335-KIGQ');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210335-KIGQ');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210335-KIGQ');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210335-KIGQ');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210335-KIGQ');
is($rpt->{station_type}, 'Automated', 'station_type 201211210335-KIGQ');
is($rpt->{storm}, undef, 'storm 201211210335-KIGQ');
is($rpt->{temperature_c}, '03', 'temperature_c 201211210335-KIGQ');
is($rpt->{temperature_f}, '37', 'temperature_f 201211210335-KIGQ');
is($rpt->{templateout}, undef, 'templateout 201211210335-KIGQ');
is($rpt->{tfile}, undef, 'tfile 201211210335-KIGQ');
is($rpt->{thpressure}, undef, 'thpressure 201211210335-KIGQ');
is($rpt->{time}, '0335', 'time 201211210335-KIGQ');
is($rpt->{visibility_km}, '0', 'visibility_km 201211210335-KIGQ');
is($rpt->{visibility_mi}, '0', 'visibility_mi 201211210335-KIGQ');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210335-KIGQ');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210335-KIGQ');
is($rpt->{winddir}, '0', 'winddir 201211210335-KIGQ');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210335-KIGQ');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210335-KIGQ');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210335-KIGQ');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210335-KIGQ');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210335-KIGQ');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210335-KIGQ');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210335-KIGQ');
