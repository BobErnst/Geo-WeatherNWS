#!perl -T

use strict;
use warnings;

# Test 201211210354-KLNK
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:54 KLNK 210354Z 14004KT 10SM CLR 06/00 A3015 RMK AO2 SLP217 T00610000 $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:54 KLNK 210354Z 14004KT 10SM CLR 06/00 A3015 RMK AO2 SLP217 T00610000 $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210354-KLNK');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210354-KLNK');
is($rpt->{code}, 'KLNK', 'code 201211210354-KLNK');
is($rpt->{conditions1}, undef, 'conditions1 201211210354-KLNK');
is($rpt->{conditions2}, undef, 'conditions2 201211210354-KLNK');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210354-KLNK');
is($rpt->{day}, '21', 'day 201211210354-KLNK');
is($rpt->{dewpoint_c}, '00', 'dewpoint_c 201211210354-KLNK');
is($rpt->{dewpoint_f}, '32', 'dewpoint_f 201211210354-KLNK');
is($rpt->{error}, undef, 'error 201211210354-KLNK');
is($rpt->{errortext}, undef, 'errortext 201211210354-KLNK');
is($rpt->{eventbe}, undef, 'eventbe 201211210354-KLNK');
is($rpt->{heat_index_c}, '49', 'heat_index_c 201211210354-KLNK');
is($rpt->{heat_index_f}, '120', 'heat_index_f 201211210354-KLNK');
is($rpt->{http}, undef, 'http 201211210354-KLNK');
is($rpt->{intensity}, undef, 'intensity 201211210354-KLNK');
is($rpt->{maintenance}, '$', 'maintenance 201211210354-KLNK');
is($rpt->{obs}, '2012/11/21 03:54 KLNK 210354Z 14004KT 10SM CLR 06/00 A3015 RMK AO2 SLP217 T00610000 $ ', 'obs 201211210354-KLNK');
is($rpt->{precipslr}, undef, 'precipslr 201211210354-KLNK');
is($rpt->{pressure_inhg}, '30.15', 'pressure_inhg 201211210354-KLNK');
is($rpt->{pressure_kgcm}, '1.04112774', 'pressure_kgcm 201211210354-KLNK');
is($rpt->{pressure_lbin}, '14.8082931', 'pressure_lbin 201211210354-KLNK');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210354-KLNK');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210354-KLNK');
is($rpt->{ptemperature}, 'T00610000', 'ptemperature 201211210354-KLNK');
is($rpt->{relative_humidity}, '65', 'relative_humidity 201211210354-KLNK');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1021.7','T00610000','$'], 'remark_arrayref 201211210354-KLNK');
is($rpt->{slp_inhg}, '30.17', 'slp_inhg 201211210354-KLNK');
is($rpt->{slp_kgcm}, '1.041847924', 'slp_kgcm 201211210354-KLNK');
is($rpt->{slp_lbin}, '14.81853246', 'slp_lbin 201211210354-KLNK');
is($rpt->{slp_mb}, '1022', 'slp_mb 201211210354-KLNK');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210354-KLNK');
is($rpt->{station_type}, 'Automated', 'station_type 201211210354-KLNK');
is($rpt->{storm}, undef, 'storm 201211210354-KLNK');
is($rpt->{temperature_c}, '06', 'temperature_c 201211210354-KLNK');
is($rpt->{temperature_f}, '43', 'temperature_f 201211210354-KLNK');
is($rpt->{templateout}, undef, 'templateout 201211210354-KLNK');
is($rpt->{tfile}, undef, 'tfile 201211210354-KLNK');
is($rpt->{thpressure}, undef, 'thpressure 201211210354-KLNK');
is($rpt->{time}, '0354', 'time 201211210354-KLNK');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210354-KLNK');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210354-KLNK');
is($rpt->{windchill_c}, '4', 'windchill_c 201211210354-KLNK');
is($rpt->{windchill_f}, '40', 'windchill_f 201211210354-KLNK');
is($rpt->{winddir}, '140', 'winddir 201211210354-KLNK');
is($rpt->{winddirtext}, 'Southeast', 'winddirtext 201211210354-KLNK');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210354-KLNK');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210354-KLNK');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210354-KLNK');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211210354-KLNK');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211210354-KLNK');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211210354-KLNK');
