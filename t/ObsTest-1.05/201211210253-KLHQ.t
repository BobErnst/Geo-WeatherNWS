#!perl -T

use strict;
use warnings;

# Test 201211210253-KLHQ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:53 KLHQ 210253Z AUTO 00000KT 10SM BKN090 OVC110 05/03 A3015 RMK AO2 SLP212 T00500028 51009 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:53 KLHQ 210253Z AUTO 00000KT 10SM BKN090 OVC110 05/03 A3015 RMK AO2 SLP212 T00500028 51009 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210253-KLHQ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['BKN090','OVC110'], 'cloudlevel_arrayref 201211210253-KLHQ');
is($rpt->{code}, 'KLHQ', 'code 201211210253-KLHQ');
is($rpt->{conditions1}, undef, 'conditions1 201211210253-KLHQ');
is($rpt->{conditions2}, undef, 'conditions2 201211210253-KLHQ');
is($rpt->{conditionstext}, 'Mostly Cloudy', 'conditionstext 201211210253-KLHQ');
is($rpt->{day}, '21', 'day 201211210253-KLHQ');
is($rpt->{dewpoint_c}, '03', 'dewpoint_c 201211210253-KLHQ');
is($rpt->{dewpoint_f}, '37', 'dewpoint_f 201211210253-KLHQ');
is($rpt->{error}, undef, 'error 201211210253-KLHQ');
is($rpt->{errortext}, undef, 'errortext 201211210253-KLHQ');
is($rpt->{eventbe}, undef, 'eventbe 201211210253-KLHQ');
is($rpt->{heat_index_c}, '46', 'heat_index_c 201211210253-KLHQ');
is($rpt->{heat_index_f}, '115', 'heat_index_f 201211210253-KLHQ');
is($rpt->{http}, undef, 'http 201211210253-KLHQ');
is($rpt->{intensity}, undef, 'intensity 201211210253-KLHQ');
is($rpt->{maintenance}, undef, 'maintenance 201211210253-KLHQ');
is($rpt->{obs}, '2012/11/21 02:53 KLHQ 210253Z AUTO 00000KT 10SM BKN090 OVC110 05/03 A3015 RMK AO2 SLP212 T00500028 51009 ', 'obs 201211210253-KLHQ');
is($rpt->{precipslr}, undef, 'precipslr 201211210253-KLHQ');
is($rpt->{pressure_inhg}, '30.15', 'pressure_inhg 201211210253-KLHQ');
is($rpt->{pressure_kgcm}, '1.04112774', 'pressure_kgcm 201211210253-KLHQ');
is($rpt->{pressure_lbin}, '14.8082931', 'pressure_lbin 201211210253-KLHQ');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210253-KLHQ');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210253-KLHQ');
is($rpt->{ptemperature}, 'T00500028', 'ptemperature 201211210253-KLHQ');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211210253-KLHQ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1021.2','T00500028','51009'], 'remark_arrayref 201211210253-KLHQ');
is($rpt->{slp_inhg}, '30.15', 'slp_inhg 201211210253-KLHQ');
is($rpt->{slp_kgcm}, '1.041338064', 'slp_kgcm 201211210253-KLHQ');
is($rpt->{slp_lbin}, '14.81128056', 'slp_lbin 201211210253-KLHQ');
is($rpt->{slp_mb}, '1021', 'slp_mb 201211210253-KLHQ');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210253-KLHQ');
is($rpt->{station_type}, 'Automated', 'station_type 201211210253-KLHQ');
is($rpt->{storm}, undef, 'storm 201211210253-KLHQ');
is($rpt->{temperature_c}, '05', 'temperature_c 201211210253-KLHQ');
is($rpt->{temperature_f}, '41', 'temperature_f 201211210253-KLHQ');
is($rpt->{templateout}, undef, 'templateout 201211210253-KLHQ');
is($rpt->{tfile}, undef, 'tfile 201211210253-KLHQ');
is($rpt->{thpressure}, '51009', 'thpressure 201211210253-KLHQ');
is($rpt->{time}, '0253', 'time 201211210253-KLHQ');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210253-KLHQ');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210253-KLHQ');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210253-KLHQ');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210253-KLHQ');
is($rpt->{winddir}, '0', 'winddir 201211210253-KLHQ');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210253-KLHQ');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210253-KLHQ');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210253-KLHQ');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210253-KLHQ');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210253-KLHQ');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210253-KLHQ');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210253-KLHQ');
