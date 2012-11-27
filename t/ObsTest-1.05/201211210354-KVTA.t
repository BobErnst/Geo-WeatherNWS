#!perl -T

use strict;
use warnings;

# Test 201211210354-KVTA
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:54 KVTA 210354Z AUTO 00000KT 10SM FEW060 SCT080 06/03 A3014 RMK AO2 SLP208 T00560033 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:54 KVTA 210354Z AUTO 00000KT 10SM FEW060 SCT080 06/03 A3014 RMK AO2 SLP208 T00560033 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Partly Cloudy', 'cloudcover 201211210354-KVTA');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW060','SCT080'], 'cloudlevel_arrayref 201211210354-KVTA');
is($rpt->{code}, 'KVTA', 'code 201211210354-KVTA');
is($rpt->{conditions1}, undef, 'conditions1 201211210354-KVTA');
is($rpt->{conditions2}, undef, 'conditions2 201211210354-KVTA');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211210354-KVTA');
is($rpt->{day}, '21', 'day 201211210354-KVTA');
is($rpt->{dewpoint_c}, '03', 'dewpoint_c 201211210354-KVTA');
is($rpt->{dewpoint_f}, '37', 'dewpoint_f 201211210354-KVTA');
is($rpt->{error}, undef, 'error 201211210354-KVTA');
is($rpt->{errortext}, undef, 'errortext 201211210354-KVTA');
is($rpt->{eventbe}, undef, 'eventbe 201211210354-KVTA');
is($rpt->{heat_index_c}, '45', 'heat_index_c 201211210354-KVTA');
is($rpt->{heat_index_f}, '113', 'heat_index_f 201211210354-KVTA');
is($rpt->{http}, undef, 'http 201211210354-KVTA');
is($rpt->{intensity}, undef, 'intensity 201211210354-KVTA');
is($rpt->{maintenance}, undef, 'maintenance 201211210354-KVTA');
is($rpt->{obs}, '2012/11/21 03:54 KVTA 210354Z AUTO 00000KT 10SM FEW060 SCT080 06/03 A3014 RMK AO2 SLP208 T00560033 ', 'obs 201211210354-KVTA');
is($rpt->{precipslr}, undef, 'precipslr 201211210354-KVTA');
is($rpt->{pressure_inhg}, '30.14', 'pressure_inhg 201211210354-KVTA');
is($rpt->{pressure_kgcm}, '1.040782424', 'pressure_kgcm 201211210354-KVTA');
is($rpt->{pressure_lbin}, '14.80338156', 'pressure_lbin 201211210354-KVTA');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210354-KVTA');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210354-KVTA');
is($rpt->{ptemperature}, 'T00560033', 'ptemperature 201211210354-KVTA');
is($rpt->{relative_humidity}, '81', 'relative_humidity 201211210354-KVTA');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1020.8','T00560033'], 'remark_arrayref 201211210354-KVTA');
is($rpt->{slp_inhg}, '30.14', 'slp_inhg 201211210354-KVTA');
is($rpt->{slp_kgcm}, '1.040930176', 'slp_kgcm 201211210354-KVTA');
is($rpt->{slp_lbin}, '14.80547904', 'slp_lbin 201211210354-KVTA');
is($rpt->{slp_mb}, '1021', 'slp_mb 201211210354-KVTA');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210354-KVTA');
is($rpt->{station_type}, 'Automated', 'station_type 201211210354-KVTA');
is($rpt->{storm}, undef, 'storm 201211210354-KVTA');
is($rpt->{temperature_c}, '06', 'temperature_c 201211210354-KVTA');
is($rpt->{temperature_f}, '43', 'temperature_f 201211210354-KVTA');
is($rpt->{templateout}, undef, 'templateout 201211210354-KVTA');
is($rpt->{tfile}, undef, 'tfile 201211210354-KVTA');
is($rpt->{thpressure}, undef, 'thpressure 201211210354-KVTA');
is($rpt->{time}, '0354', 'time 201211210354-KVTA');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210354-KVTA');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210354-KVTA');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210354-KVTA');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210354-KVTA');
is($rpt->{winddir}, '0', 'winddir 201211210354-KVTA');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210354-KVTA');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210354-KVTA');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210354-KVTA');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210354-KVTA');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210354-KVTA');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210354-KVTA');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210354-KVTA');
