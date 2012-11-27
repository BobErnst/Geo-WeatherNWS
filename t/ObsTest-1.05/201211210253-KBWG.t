#!perl -T

use strict;
use warnings;

# Test 201211210253-KBWG
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:53 KBWG 210253Z AUTO 00000KT 10SM BKN050 OVC065 14/07 A3011 RMK AO2 SLP196 T01440072 52008 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:53 KBWG 210253Z AUTO 00000KT 10SM BKN050 OVC065 14/07 A3011 RMK AO2 SLP196 T01440072 52008 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210253-KBWG');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['BKN050','OVC065'], 'cloudlevel_arrayref 201211210253-KBWG');
is($rpt->{code}, 'KBWG', 'code 201211210253-KBWG');
is($rpt->{conditions1}, undef, 'conditions1 201211210253-KBWG');
is($rpt->{conditions2}, undef, 'conditions2 201211210253-KBWG');
is($rpt->{conditionstext}, 'Mostly Cloudy', 'conditionstext 201211210253-KBWG');
is($rpt->{day}, '21', 'day 201211210253-KBWG');
is($rpt->{dewpoint_c}, '07', 'dewpoint_c 201211210253-KBWG');
is($rpt->{dewpoint_f}, '45', 'dewpoint_f 201211210253-KBWG');
is($rpt->{error}, undef, 'error 201211210253-KBWG');
is($rpt->{errortext}, undef, 'errortext 201211210253-KBWG');
is($rpt->{eventbe}, undef, 'eventbe 201211210253-KBWG');
is($rpt->{heat_index_c}, '29', 'heat_index_c 201211210253-KBWG');
is($rpt->{heat_index_f}, '85', 'heat_index_f 201211210253-KBWG');
is($rpt->{http}, undef, 'http 201211210253-KBWG');
is($rpt->{intensity}, undef, 'intensity 201211210253-KBWG');
is($rpt->{maintenance}, undef, 'maintenance 201211210253-KBWG');
is($rpt->{obs}, '2012/11/21 02:53 KBWG 210253Z AUTO 00000KT 10SM BKN050 OVC065 14/07 A3011 RMK AO2 SLP196 T01440072 52008 ', 'obs 201211210253-KBWG');
is($rpt->{precipslr}, undef, 'precipslr 201211210253-KBWG');
is($rpt->{pressure_inhg}, '30.11', 'pressure_inhg 201211210253-KBWG');
is($rpt->{pressure_kgcm}, '1.039746476', 'pressure_kgcm 201211210253-KBWG');
is($rpt->{pressure_lbin}, '14.78864694', 'pressure_lbin 201211210253-KBWG');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210253-KBWG');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210253-KBWG');
is($rpt->{ptemperature}, 'T01440072', 'ptemperature 201211210253-KBWG');
is($rpt->{relative_humidity}, '63', 'relative_humidity 201211210253-KBWG');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1019.6','T01440072','52008'], 'remark_arrayref 201211210253-KBWG');
is($rpt->{slp_inhg}, '30.10', 'slp_inhg 201211210253-KBWG');
is($rpt->{slp_kgcm}, '1.039706512', 'slp_kgcm 201211210253-KBWG');
is($rpt->{slp_lbin}, '14.78807448', 'slp_lbin 201211210253-KBWG');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211210253-KBWG');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211210253-KBWG');
is($rpt->{station_type}, 'Automated', 'station_type 201211210253-KBWG');
is($rpt->{storm}, undef, 'storm 201211210253-KBWG');
is($rpt->{temperature_c}, '14', 'temperature_c 201211210253-KBWG');
is($rpt->{temperature_f}, '57', 'temperature_f 201211210253-KBWG');
is($rpt->{templateout}, undef, 'templateout 201211210253-KBWG');
is($rpt->{tfile}, undef, 'tfile 201211210253-KBWG');
is($rpt->{thpressure}, '52008', 'thpressure 201211210253-KBWG');
is($rpt->{time}, '0253', 'time 201211210253-KBWG');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210253-KBWG');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210253-KBWG');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210253-KBWG');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210253-KBWG');
is($rpt->{winddir}, '0', 'winddir 201211210253-KBWG');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210253-KBWG');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210253-KBWG');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210253-KBWG');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210253-KBWG');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210253-KBWG');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210253-KBWG');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210253-KBWG');
