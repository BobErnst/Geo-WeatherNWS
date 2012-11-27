#!perl -T

use strict;
use warnings;

# Test 201211210355-KHRJ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KHRJ 210355Z AUTO 00000KT 10SM CLR 06/05 A3010 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KHRJ 210355Z AUTO 00000KT 10SM CLR 06/05 A3010 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210355-KHRJ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210355-KHRJ');
is($rpt->{code}, 'KHRJ', 'code 201211210355-KHRJ');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KHRJ');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KHRJ');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210355-KHRJ');
is($rpt->{day}, '21', 'day 201211210355-KHRJ');
is($rpt->{dewpoint_c}, '05', 'dewpoint_c 201211210355-KHRJ');
is($rpt->{dewpoint_f}, '41', 'dewpoint_f 201211210355-KHRJ');
is($rpt->{error}, undef, 'error 201211210355-KHRJ');
is($rpt->{errortext}, undef, 'errortext 201211210355-KHRJ');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KHRJ');
is($rpt->{heat_index_c}, '38', 'heat_index_c 201211210355-KHRJ');
is($rpt->{heat_index_f}, '101', 'heat_index_f 201211210355-KHRJ');
is($rpt->{http}, undef, 'http 201211210355-KHRJ');
is($rpt->{intensity}, undef, 'intensity 201211210355-KHRJ');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KHRJ');
is($rpt->{obs}, '2012/11/21 03:55 KHRJ 210355Z AUTO 00000KT 10SM CLR 06/05 A3010 RMK AO2 ', 'obs 201211210355-KHRJ');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KHRJ');
is($rpt->{pressure_inhg}, '30.10', 'pressure_inhg 201211210355-KHRJ');
is($rpt->{pressure_kgcm}, '1.03940116', 'pressure_kgcm 201211210355-KHRJ');
is($rpt->{pressure_lbin}, '14.7837354', 'pressure_lbin 201211210355-KHRJ');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211210355-KHRJ');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210355-KHRJ');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210355-KHRJ');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211210355-KHRJ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211210355-KHRJ');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KHRJ');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KHRJ');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KHRJ');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KHRJ');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KHRJ');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KHRJ');
is($rpt->{storm}, undef, 'storm 201211210355-KHRJ');
is($rpt->{temperature_c}, '06', 'temperature_c 201211210355-KHRJ');
is($rpt->{temperature_f}, '43', 'temperature_f 201211210355-KHRJ');
is($rpt->{templateout}, undef, 'templateout 201211210355-KHRJ');
is($rpt->{tfile}, undef, 'tfile 201211210355-KHRJ');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KHRJ');
is($rpt->{time}, '0355', 'time 201211210355-KHRJ');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210355-KHRJ');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210355-KHRJ');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210355-KHRJ');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210355-KHRJ');
is($rpt->{winddir}, '0', 'winddir 201211210355-KHRJ');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210355-KHRJ');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KHRJ');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KHRJ');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KHRJ');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210355-KHRJ');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210355-KHRJ');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210355-KHRJ');
