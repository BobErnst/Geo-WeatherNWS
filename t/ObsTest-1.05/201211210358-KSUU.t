#!perl -T

use strict;
use warnings;

# Test 201211210358-KSUU
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:58 KSUU 210358Z AUTO 19010KT 10SM BKN050 BKN065 OVC080 16/13 A3002 RMK AO2 RAB0300E0309 SLP173 P0000 T01650130 RVRNO $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:58 KSUU 210358Z AUTO 19010KT 10SM BKN050 BKN065 OVC080 16/13 A3002 RMK AO2 RAB0300E0309 SLP173 P0000 T01650130 RVRNO $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210358-KSUU');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['BKN050','BKN065','OVC080'], 'cloudlevel_arrayref 201211210358-KSUU');
is($rpt->{code}, 'KSUU', 'code 201211210358-KSUU');
is($rpt->{conditions1}, undef, 'conditions1 201211210358-KSUU');
is($rpt->{conditions2}, undef, 'conditions2 201211210358-KSUU');
is($rpt->{conditionstext}, 'Mostly Cloudy', 'conditionstext 201211210358-KSUU');
is($rpt->{day}, '21', 'day 201211210358-KSUU');
is($rpt->{dewpoint_c}, '13', 'dewpoint_c 201211210358-KSUU');
is($rpt->{dewpoint_f}, '55', 'dewpoint_f 201211210358-KSUU');
is($rpt->{error}, undef, 'error 201211210358-KSUU');
is($rpt->{errortext}, undef, 'errortext 201211210358-KSUU');
is($rpt->{eventbe}, 'RAB0300E0309', 'eventbe 201211210358-KSUU');
is($rpt->{heat_index_c}, '22', 'heat_index_c 201211210358-KSUU');
is($rpt->{heat_index_f}, '71', 'heat_index_f 201211210358-KSUU');
is($rpt->{http}, undef, 'http 201211210358-KSUU');
is($rpt->{intensity}, undef, 'intensity 201211210358-KSUU');
is($rpt->{maintenance}, '$', 'maintenance 201211210358-KSUU');
is($rpt->{obs}, '2012/11/21 03:58 KSUU 210358Z AUTO 19010KT 10SM BKN050 BKN065 OVC080 16/13 A3002 RMK AO2 RAB0300E0309 SLP173 P0000 T01650130 RVRNO $ ', 'obs 201211210358-KSUU');
is($rpt->{precipslr}, 'P0000', 'precipslr 201211210358-KSUU');
is($rpt->{pressure_inhg}, '30.02', 'pressure_inhg 201211210358-KSUU');
is($rpt->{pressure_kgcm}, '1.036638632', 'pressure_kgcm 201211210358-KSUU');
is($rpt->{pressure_lbin}, '14.74444308', 'pressure_lbin 201211210358-KSUU');
is($rpt->{pressure_mb}, '1017', 'pressure_mb 201211210358-KSUU');
is($rpt->{pressure_mmhg}, '763', 'pressure_mmhg 201211210358-KSUU');
is($rpt->{ptemperature}, 'T01650130', 'ptemperature 201211210358-KSUU');
is($rpt->{relative_humidity}, '82', 'relative_humidity 201211210358-KSUU');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','RAB0300E0309','1017.3','P0000','T01650130','RVRNO','$'], 'remark_arrayref 201211210358-KSUU');
is($rpt->{slp_inhg}, '30.04', 'slp_inhg 201211210358-KSUU');
is($rpt->{slp_kgcm}, '1.037361156', 'slp_kgcm 201211210358-KSUU');
is($rpt->{slp_lbin}, '14.75471574', 'slp_lbin 201211210358-KSUU');
is($rpt->{slp_mb}, '1017', 'slp_mb 201211210358-KSUU');
is($rpt->{slp_mmhg}, '763', 'slp_mmhg 201211210358-KSUU');
is($rpt->{station_type}, 'Automated', 'station_type 201211210358-KSUU');
is($rpt->{storm}, undef, 'storm 201211210358-KSUU');
is($rpt->{temperature_c}, '16', 'temperature_c 201211210358-KSUU');
is($rpt->{temperature_f}, '61', 'temperature_f 201211210358-KSUU');
is($rpt->{templateout}, undef, 'templateout 201211210358-KSUU');
is($rpt->{tfile}, undef, 'tfile 201211210358-KSUU');
is($rpt->{thpressure}, undef, 'thpressure 201211210358-KSUU');
is($rpt->{time}, '0358', 'time 201211210358-KSUU');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210358-KSUU');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210358-KSUU');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210358-KSUU');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210358-KSUU');
is($rpt->{winddir}, '190', 'winddir 201211210358-KSUU');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210358-KSUU');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210358-KSUU');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210358-KSUU');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210358-KSUU');
is($rpt->{windspeedkmh}, '19', 'windspeedkmh 201211210358-KSUU');
is($rpt->{windspeedkts}, '10', 'windspeedkts 201211210358-KSUU');
is($rpt->{windspeedmph}, '12', 'windspeedmph 201211210358-KSUU');
