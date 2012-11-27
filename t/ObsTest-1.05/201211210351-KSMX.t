#!perl -T

use strict;
use warnings;

# Test 201211210351-KSMX
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:51 KSMX 210351Z 00000KT 1/4SM FG VV005 13/12 A3013 RMK AO2 SLP207 T01280122 $  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:51 KSMX 210351Z 00000KT 1/4SM FG VV005 13/12 A3013 RMK AO2 SLP207 T01280122 $  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211210351-KSMX');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['VV005'], 'cloudlevel_arrayref 201211210351-KSMX');
is($rpt->{code}, 'KSMX', 'code 201211210351-KSMX');
is($rpt->{conditions1}, 'Fog', 'conditions1 201211210351-KSMX');
is($rpt->{conditions2}, undef, 'conditions2 201211210351-KSMX');
is($rpt->{conditionstext}, 'Fog', 'conditionstext 201211210351-KSMX');
is($rpt->{day}, '21', 'day 201211210351-KSMX');
is($rpt->{dewpoint_c}, '12', 'dewpoint_c 201211210351-KSMX');
is($rpt->{dewpoint_f}, '54', 'dewpoint_f 201211210351-KSMX');
is($rpt->{error}, undef, 'error 201211210351-KSMX');
is($rpt->{errortext}, undef, 'errortext 201211210351-KSMX');
is($rpt->{eventbe}, undef, 'eventbe 201211210351-KSMX');
is($rpt->{heat_index_c}, '19', 'heat_index_c 201211210351-KSMX');
is($rpt->{heat_index_f}, '67', 'heat_index_f 201211210351-KSMX');
is($rpt->{http}, undef, 'http 201211210351-KSMX');
is($rpt->{intensity}, undef, 'intensity 201211210351-KSMX');
is($rpt->{maintenance}, '$', 'maintenance 201211210351-KSMX');
is($rpt->{obs}, '2012/11/21 03:51 KSMX 210351Z 00000KT 1/4SM FG VV005 13/12 A3013 RMK AO2 SLP207 T01280122 $  ', 'obs 201211210351-KSMX');
is($rpt->{precipslr}, undef, 'precipslr 201211210351-KSMX');
is($rpt->{pressure_inhg}, '30.13', 'pressure_inhg 201211210351-KSMX');
is($rpt->{pressure_kgcm}, '1.040437108', 'pressure_kgcm 201211210351-KSMX');
is($rpt->{pressure_lbin}, '14.79847002', 'pressure_lbin 201211210351-KSMX');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210351-KSMX');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210351-KSMX');
is($rpt->{ptemperature}, 'T01280122', 'ptemperature 201211210351-KSMX');
is($rpt->{relative_humidity}, '94', 'relative_humidity 201211210351-KSMX');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1020.7','T01280122','$'], 'remark_arrayref 201211210351-KSMX');
is($rpt->{slp_inhg}, '30.14', 'slp_inhg 201211210351-KSMX');
is($rpt->{slp_kgcm}, '1.040828204', 'slp_kgcm 201211210351-KSMX');
is($rpt->{slp_lbin}, '14.80402866', 'slp_lbin 201211210351-KSMX');
is($rpt->{slp_mb}, '1021', 'slp_mb 201211210351-KSMX');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210351-KSMX');
is($rpt->{station_type}, 'Automated', 'station_type 201211210351-KSMX');
is($rpt->{storm}, undef, 'storm 201211210351-KSMX');
is($rpt->{temperature_c}, '13', 'temperature_c 201211210351-KSMX');
is($rpt->{temperature_f}, '55', 'temperature_f 201211210351-KSMX');
is($rpt->{templateout}, undef, 'templateout 201211210351-KSMX');
is($rpt->{tfile}, undef, 'tfile 201211210351-KSMX');
is($rpt->{thpressure}, undef, 'thpressure 201211210351-KSMX');
is($rpt->{time}, '0351', 'time 201211210351-KSMX');
is($rpt->{visibility_km}, '0', 'visibility_km 201211210351-KSMX');
is($rpt->{visibility_mi}, '0', 'visibility_mi 201211210351-KSMX');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210351-KSMX');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210351-KSMX');
is($rpt->{winddir}, '0', 'winddir 201211210351-KSMX');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210351-KSMX');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210351-KSMX');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210351-KSMX');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210351-KSMX');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210351-KSMX');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210351-KSMX');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210351-KSMX');
