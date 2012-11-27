#!perl -T

use strict;
use warnings;

# Test 201211230353-KPAE
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 03:53 KPAE 230353Z 16010KT 10SM BKN080 OVC095 09/M01 A3022 RMK AO2 SLP235 T00891006 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 03:53 KPAE 230353Z 16010KT 10SM BKN080 OVC095 09/M01 A3022 RMK AO2 SLP235 T00891006 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211230353-KPAE');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['BKN080','OVC095'], 'cloudlevel_arrayref 201211230353-KPAE');
is($rpt->{code}, 'KPAE', 'code 201211230353-KPAE');
is($rpt->{conditions1}, undef, 'conditions1 201211230353-KPAE');
is($rpt->{conditions2}, undef, 'conditions2 201211230353-KPAE');
is($rpt->{conditionstext}, 'Mostly Cloudy', 'conditionstext 201211230353-KPAE');
is($rpt->{day}, '23', 'day 201211230353-KPAE');
is($rpt->{dewpoint_c}, '-1', 'dewpoint_c 201211230353-KPAE');
is($rpt->{dewpoint_f}, '30', 'dewpoint_f 201211230353-KPAE');
is($rpt->{error}, undef, 'error 201211230353-KPAE');
is($rpt->{errortext}, undef, 'errortext 201211230353-KPAE');
is($rpt->{eventbe}, undef, 'eventbe 201211230353-KPAE');
is($rpt->{heat_index_c}, '39', 'heat_index_c 201211230353-KPAE');
is($rpt->{heat_index_f}, '103', 'heat_index_f 201211230353-KPAE');
is($rpt->{http}, undef, 'http 201211230353-KPAE');
is($rpt->{intensity}, undef, 'intensity 201211230353-KPAE');
is($rpt->{maintenance}, undef, 'maintenance 201211230353-KPAE');
is($rpt->{obs}, '2012/11/23 03:53 KPAE 230353Z 16010KT 10SM BKN080 OVC095 09/M01 A3022 RMK AO2 SLP235 T00891006 ', 'obs 201211230353-KPAE');
is($rpt->{precipslr}, undef, 'precipslr 201211230353-KPAE');
is($rpt->{pressure_inhg}, '30.22', 'pressure_inhg 201211230353-KPAE');
is($rpt->{pressure_kgcm}, '1.043544952', 'pressure_kgcm 201211230353-KPAE');
is($rpt->{pressure_lbin}, '14.84267388', 'pressure_lbin 201211230353-KPAE');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211230353-KPAE');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211230353-KPAE');
is($rpt->{ptemperature}, 'T00891006', 'ptemperature 201211230353-KPAE');
is($rpt->{relative_humidity}, '50', 'relative_humidity 201211230353-KPAE');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1023.5','T00891006'], 'remark_arrayref 201211230353-KPAE');
is($rpt->{slp_inhg}, '30.22', 'slp_inhg 201211230353-KPAE');
is($rpt->{slp_kgcm}, '1.04368342', 'slp_kgcm 201211230353-KPAE');
is($rpt->{slp_lbin}, '14.8446393', 'slp_lbin 201211230353-KPAE');
is($rpt->{slp_mb}, '1024', 'slp_mb 201211230353-KPAE');
is($rpt->{slp_mmhg}, '768', 'slp_mmhg 201211230353-KPAE');
is($rpt->{station_type}, 'Automated', 'station_type 201211230353-KPAE');
is($rpt->{storm}, undef, 'storm 201211230353-KPAE');
is($rpt->{temperature_c}, '09', 'temperature_c 201211230353-KPAE');
is($rpt->{temperature_f}, '48', 'temperature_f 201211230353-KPAE');
is($rpt->{templateout}, undef, 'templateout 201211230353-KPAE');
is($rpt->{tfile}, undef, 'tfile 201211230353-KPAE');
is($rpt->{thpressure}, undef, 'thpressure 201211230353-KPAE');
is($rpt->{time}, '0353', 'time 201211230353-KPAE');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230353-KPAE');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230353-KPAE');
is($rpt->{windchill_c}, '6', 'windchill_c 201211230353-KPAE');
is($rpt->{windchill_f}, '43', 'windchill_f 201211230353-KPAE');
is($rpt->{winddir}, '160', 'winddir 201211230353-KPAE');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211230353-KPAE');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230353-KPAE');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230353-KPAE');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230353-KPAE');
is($rpt->{windspeedkmh}, '19', 'windspeedkmh 201211230353-KPAE');
is($rpt->{windspeedkts}, '10', 'windspeedkts 201211230353-KPAE');
is($rpt->{windspeedmph}, '12', 'windspeedmph 201211230353-KPAE');
