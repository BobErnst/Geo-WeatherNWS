#!perl -T

use strict;
use warnings;

# Test 201211210315-KMPZ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:15 KMPZ 210315Z AUTO 00000KT M1/4SM FG OVC001 05/05 A3020 RMK AO2 T00500047 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:15 KMPZ 210315Z AUTO 00000KT M1/4SM FG OVC001 05/05 A3020 RMK AO2 T00500047 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210315-KMPZ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC001'], 'cloudlevel_arrayref 201211210315-KMPZ');
is($rpt->{code}, 'KMPZ', 'code 201211210315-KMPZ');
is($rpt->{conditions1}, 'Fog', 'conditions1 201211210315-KMPZ');
is($rpt->{conditions2}, undef, 'conditions2 201211210315-KMPZ');
is($rpt->{conditionstext}, 'Fog', 'conditionstext 201211210315-KMPZ');
is($rpt->{day}, '21', 'day 201211210315-KMPZ');
is($rpt->{dewpoint_c}, '05', 'dewpoint_c 201211210315-KMPZ');
is($rpt->{dewpoint_f}, '41', 'dewpoint_f 201211210315-KMPZ');
is($rpt->{error}, undef, 'error 201211210315-KMPZ');
is($rpt->{errortext}, undef, 'errortext 201211210315-KMPZ');
is($rpt->{eventbe}, undef, 'eventbe 201211210315-KMPZ');
is($rpt->{heat_index_c}, '36', 'heat_index_c 201211210315-KMPZ');
is($rpt->{heat_index_f}, '98', 'heat_index_f 201211210315-KMPZ');
is($rpt->{http}, undef, 'http 201211210315-KMPZ');
is($rpt->{intensity}, undef, 'intensity 201211210315-KMPZ');
is($rpt->{maintenance}, undef, 'maintenance 201211210315-KMPZ');
is($rpt->{obs}, '2012/11/21 03:15 KMPZ 210315Z AUTO 00000KT M1/4SM FG OVC001 05/05 A3020 RMK AO2 T00500047 ', 'obs 201211210315-KMPZ');
is($rpt->{precipslr}, undef, 'precipslr 201211210315-KMPZ');
is($rpt->{pressure_inhg}, '30.20', 'pressure_inhg 201211210315-KMPZ');
is($rpt->{pressure_kgcm}, '1.04285432', 'pressure_kgcm 201211210315-KMPZ');
is($rpt->{pressure_lbin}, '14.8328508', 'pressure_lbin 201211210315-KMPZ');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211210315-KMPZ');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211210315-KMPZ');
is($rpt->{ptemperature}, 'T00500047', 'ptemperature 201211210315-KMPZ');
is($rpt->{relative_humidity}, '100', 'relative_humidity 201211210315-KMPZ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00500047'], 'remark_arrayref 201211210315-KMPZ');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210315-KMPZ');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210315-KMPZ');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210315-KMPZ');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210315-KMPZ');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210315-KMPZ');
is($rpt->{station_type}, 'Automated', 'station_type 201211210315-KMPZ');
is($rpt->{storm}, undef, 'storm 201211210315-KMPZ');
is($rpt->{temperature_c}, '05', 'temperature_c 201211210315-KMPZ');
is($rpt->{temperature_f}, '41', 'temperature_f 201211210315-KMPZ');
is($rpt->{templateout}, undef, 'templateout 201211210315-KMPZ');
is($rpt->{tfile}, undef, 'tfile 201211210315-KMPZ');
is($rpt->{thpressure}, undef, 'thpressure 201211210315-KMPZ');
is($rpt->{time}, '0315', 'time 201211210315-KMPZ');
is($rpt->{visibility_km}, '0', 'visibility_km 201211210315-KMPZ');
is($rpt->{visibility_mi}, '0', 'visibility_mi 201211210315-KMPZ');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210315-KMPZ');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210315-KMPZ');
is($rpt->{winddir}, '0', 'winddir 201211210315-KMPZ');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210315-KMPZ');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210315-KMPZ');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210315-KMPZ');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210315-KMPZ');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210315-KMPZ');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210315-KMPZ');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210315-KMPZ');
