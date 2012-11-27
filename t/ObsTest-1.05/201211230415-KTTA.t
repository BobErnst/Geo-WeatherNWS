#!perl -T

use strict;
use warnings;

# Test 201211230415-KTTA
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 04:15 KTTA 230415Z AUTO 00000KT 10SM CLR M01/M03 A3019 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 04:15 KTTA 230415Z AUTO 00000KT 10SM CLR M01/M03 A3019 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211230415-KTTA');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211230415-KTTA');
is($rpt->{code}, 'KTTA', 'code 201211230415-KTTA');
is($rpt->{conditions1}, undef, 'conditions1 201211230415-KTTA');
is($rpt->{conditions2}, undef, 'conditions2 201211230415-KTTA');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211230415-KTTA');
is($rpt->{day}, '23', 'day 201211230415-KTTA');
is($rpt->{dewpoint_c}, '-3', 'dewpoint_c 201211230415-KTTA');
is($rpt->{dewpoint_f}, '27', 'dewpoint_f 201211230415-KTTA');
is($rpt->{error}, undef, 'error 201211230415-KTTA');
is($rpt->{errortext}, undef, 'errortext 201211230415-KTTA');
is($rpt->{eventbe}, undef, 'eventbe 201211230415-KTTA');
is($rpt->{heat_index_c}, '77', 'heat_index_c 201211230415-KTTA');
is($rpt->{heat_index_f}, '170', 'heat_index_f 201211230415-KTTA');
is($rpt->{http}, undef, 'http 201211230415-KTTA');
is($rpt->{intensity}, undef, 'intensity 201211230415-KTTA');
is($rpt->{maintenance}, undef, 'maintenance 201211230415-KTTA');
is($rpt->{obs}, '2012/11/23 04:15 KTTA 230415Z AUTO 00000KT 10SM CLR M01/M03 A3019 RMK AO2 ', 'obs 201211230415-KTTA');
is($rpt->{precipslr}, undef, 'precipslr 201211230415-KTTA');
is($rpt->{pressure_inhg}, '30.19', 'pressure_inhg 201211230415-KTTA');
is($rpt->{pressure_kgcm}, '1.042509004', 'pressure_kgcm 201211230415-KTTA');
is($rpt->{pressure_lbin}, '14.82793926', 'pressure_lbin 201211230415-KTTA');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211230415-KTTA');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211230415-KTTA');
is($rpt->{ptemperature}, undef, 'ptemperature 201211230415-KTTA');
is($rpt->{relative_humidity}, '86', 'relative_humidity 201211230415-KTTA');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211230415-KTTA');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211230415-KTTA');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211230415-KTTA');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211230415-KTTA');
is($rpt->{slp_mb}, undef, 'slp_mb 201211230415-KTTA');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211230415-KTTA');
is($rpt->{station_type}, 'Automated', 'station_type 201211230415-KTTA');
is($rpt->{storm}, undef, 'storm 201211230415-KTTA');
is($rpt->{temperature_c}, '-1', 'temperature_c 201211230415-KTTA');
is($rpt->{temperature_f}, '30', 'temperature_f 201211230415-KTTA');
is($rpt->{templateout}, undef, 'templateout 201211230415-KTTA');
is($rpt->{tfile}, undef, 'tfile 201211230415-KTTA');
is($rpt->{thpressure}, undef, 'thpressure 201211230415-KTTA');
is($rpt->{time}, '0415', 'time 201211230415-KTTA');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230415-KTTA');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230415-KTTA');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230415-KTTA');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230415-KTTA');
is($rpt->{winddir}, '0', 'winddir 201211230415-KTTA');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211230415-KTTA');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230415-KTTA');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230415-KTTA');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230415-KTTA');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211230415-KTTA');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211230415-KTTA');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211230415-KTTA');
