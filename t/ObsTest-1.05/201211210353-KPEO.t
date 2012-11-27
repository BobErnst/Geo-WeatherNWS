#!perl -T

use strict;
use warnings;

# Test 201211210353-KPEO
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:53 KPEO 210353Z AUTO 00000KT 6SM BR CLR M01/M02 A3015 RMK AO2 SLP218 T10061017 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:53 KPEO 210353Z AUTO 00000KT 6SM BR CLR M01/M02 A3015 RMK AO2 SLP218 T10061017 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210353-KPEO');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210353-KPEO');
is($rpt->{code}, 'KPEO', 'code 201211210353-KPEO');
is($rpt->{conditions1}, 'Mist', 'conditions1 201211210353-KPEO');
is($rpt->{conditions2}, undef, 'conditions2 201211210353-KPEO');
is($rpt->{conditionstext}, 'Mist', 'conditionstext 201211210353-KPEO');
is($rpt->{day}, '21', 'day 201211210353-KPEO');
is($rpt->{dewpoint_c}, '-2', 'dewpoint_c 201211210353-KPEO');
is($rpt->{dewpoint_f}, '28', 'dewpoint_f 201211210353-KPEO');
is($rpt->{error}, undef, 'error 201211210353-KPEO');
is($rpt->{errortext}, undef, 'errortext 201211210353-KPEO');
is($rpt->{eventbe}, undef, 'eventbe 201211210353-KPEO');
is($rpt->{heat_index_c}, '73', 'heat_index_c 201211210353-KPEO');
is($rpt->{heat_index_f}, '163', 'heat_index_f 201211210353-KPEO');
is($rpt->{http}, undef, 'http 201211210353-KPEO');
is($rpt->{intensity}, undef, 'intensity 201211210353-KPEO');
is($rpt->{maintenance}, undef, 'maintenance 201211210353-KPEO');
is($rpt->{obs}, '2012/11/21 03:53 KPEO 210353Z AUTO 00000KT 6SM BR CLR M01/M02 A3015 RMK AO2 SLP218 T10061017 ', 'obs 201211210353-KPEO');
is($rpt->{precipslr}, undef, 'precipslr 201211210353-KPEO');
is($rpt->{pressure_inhg}, '30.15', 'pressure_inhg 201211210353-KPEO');
is($rpt->{pressure_kgcm}, '1.04112774', 'pressure_kgcm 201211210353-KPEO');
is($rpt->{pressure_lbin}, '14.8082931', 'pressure_lbin 201211210353-KPEO');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210353-KPEO');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210353-KPEO');
is($rpt->{ptemperature}, 'T10061017', 'ptemperature 201211210353-KPEO');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211210353-KPEO');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1021.8','T10061017'], 'remark_arrayref 201211210353-KPEO');
is($rpt->{slp_inhg}, '30.17', 'slp_inhg 201211210353-KPEO');
is($rpt->{slp_kgcm}, '1.041949896', 'slp_kgcm 201211210353-KPEO');
is($rpt->{slp_lbin}, '14.81998284', 'slp_lbin 201211210353-KPEO');
is($rpt->{slp_mb}, '1022', 'slp_mb 201211210353-KPEO');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210353-KPEO');
is($rpt->{station_type}, 'Automated', 'station_type 201211210353-KPEO');
is($rpt->{storm}, undef, 'storm 201211210353-KPEO');
is($rpt->{temperature_c}, '-1', 'temperature_c 201211210353-KPEO');
is($rpt->{temperature_f}, '30', 'temperature_f 201211210353-KPEO');
is($rpt->{templateout}, undef, 'templateout 201211210353-KPEO');
is($rpt->{tfile}, undef, 'tfile 201211210353-KPEO');
is($rpt->{thpressure}, undef, 'thpressure 201211210353-KPEO');
is($rpt->{time}, '0353', 'time 201211210353-KPEO');
is($rpt->{visibility_km}, '10', 'visibility_km 201211210353-KPEO');
is($rpt->{visibility_mi}, '6', 'visibility_mi 201211210353-KPEO');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210353-KPEO');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210353-KPEO');
is($rpt->{winddir}, '0', 'winddir 201211210353-KPEO');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210353-KPEO');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210353-KPEO');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210353-KPEO');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210353-KPEO');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210353-KPEO');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210353-KPEO');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210353-KPEO');
