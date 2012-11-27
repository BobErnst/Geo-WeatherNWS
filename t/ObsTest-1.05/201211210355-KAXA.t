#!perl -T

use strict;
use warnings;

# Test 201211210355-KAXA
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KAXA 210355Z AUTO 19013KT 10SM CLR 07/M01 A3010 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KAXA 210355Z AUTO 19013KT 10SM CLR 07/M01 A3010 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210355-KAXA');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210355-KAXA');
is($rpt->{code}, 'KAXA', 'code 201211210355-KAXA');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KAXA');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KAXA');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210355-KAXA');
is($rpt->{day}, '21', 'day 201211210355-KAXA');
is($rpt->{dewpoint_c}, '-1', 'dewpoint_c 201211210355-KAXA');
is($rpt->{dewpoint_f}, '30', 'dewpoint_f 201211210355-KAXA');
is($rpt->{error}, undef, 'error 201211210355-KAXA');
is($rpt->{errortext}, undef, 'errortext 201211210355-KAXA');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KAXA');
is($rpt->{heat_index_c}, '46', 'heat_index_c 201211210355-KAXA');
is($rpt->{heat_index_f}, '114', 'heat_index_f 201211210355-KAXA');
is($rpt->{http}, undef, 'http 201211210355-KAXA');
is($rpt->{intensity}, undef, 'intensity 201211210355-KAXA');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KAXA');
is($rpt->{obs}, '2012/11/21 03:55 KAXA 210355Z AUTO 19013KT 10SM CLR 07/M01 A3010 RMK AO2 ', 'obs 201211210355-KAXA');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KAXA');
is($rpt->{pressure_inhg}, '30.10', 'pressure_inhg 201211210355-KAXA');
is($rpt->{pressure_kgcm}, '1.03940116', 'pressure_kgcm 201211210355-KAXA');
is($rpt->{pressure_lbin}, '14.7837354', 'pressure_lbin 201211210355-KAXA');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211210355-KAXA');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210355-KAXA');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210355-KAXA');
is($rpt->{relative_humidity}, '57', 'relative_humidity 201211210355-KAXA');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211210355-KAXA');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KAXA');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KAXA');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KAXA');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KAXA');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KAXA');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KAXA');
is($rpt->{storm}, undef, 'storm 201211210355-KAXA');
is($rpt->{temperature_c}, '07', 'temperature_c 201211210355-KAXA');
is($rpt->{temperature_f}, '45', 'temperature_f 201211210355-KAXA');
is($rpt->{templateout}, undef, 'templateout 201211210355-KAXA');
is($rpt->{tfile}, undef, 'tfile 201211210355-KAXA');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KAXA');
is($rpt->{time}, '0355', 'time 201211210355-KAXA');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210355-KAXA');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210355-KAXA');
is($rpt->{windchill_c}, '3', 'windchill_c 201211210355-KAXA');
is($rpt->{windchill_f}, '38', 'windchill_f 201211210355-KAXA');
is($rpt->{winddir}, '190', 'winddir 201211210355-KAXA');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210355-KAXA');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KAXA');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KAXA');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KAXA');
is($rpt->{windspeedkmh}, '24', 'windspeedkmh 201211210355-KAXA');
is($rpt->{windspeedkts}, '13', 'windspeedkts 201211210355-KAXA');
is($rpt->{windspeedmph}, '15', 'windspeedmph 201211210355-KAXA');
