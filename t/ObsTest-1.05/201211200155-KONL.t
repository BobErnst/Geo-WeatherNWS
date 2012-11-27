#!perl -T

use strict;
use warnings;

# Test 201211200155-KONL
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:55 KONL 200155Z AUTO 31007KT 10SM CLR 06/M02 A3017 RMK AO2 T00551022 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:55 KONL 200155Z AUTO 31007KT 10SM CLR 06/M02 A3017 RMK AO2 T00551022 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211200155-KONL');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211200155-KONL');
is($rpt->{code}, 'KONL', 'code 201211200155-KONL');
is($rpt->{conditions1}, undef, 'conditions1 201211200155-KONL');
is($rpt->{conditions2}, undef, 'conditions2 201211200155-KONL');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211200155-KONL');
is($rpt->{day}, '20', 'day 201211200155-KONL');
is($rpt->{dewpoint_c}, '-2', 'dewpoint_c 201211200155-KONL');
is($rpt->{dewpoint_f}, '28', 'dewpoint_f 201211200155-KONL');
is($rpt->{error}, undef, 'error 201211200155-KONL');
is($rpt->{errortext}, undef, 'errortext 201211200155-KONL');
is($rpt->{eventbe}, undef, 'eventbe 201211200155-KONL');
is($rpt->{heat_index_c}, '49', 'heat_index_c 201211200155-KONL');
is($rpt->{heat_index_f}, '119', 'heat_index_f 201211200155-KONL');
is($rpt->{http}, undef, 'http 201211200155-KONL');
is($rpt->{intensity}, undef, 'intensity 201211200155-KONL');
is($rpt->{maintenance}, undef, 'maintenance 201211200155-KONL');
is($rpt->{obs}, '2012/11/20 01:55 KONL 200155Z AUTO 31007KT 10SM CLR 06/M02 A3017 RMK AO2 T00551022 ', 'obs 201211200155-KONL');
is($rpt->{precipslr}, undef, 'precipslr 201211200155-KONL');
is($rpt->{pressure_inhg}, '30.17', 'pressure_inhg 201211200155-KONL');
is($rpt->{pressure_kgcm}, '1.041818372', 'pressure_kgcm 201211200155-KONL');
is($rpt->{pressure_lbin}, '14.81811618', 'pressure_lbin 201211200155-KONL');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211200155-KONL');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211200155-KONL');
is($rpt->{ptemperature}, 'T00551022', 'ptemperature 201211200155-KONL');
is($rpt->{relative_humidity}, '56', 'relative_humidity 201211200155-KONL');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00551022'], 'remark_arrayref 201211200155-KONL');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211200155-KONL');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211200155-KONL');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211200155-KONL');
is($rpt->{slp_mb}, undef, 'slp_mb 201211200155-KONL');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211200155-KONL');
is($rpt->{station_type}, 'Automated', 'station_type 201211200155-KONL');
is($rpt->{storm}, undef, 'storm 201211200155-KONL');
is($rpt->{temperature_c}, '06', 'temperature_c 201211200155-KONL');
is($rpt->{temperature_f}, '43', 'temperature_f 201211200155-KONL');
is($rpt->{templateout}, undef, 'templateout 201211200155-KONL');
is($rpt->{tfile}, undef, 'tfile 201211200155-KONL');
is($rpt->{thpressure}, undef, 'thpressure 201211200155-KONL');
is($rpt->{time}, '0155', 'time 201211200155-KONL');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200155-KONL');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200155-KONL');
is($rpt->{windchill_c}, '3', 'windchill_c 201211200155-KONL');
is($rpt->{windchill_f}, '38', 'windchill_f 201211200155-KONL');
is($rpt->{winddir}, '310', 'winddir 201211200155-KONL');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 201211200155-KONL');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200155-KONL');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200155-KONL');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200155-KONL');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211200155-KONL');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211200155-KONL');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211200155-KONL');
