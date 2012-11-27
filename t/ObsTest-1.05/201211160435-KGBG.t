#!perl -T

use strict;
use warnings;

# Test 201211160435-KGBG
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/16 04:35 KGBG 160435Z 10SM CLR 02/M02 A3035 RMK AO2 T00151021

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/16 04:35 KGBG 160435Z 10SM CLR 02/M02 A3035 RMK AO2 T00151021';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211160435-KGBG');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211160435-KGBG');
is($rpt->{code}, 'KGBG', 'code 201211160435-KGBG');
is($rpt->{conditions1}, undef, 'conditions1 201211160435-KGBG');
is($rpt->{conditions2}, undef, 'conditions2 201211160435-KGBG');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211160435-KGBG');
is($rpt->{day}, '16', 'day 201211160435-KGBG');
is($rpt->{dewpoint_c}, '-2', 'dewpoint_c 201211160435-KGBG');
is($rpt->{dewpoint_f}, '28', 'dewpoint_f 201211160435-KGBG');
is($rpt->{error}, undef, 'error 201211160435-KGBG');
is($rpt->{errortext}, undef, 'errortext 201211160435-KGBG');
is($rpt->{eventbe}, undef, 'eventbe 201211160435-KGBG');
is($rpt->{heat_index_c}, '64', 'heat_index_c 201211160435-KGBG');
is($rpt->{heat_index_f}, '148', 'heat_index_f 201211160435-KGBG');
is($rpt->{http}, undef, 'http 201211160435-KGBG');
is($rpt->{intensity}, undef, 'intensity 201211160435-KGBG');
is($rpt->{maintenance}, undef, 'maintenance 201211160435-KGBG');
is($rpt->{obs}, '2012/11/16 04:35 KGBG 160435Z 10SM CLR 02/M02 A3035 RMK AO2 T00151021', 'obs 201211160435-KGBG');
is($rpt->{precipslr}, undef, 'precipslr 201211160435-KGBG');
is($rpt->{pressure_inhg}, '30.35', 'pressure_inhg 201211160435-KGBG');
is($rpt->{pressure_kgcm}, '1.04803406', 'pressure_kgcm 201211160435-KGBG');
is($rpt->{pressure_lbin}, '14.9065239', 'pressure_lbin 201211160435-KGBG');
is($rpt->{pressure_mb}, '1028', 'pressure_mb 201211160435-KGBG');
is($rpt->{pressure_mmhg}, '771', 'pressure_mmhg 201211160435-KGBG');
is($rpt->{ptemperature}, 'T00151021', 'ptemperature 201211160435-KGBG');
is($rpt->{relative_humidity}, '75', 'relative_humidity 201211160435-KGBG');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00151021'], 'remark_arrayref 201211160435-KGBG');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211160435-KGBG');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211160435-KGBG');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211160435-KGBG');
is($rpt->{slp_mb}, undef, 'slp_mb 201211160435-KGBG');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211160435-KGBG');
is($rpt->{station_type}, 'Automated', 'station_type 201211160435-KGBG');
is($rpt->{storm}, undef, 'storm 201211160435-KGBG');
is($rpt->{temperature_c}, '02', 'temperature_c 201211160435-KGBG');
is($rpt->{temperature_f}, '36', 'temperature_f 201211160435-KGBG');
is($rpt->{templateout}, undef, 'templateout 201211160435-KGBG');
is($rpt->{tfile}, undef, 'tfile 201211160435-KGBG');
is($rpt->{thpressure}, undef, 'thpressure 201211160435-KGBG');
is($rpt->{time}, '0435', 'time 201211160435-KGBG');
is($rpt->{visibility_km}, '16', 'visibility_km 201211160435-KGBG');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211160435-KGBG');
is($rpt->{windchill_c}, undef, 'windchill_c 201211160435-KGBG');
is($rpt->{windchill_f}, undef, 'windchill_f 201211160435-KGBG');
is($rpt->{winddir}, undef, 'winddir 201211160435-KGBG');
is($rpt->{winddirtext}, undef, 'winddirtext 201211160435-KGBG');
is($rpt->{windgustkmh}, undef, 'windgustkmh 201211160435-KGBG');
is($rpt->{windgustkts}, undef, 'windgustkts 201211160435-KGBG');
is($rpt->{windgustmph}, undef, 'windgustmph 201211160435-KGBG');
is($rpt->{windspeedkmh}, undef, 'windspeedkmh 201211160435-KGBG');
is($rpt->{windspeedkts}, undef, 'windspeedkts 201211160435-KGBG');
is($rpt->{windspeedmph}, undef, 'windspeedmph 201211160435-KGBG');
