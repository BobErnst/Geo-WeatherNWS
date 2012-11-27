#!perl -T

use strict;
use warnings;

# Test 201211210353-KGGG
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:53 KGGG 210353Z 00000KT 6SM BR CLR 13/11 A3020 RMK AO2 SLP225 T01280111 $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:53 KGGG 210353Z 00000KT 6SM BR CLR 13/11 A3020 RMK AO2 SLP225 T01280111 $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210353-KGGG');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210353-KGGG');
is($rpt->{code}, 'KGGG', 'code 201211210353-KGGG');
is($rpt->{conditions1}, 'Mist', 'conditions1 201211210353-KGGG');
is($rpt->{conditions2}, undef, 'conditions2 201211210353-KGGG');
is($rpt->{conditionstext}, 'Mist', 'conditionstext 201211210353-KGGG');
is($rpt->{day}, '21', 'day 201211210353-KGGG');
is($rpt->{dewpoint_c}, '11', 'dewpoint_c 201211210353-KGGG');
is($rpt->{dewpoint_f}, '52', 'dewpoint_f 201211210353-KGGG');
is($rpt->{error}, undef, 'error 201211210353-KGGG');
is($rpt->{errortext}, undef, 'errortext 201211210353-KGGG');
is($rpt->{eventbe}, undef, 'eventbe 201211210353-KGGG');
is($rpt->{heat_index_c}, '23', 'heat_index_c 201211210353-KGGG');
is($rpt->{heat_index_f}, '73', 'heat_index_f 201211210353-KGGG');
is($rpt->{http}, undef, 'http 201211210353-KGGG');
is($rpt->{intensity}, undef, 'intensity 201211210353-KGGG');
is($rpt->{maintenance}, '$', 'maintenance 201211210353-KGGG');
is($rpt->{obs}, '2012/11/21 03:53 KGGG 210353Z 00000KT 6SM BR CLR 13/11 A3020 RMK AO2 SLP225 T01280111 $ ', 'obs 201211210353-KGGG');
is($rpt->{precipslr}, undef, 'precipslr 201211210353-KGGG');
is($rpt->{pressure_inhg}, '30.20', 'pressure_inhg 201211210353-KGGG');
is($rpt->{pressure_kgcm}, '1.04285432', 'pressure_kgcm 201211210353-KGGG');
is($rpt->{pressure_lbin}, '14.8328508', 'pressure_lbin 201211210353-KGGG');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211210353-KGGG');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211210353-KGGG');
is($rpt->{ptemperature}, 'T01280111', 'ptemperature 201211210353-KGGG');
is($rpt->{relative_humidity}, '88', 'relative_humidity 201211210353-KGGG');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1022.5','T01280111','$'], 'remark_arrayref 201211210353-KGGG');
is($rpt->{slp_inhg}, '30.19', 'slp_inhg 201211210353-KGGG');
is($rpt->{slp_kgcm}, '1.0426637', 'slp_kgcm 201211210353-KGGG');
is($rpt->{slp_lbin}, '14.8301355', 'slp_lbin 201211210353-KGGG');
is($rpt->{slp_mb}, '1022', 'slp_mb 201211210353-KGGG');
is($rpt->{slp_mmhg}, '767', 'slp_mmhg 201211210353-KGGG');
is($rpt->{station_type}, 'Automated', 'station_type 201211210353-KGGG');
is($rpt->{storm}, undef, 'storm 201211210353-KGGG');
is($rpt->{temperature_c}, '13', 'temperature_c 201211210353-KGGG');
is($rpt->{temperature_f}, '55', 'temperature_f 201211210353-KGGG');
is($rpt->{templateout}, undef, 'templateout 201211210353-KGGG');
is($rpt->{tfile}, undef, 'tfile 201211210353-KGGG');
is($rpt->{thpressure}, undef, 'thpressure 201211210353-KGGG');
is($rpt->{time}, '0353', 'time 201211210353-KGGG');
is($rpt->{visibility_km}, '10', 'visibility_km 201211210353-KGGG');
is($rpt->{visibility_mi}, '6', 'visibility_mi 201211210353-KGGG');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210353-KGGG');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210353-KGGG');
is($rpt->{winddir}, '0', 'winddir 201211210353-KGGG');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210353-KGGG');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210353-KGGG');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210353-KGGG');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210353-KGGG');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210353-KGGG');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210353-KGGG');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210353-KGGG');
