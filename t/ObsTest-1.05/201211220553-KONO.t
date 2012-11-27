#!perl -T

use strict;
use warnings;

# Test 201211220553-KONO
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 05:53 KONO 220553Z AUTO 27004KT 10SM BKN100 03/M03 A3025 RMK AO2 SLP256 T00281028 10083 20011 53029 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 05:53 KONO 220553Z AUTO 27004KT 10SM BKN100 03/M03 A3025 RMK AO2 SLP256 T00281028 10083 20011 53029 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Mostly Cloudy', 'cloudcover 201211220553-KONO');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['BKN100'], 'cloudlevel_arrayref 201211220553-KONO');
is($rpt->{code}, 'KONO', 'code 201211220553-KONO');
is($rpt->{conditions1}, undef, 'conditions1 201211220553-KONO');
is($rpt->{conditions2}, undef, 'conditions2 201211220553-KONO');
is($rpt->{conditionstext}, 'Mostly Cloudy', 'conditionstext 201211220553-KONO');
is($rpt->{day}, '22', 'day 201211220553-KONO');
is($rpt->{dewpoint_c}, '-3', 'dewpoint_c 201211220553-KONO');
is($rpt->{dewpoint_f}, '27', 'dewpoint_f 201211220553-KONO');
is($rpt->{error}, undef, 'error 201211220553-KONO');
is($rpt->{errortext}, undef, 'errortext 201211220553-KONO');
is($rpt->{eventbe}, undef, 'eventbe 201211220553-KONO');
is($rpt->{heat_index_c}, '60', 'heat_index_c 201211220553-KONO');
is($rpt->{heat_index_f}, '141', 'heat_index_f 201211220553-KONO');
is($rpt->{http}, undef, 'http 201211220553-KONO');
is($rpt->{intensity}, undef, 'intensity 201211220553-KONO');
is($rpt->{maintenance}, undef, 'maintenance 201211220553-KONO');
is($rpt->{obs}, '2012/11/22 05:53 KONO 220553Z AUTO 27004KT 10SM BKN100 03/M03 A3025 RMK AO2 SLP256 T00281028 10083 20011 53029 ', 'obs 201211220553-KONO');
is($rpt->{precipslr}, undef, 'precipslr 201211220553-KONO');
is($rpt->{pressure_inhg}, '30.25', 'pressure_inhg 201211220553-KONO');
is($rpt->{pressure_kgcm}, '1.0445809', 'pressure_kgcm 201211220553-KONO');
is($rpt->{pressure_lbin}, '14.8574085', 'pressure_lbin 201211220553-KONO');
is($rpt->{pressure_mb}, '1024', 'pressure_mb 201211220553-KONO');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211220553-KONO');
is($rpt->{ptemperature}, 'T00281028', 'ptemperature 201211220553-KONO');
is($rpt->{relative_humidity}, '65', 'relative_humidity 201211220553-KONO');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1025.6','T00281028','10083','20011','53029'], 'remark_arrayref 201211220553-KONO');
is($rpt->{slp_inhg}, '30.28', 'slp_inhg 201211220553-KONO');
is($rpt->{slp_kgcm}, '1.045824832', 'slp_kgcm 201211220553-KONO');
is($rpt->{slp_lbin}, '14.87509728', 'slp_lbin 201211220553-KONO');
is($rpt->{slp_mb}, '1026', 'slp_mb 201211220553-KONO');
is($rpt->{slp_mmhg}, '769', 'slp_mmhg 201211220553-KONO');
is($rpt->{station_type}, 'Automated', 'station_type 201211220553-KONO');
is($rpt->{storm}, undef, 'storm 201211220553-KONO');
is($rpt->{temperature_c}, '03', 'temperature_c 201211220553-KONO');
is($rpt->{temperature_f}, '37', 'temperature_f 201211220553-KONO');
is($rpt->{templateout}, undef, 'templateout 201211220553-KONO');
is($rpt->{tfile}, undef, 'tfile 201211220553-KONO');
is($rpt->{thpressure}, '53029', 'thpressure 201211220553-KONO');
is($rpt->{time}, '0553', 'time 201211220553-KONO');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220553-KONO');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220553-KONO');
is($rpt->{windchill_c}, '1', 'windchill_c 201211220553-KONO');
is($rpt->{windchill_f}, '33', 'windchill_f 201211220553-KONO');
is($rpt->{winddir}, '270', 'winddir 201211220553-KONO');
is($rpt->{winddirtext}, 'West', 'winddirtext 201211220553-KONO');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220553-KONO');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220553-KONO');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220553-KONO');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211220553-KONO');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211220553-KONO');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211220553-KONO');
