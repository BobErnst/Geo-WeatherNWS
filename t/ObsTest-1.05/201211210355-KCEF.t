#!perl -T

use strict;
use warnings;

# Test 201211210355-KCEF
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KCEF 210355Z AUTO 00000KT 10SM CLR M01/M03 A3016 RMK AO2 SLP218 T10091028 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KCEF 210355Z AUTO 00000KT 10SM CLR M01/M03 A3016 RMK AO2 SLP218 T10091028 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210355-KCEF');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210355-KCEF');
is($rpt->{code}, 'KCEF', 'code 201211210355-KCEF');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KCEF');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KCEF');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210355-KCEF');
is($rpt->{day}, '21', 'day 201211210355-KCEF');
is($rpt->{dewpoint_c}, '-3', 'dewpoint_c 201211210355-KCEF');
is($rpt->{dewpoint_f}, '27', 'dewpoint_f 201211210355-KCEF');
is($rpt->{error}, undef, 'error 201211210355-KCEF');
is($rpt->{errortext}, undef, 'errortext 201211210355-KCEF');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KCEF');
is($rpt->{heat_index_c}, '77', 'heat_index_c 201211210355-KCEF');
is($rpt->{heat_index_f}, '170', 'heat_index_f 201211210355-KCEF');
is($rpt->{http}, undef, 'http 201211210355-KCEF');
is($rpt->{intensity}, undef, 'intensity 201211210355-KCEF');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KCEF');
is($rpt->{obs}, '2012/11/21 03:55 KCEF 210355Z AUTO 00000KT 10SM CLR M01/M03 A3016 RMK AO2 SLP218 T10091028 ', 'obs 201211210355-KCEF');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KCEF');
is($rpt->{pressure_inhg}, '30.16', 'pressure_inhg 201211210355-KCEF');
is($rpt->{pressure_kgcm}, '1.041473056', 'pressure_kgcm 201211210355-KCEF');
is($rpt->{pressure_lbin}, '14.81320464', 'pressure_lbin 201211210355-KCEF');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210355-KCEF');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210355-KCEF');
is($rpt->{ptemperature}, 'T10091028', 'ptemperature 201211210355-KCEF');
is($rpt->{relative_humidity}, '86', 'relative_humidity 201211210355-KCEF');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1021.8','T10091028'], 'remark_arrayref 201211210355-KCEF');
is($rpt->{slp_inhg}, '30.17', 'slp_inhg 201211210355-KCEF');
is($rpt->{slp_kgcm}, '1.041949896', 'slp_kgcm 201211210355-KCEF');
is($rpt->{slp_lbin}, '14.81998284', 'slp_lbin 201211210355-KCEF');
is($rpt->{slp_mb}, '1022', 'slp_mb 201211210355-KCEF');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210355-KCEF');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KCEF');
is($rpt->{storm}, undef, 'storm 201211210355-KCEF');
is($rpt->{temperature_c}, '-1', 'temperature_c 201211210355-KCEF');
is($rpt->{temperature_f}, '30', 'temperature_f 201211210355-KCEF');
is($rpt->{templateout}, undef, 'templateout 201211210355-KCEF');
is($rpt->{tfile}, undef, 'tfile 201211210355-KCEF');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KCEF');
is($rpt->{time}, '0355', 'time 201211210355-KCEF');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210355-KCEF');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210355-KCEF');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210355-KCEF');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210355-KCEF');
is($rpt->{winddir}, '0', 'winddir 201211210355-KCEF');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210355-KCEF');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KCEF');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KCEF');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KCEF');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210355-KCEF');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210355-KCEF');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210355-KCEF');
