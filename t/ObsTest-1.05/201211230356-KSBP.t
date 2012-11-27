#!perl -T

use strict;
use warnings;

# Test 201211230356-KSBP
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 03:56 KSBP 230356Z AUTO 00000KT 10SM CLR 14/08 A3012 RMK AO2 SLP200 T01440083 $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 03:56 KSBP 230356Z AUTO 00000KT 10SM CLR 14/08 A3012 RMK AO2 SLP200 T01440083 $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211230356-KSBP');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211230356-KSBP');
is($rpt->{code}, 'KSBP', 'code 201211230356-KSBP');
is($rpt->{conditions1}, undef, 'conditions1 201211230356-KSBP');
is($rpt->{conditions2}, undef, 'conditions2 201211230356-KSBP');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211230356-KSBP');
is($rpt->{day}, '23', 'day 201211230356-KSBP');
is($rpt->{dewpoint_c}, '08', 'dewpoint_c 201211230356-KSBP');
is($rpt->{dewpoint_f}, '46', 'dewpoint_f 201211230356-KSBP');
is($rpt->{error}, undef, 'error 201211230356-KSBP');
is($rpt->{errortext}, undef, 'errortext 201211230356-KSBP');
is($rpt->{eventbe}, undef, 'eventbe 201211230356-KSBP');
is($rpt->{heat_index_c}, '29', 'heat_index_c 201211230356-KSBP');
is($rpt->{heat_index_f}, '84', 'heat_index_f 201211230356-KSBP');
is($rpt->{http}, undef, 'http 201211230356-KSBP');
is($rpt->{intensity}, undef, 'intensity 201211230356-KSBP');
is($rpt->{maintenance}, '$', 'maintenance 201211230356-KSBP');
is($rpt->{obs}, '2012/11/23 03:56 KSBP 230356Z AUTO 00000KT 10SM CLR 14/08 A3012 RMK AO2 SLP200 T01440083 $ ', 'obs 201211230356-KSBP');
is($rpt->{precipslr}, undef, 'precipslr 201211230356-KSBP');
is($rpt->{pressure_inhg}, '30.12', 'pressure_inhg 201211230356-KSBP');
is($rpt->{pressure_kgcm}, '1.040091792', 'pressure_kgcm 201211230356-KSBP');
is($rpt->{pressure_lbin}, '14.79355848', 'pressure_lbin 201211230356-KSBP');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211230356-KSBP');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211230356-KSBP');
is($rpt->{ptemperature}, 'T01440083', 'ptemperature 201211230356-KSBP');
is($rpt->{relative_humidity}, '67', 'relative_humidity 201211230356-KSBP');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2',1020,'T01440083','$'], 'remark_arrayref 201211230356-KSBP');
is($rpt->{slp_inhg}, '30.12', 'slp_inhg 201211230356-KSBP');
is($rpt->{slp_kgcm}, '1.0401144', 'slp_kgcm 201211230356-KSBP');
is($rpt->{slp_lbin}, '14.793876', 'slp_lbin 201211230356-KSBP');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211230356-KSBP');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211230356-KSBP');
is($rpt->{station_type}, 'Automated', 'station_type 201211230356-KSBP');
is($rpt->{storm}, undef, 'storm 201211230356-KSBP');
is($rpt->{temperature_c}, '14', 'temperature_c 201211230356-KSBP');
is($rpt->{temperature_f}, '57', 'temperature_f 201211230356-KSBP');
is($rpt->{templateout}, undef, 'templateout 201211230356-KSBP');
is($rpt->{tfile}, undef, 'tfile 201211230356-KSBP');
is($rpt->{thpressure}, undef, 'thpressure 201211230356-KSBP');
is($rpt->{time}, '0356', 'time 201211230356-KSBP');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230356-KSBP');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230356-KSBP');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230356-KSBP');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230356-KSBP');
is($rpt->{winddir}, '0', 'winddir 201211230356-KSBP');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211230356-KSBP');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230356-KSBP');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230356-KSBP');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230356-KSBP');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211230356-KSBP');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211230356-KSBP');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211230356-KSBP');
