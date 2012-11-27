#!perl -T

use strict;
use warnings;

# Test 201211230415-KENV
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 04:15 KENV 230415Z AUTO 00000KT 10SM CLR 00/M08 A3049 RMK AO1 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 04:15 KENV 230415Z AUTO 00000KT 10SM CLR 00/M08 A3049 RMK AO1 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211230415-KENV');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211230415-KENV');
is($rpt->{code}, 'KENV', 'code 201211230415-KENV');
is($rpt->{conditions1}, undef, 'conditions1 201211230415-KENV');
is($rpt->{conditions2}, undef, 'conditions2 201211230415-KENV');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211230415-KENV');
is($rpt->{day}, '23', 'day 201211230415-KENV');
is($rpt->{dewpoint_c}, '-8', 'dewpoint_c 201211230415-KENV');
is($rpt->{dewpoint_f}, '18', 'dewpoint_f 201211230415-KENV');
is($rpt->{error}, undef, 'error 201211230415-KENV');
is($rpt->{errortext}, undef, 'errortext 201211230415-KENV');
is($rpt->{eventbe}, undef, 'eventbe 201211230415-KENV');
is($rpt->{heat_index_c}, '70', 'heat_index_c 201211230415-KENV');
is($rpt->{heat_index_f}, '158', 'heat_index_f 201211230415-KENV');
is($rpt->{http}, undef, 'http 201211230415-KENV');
is($rpt->{intensity}, undef, 'intensity 201211230415-KENV');
is($rpt->{maintenance}, undef, 'maintenance 201211230415-KENV');
is($rpt->{obs}, '2012/11/23 04:15 KENV 230415Z AUTO 00000KT 10SM CLR 00/M08 A3049 RMK AO1 ', 'obs 201211230415-KENV');
is($rpt->{precipslr}, undef, 'precipslr 201211230415-KENV');
is($rpt->{pressure_inhg}, '30.49', 'pressure_inhg 201211230415-KENV');
is($rpt->{pressure_kgcm}, '1.052868484', 'pressure_kgcm 201211230415-KENV');
is($rpt->{pressure_lbin}, '14.97528546', 'pressure_lbin 201211230415-KENV');
is($rpt->{pressure_mb}, '1033', 'pressure_mb 201211230415-KENV');
is($rpt->{pressure_mmhg}, '774', 'pressure_mmhg 201211230415-KENV');
is($rpt->{ptemperature}, undef, 'ptemperature 201211230415-KENV');
is($rpt->{relative_humidity}, '55', 'relative_humidity 201211230415-KENV');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO1'], 'remark_arrayref 201211230415-KENV');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211230415-KENV');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211230415-KENV');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211230415-KENV');
is($rpt->{slp_mb}, undef, 'slp_mb 201211230415-KENV');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211230415-KENV');
is($rpt->{station_type}, 'Automated', 'station_type 201211230415-KENV');
is($rpt->{storm}, undef, 'storm 201211230415-KENV');
is($rpt->{temperature_c}, '00', 'temperature_c 201211230415-KENV');
is($rpt->{temperature_f}, '32', 'temperature_f 201211230415-KENV');
is($rpt->{templateout}, undef, 'templateout 201211230415-KENV');
is($rpt->{tfile}, undef, 'tfile 201211230415-KENV');
is($rpt->{thpressure}, undef, 'thpressure 201211230415-KENV');
is($rpt->{time}, '0415', 'time 201211230415-KENV');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230415-KENV');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230415-KENV');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230415-KENV');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230415-KENV');
is($rpt->{winddir}, '0', 'winddir 201211230415-KENV');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211230415-KENV');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230415-KENV');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230415-KENV');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230415-KENV');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211230415-KENV');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211230415-KENV');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211230415-KENV');
