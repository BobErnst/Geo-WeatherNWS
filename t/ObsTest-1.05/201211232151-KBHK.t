#!perl -T

use strict;
use warnings;

# Test 201211232151-KBHK
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 21:51 KBHK 232151Z AUTO 13010KT 10SM BKN100 03/M06 A3022 RMK AO2 SLP270 T00281056 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 21:51 KBHK 232151Z AUTO 13010KT 10SM BKN100 03/M06 A3022 RMK AO2 SLP270 T00281056 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Mostly Cloudy', 'cloudcover 201211232151-KBHK');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['BKN100'], 'cloudlevel_arrayref 201211232151-KBHK');
is($rpt->{code}, 'KBHK', 'code 201211232151-KBHK');
is($rpt->{conditions1}, undef, 'conditions1 201211232151-KBHK');
is($rpt->{conditions2}, undef, 'conditions2 201211232151-KBHK');
is($rpt->{conditionstext}, 'Mostly Cloudy', 'conditionstext 201211232151-KBHK');
is($rpt->{day}, '23', 'day 201211232151-KBHK');
is($rpt->{dewpoint_c}, '-6', 'dewpoint_c 201211232151-KBHK');
is($rpt->{dewpoint_f}, '21', 'dewpoint_f 201211232151-KBHK');
is($rpt->{error}, undef, 'error 201211232151-KBHK');
is($rpt->{errortext}, undef, 'errortext 201211232151-KBHK');
is($rpt->{eventbe}, undef, 'eventbe 201211232151-KBHK');
is($rpt->{heat_index_c}, '57', 'heat_index_c 201211232151-KBHK');
is($rpt->{heat_index_f}, '135', 'heat_index_f 201211232151-KBHK');
is($rpt->{http}, undef, 'http 201211232151-KBHK');
is($rpt->{intensity}, undef, 'intensity 201211232151-KBHK');
is($rpt->{maintenance}, undef, 'maintenance 201211232151-KBHK');
is($rpt->{obs}, '2012/11/23 21:51 KBHK 232151Z AUTO 13010KT 10SM BKN100 03/M06 A3022 RMK AO2 SLP270 T00281056 ', 'obs 201211232151-KBHK');
is($rpt->{precipslr}, undef, 'precipslr 201211232151-KBHK');
is($rpt->{pressure_inhg}, '30.22', 'pressure_inhg 201211232151-KBHK');
is($rpt->{pressure_kgcm}, '1.043544952', 'pressure_kgcm 201211232151-KBHK');
is($rpt->{pressure_lbin}, '14.84267388', 'pressure_lbin 201211232151-KBHK');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211232151-KBHK');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211232151-KBHK');
is($rpt->{ptemperature}, 'T00281056', 'ptemperature 201211232151-KBHK');
is($rpt->{relative_humidity}, '52', 'relative_humidity 201211232151-KBHK');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2',1027,'T00281056'], 'remark_arrayref 201211232151-KBHK');
is($rpt->{slp_inhg}, '30.32', 'slp_inhg 201211232151-KBHK');
is($rpt->{slp_kgcm}, '1.04725244', 'slp_kgcm 201211232151-KBHK');
is($rpt->{slp_lbin}, '14.8954026', 'slp_lbin 201211232151-KBHK');
is($rpt->{slp_mb}, '1027', 'slp_mb 201211232151-KBHK');
is($rpt->{slp_mmhg}, '770', 'slp_mmhg 201211232151-KBHK');
is($rpt->{station_type}, 'Automated', 'station_type 201211232151-KBHK');
is($rpt->{storm}, undef, 'storm 201211232151-KBHK');
is($rpt->{temperature_c}, '03', 'temperature_c 201211232151-KBHK');
is($rpt->{temperature_f}, '37', 'temperature_f 201211232151-KBHK');
is($rpt->{templateout}, undef, 'templateout 201211232151-KBHK');
is($rpt->{tfile}, undef, 'tfile 201211232151-KBHK');
is($rpt->{thpressure}, undef, 'thpressure 201211232151-KBHK');
is($rpt->{time}, '2151', 'time 201211232151-KBHK');
is($rpt->{visibility_km}, '16', 'visibility_km 201211232151-KBHK');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211232151-KBHK');
is($rpt->{windchill_c}, '-1', 'windchill_c 201211232151-KBHK');
is($rpt->{windchill_f}, '30', 'windchill_f 201211232151-KBHK');
is($rpt->{winddir}, '130', 'winddir 201211232151-KBHK');
is($rpt->{winddirtext}, 'Southeast', 'winddirtext 201211232151-KBHK');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211232151-KBHK');
is($rpt->{windgustkts}, '0', 'windgustkts 201211232151-KBHK');
is($rpt->{windgustmph}, '0', 'windgustmph 201211232151-KBHK');
is($rpt->{windspeedkmh}, '19', 'windspeedkmh 201211232151-KBHK');
is($rpt->{windspeedkts}, '10', 'windspeedkts 201211232151-KBHK');
is($rpt->{windspeedmph}, '12', 'windspeedmph 201211232151-KBHK');
