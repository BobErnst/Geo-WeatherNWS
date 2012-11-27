#!perl -T

use strict;
use warnings;

# Test 201211230355-KAST
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 03:55 KAST 230355Z AUTO 13007KT 10SM CLR 08/03 A3020 RMK AO2 SLP226 T00830028 $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 03:55 KAST 230355Z AUTO 13007KT 10SM CLR 08/03 A3020 RMK AO2 SLP226 T00830028 $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211230355-KAST');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211230355-KAST');
is($rpt->{code}, 'KAST', 'code 201211230355-KAST');
is($rpt->{conditions1}, undef, 'conditions1 201211230355-KAST');
is($rpt->{conditions2}, undef, 'conditions2 201211230355-KAST');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211230355-KAST');
is($rpt->{day}, '23', 'day 201211230355-KAST');
is($rpt->{dewpoint_c}, '03', 'dewpoint_c 201211230355-KAST');
is($rpt->{dewpoint_f}, '37', 'dewpoint_f 201211230355-KAST');
is($rpt->{error}, undef, 'error 201211230355-KAST');
is($rpt->{errortext}, undef, 'errortext 201211230355-KAST');
is($rpt->{eventbe}, undef, 'eventbe 201211230355-KAST');
is($rpt->{heat_index_c}, '42', 'heat_index_c 201211230355-KAST');
is($rpt->{heat_index_f}, '107', 'heat_index_f 201211230355-KAST');
is($rpt->{http}, undef, 'http 201211230355-KAST');
is($rpt->{intensity}, undef, 'intensity 201211230355-KAST');
is($rpt->{maintenance}, '$', 'maintenance 201211230355-KAST');
is($rpt->{obs}, '2012/11/23 03:55 KAST 230355Z AUTO 13007KT 10SM CLR 08/03 A3020 RMK AO2 SLP226 T00830028 $ ', 'obs 201211230355-KAST');
is($rpt->{precipslr}, undef, 'precipslr 201211230355-KAST');
is($rpt->{pressure_inhg}, '30.20', 'pressure_inhg 201211230355-KAST');
is($rpt->{pressure_kgcm}, '1.04285432', 'pressure_kgcm 201211230355-KAST');
is($rpt->{pressure_lbin}, '14.8328508', 'pressure_lbin 201211230355-KAST');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211230355-KAST');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211230355-KAST');
is($rpt->{ptemperature}, 'T00830028', 'ptemperature 201211230355-KAST');
is($rpt->{relative_humidity}, '71', 'relative_humidity 201211230355-KAST');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1022.6','T00830028','$'], 'remark_arrayref 201211230355-KAST');
is($rpt->{slp_inhg}, '30.19', 'slp_inhg 201211230355-KAST');
is($rpt->{slp_kgcm}, '1.042765672', 'slp_kgcm 201211230355-KAST');
is($rpt->{slp_lbin}, '14.83158588', 'slp_lbin 201211230355-KAST');
is($rpt->{slp_mb}, '1023', 'slp_mb 201211230355-KAST');
is($rpt->{slp_mmhg}, '767', 'slp_mmhg 201211230355-KAST');
is($rpt->{station_type}, 'Automated', 'station_type 201211230355-KAST');
is($rpt->{storm}, undef, 'storm 201211230355-KAST');
is($rpt->{temperature_c}, '08', 'temperature_c 201211230355-KAST');
is($rpt->{temperature_f}, '46', 'temperature_f 201211230355-KAST');
is($rpt->{templateout}, undef, 'templateout 201211230355-KAST');
is($rpt->{tfile}, undef, 'tfile 201211230355-KAST');
is($rpt->{thpressure}, undef, 'thpressure 201211230355-KAST');
is($rpt->{time}, '0355', 'time 201211230355-KAST');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230355-KAST');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230355-KAST');
is($rpt->{windchill_c}, '6', 'windchill_c 201211230355-KAST');
is($rpt->{windchill_f}, '42', 'windchill_f 201211230355-KAST');
is($rpt->{winddir}, '130', 'winddir 201211230355-KAST');
is($rpt->{winddirtext}, 'Southeast', 'winddirtext 201211230355-KAST');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230355-KAST');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230355-KAST');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230355-KAST');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211230355-KAST');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211230355-KAST');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211230355-KAST');
