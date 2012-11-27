#!perl -T

use strict;
use warnings;

# Test 201211210253-KTIW
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:53 KTIW 210253Z 19015G26KT 10SM FEW015 SCT045 BKN095 09/04 A2966 RMK AO2 PK WND 17026/0247 SLP047 T00940044 53002 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:53 KTIW 210253Z 19015G26KT 10SM FEW015 SCT045 BKN095 09/04 A2966 RMK AO2 PK WND 17026/0247 SLP047 T00940044 53002 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Mostly Cloudy', 'cloudcover 201211210253-KTIW');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW015','SCT045','BKN095'], 'cloudlevel_arrayref 201211210253-KTIW');
is($rpt->{code}, 'KTIW', 'code 201211210253-KTIW');
is($rpt->{conditions1}, undef, 'conditions1 201211210253-KTIW');
is($rpt->{conditions2}, undef, 'conditions2 201211210253-KTIW');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211210253-KTIW');
is($rpt->{day}, '21', 'day 201211210253-KTIW');
is($rpt->{dewpoint_c}, '04', 'dewpoint_c 201211210253-KTIW');
is($rpt->{dewpoint_f}, '39', 'dewpoint_f 201211210253-KTIW');
is($rpt->{error}, undef, 'error 201211210253-KTIW');
is($rpt->{errortext}, undef, 'errortext 201211210253-KTIW');
is($rpt->{eventbe}, undef, 'eventbe 201211210253-KTIW');
is($rpt->{heat_index_c}, '39', 'heat_index_c 201211210253-KTIW');
is($rpt->{heat_index_f}, '102', 'heat_index_f 201211210253-KTIW');
is($rpt->{http}, undef, 'http 201211210253-KTIW');
is($rpt->{intensity}, undef, 'intensity 201211210253-KTIW');
is($rpt->{maintenance}, undef, 'maintenance 201211210253-KTIW');
is($rpt->{obs}, '2012/11/21 02:53 KTIW 210253Z 19015G26KT 10SM FEW015 SCT045 BKN095 09/04 A2966 RMK AO2 PK WND 17026/0247 SLP047 T00940044 53002 ', 'obs 201211210253-KTIW');
is($rpt->{precipslr}, undef, 'precipslr 201211210253-KTIW');
is($rpt->{pressure_inhg}, '29.66', 'pressure_inhg 201211210253-KTIW');
is($rpt->{pressure_kgcm}, '1.024207256', 'pressure_kgcm 201211210253-KTIW');
is($rpt->{pressure_lbin}, '14.56762764', 'pressure_lbin 201211210253-KTIW');
is($rpt->{pressure_mb}, '1004', 'pressure_mb 201211210253-KTIW');
is($rpt->{pressure_mmhg}, '753', 'pressure_mmhg 201211210253-KTIW');
is($rpt->{ptemperature}, 'T00940044', 'ptemperature 201211210253-KTIW');
is($rpt->{relative_humidity}, '71', 'relative_humidity 201211210253-KTIW');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','PK','WND','17026/0247','1004.7','T00940044','53002'], 'remark_arrayref 201211210253-KTIW');
is($rpt->{slp_inhg}, '29.66', 'slp_inhg 201211210253-KTIW');
is($rpt->{slp_kgcm}, '1.024512684', 'slp_kgcm 201211210253-KTIW');
is($rpt->{slp_lbin}, '14.57196786', 'slp_lbin 201211210253-KTIW');
is($rpt->{slp_mb}, '1005', 'slp_mb 201211210253-KTIW');
is($rpt->{slp_mmhg}, '754', 'slp_mmhg 201211210253-KTIW');
is($rpt->{station_type}, 'Automated', 'station_type 201211210253-KTIW');
is($rpt->{storm}, undef, 'storm 201211210253-KTIW');
is($rpt->{temperature_c}, '09', 'temperature_c 201211210253-KTIW');
is($rpt->{temperature_f}, '48', 'temperature_f 201211210253-KTIW');
is($rpt->{templateout}, undef, 'templateout 201211210253-KTIW');
is($rpt->{tfile}, undef, 'tfile 201211210253-KTIW');
is($rpt->{thpressure}, '53002', 'thpressure 201211210253-KTIW');
is($rpt->{time}, '0253', 'time 201211210253-KTIW');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210253-KTIW');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210253-KTIW');
is($rpt->{windchill_c}, '5', 'windchill_c 201211210253-KTIW');
is($rpt->{windchill_f}, '42', 'windchill_f 201211210253-KTIW');
is($rpt->{winddir}, '190', 'winddir 201211210253-KTIW');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210253-KTIW');
is($rpt->{windgustkmh}, '48', 'windgustkmh 201211210253-KTIW');
is($rpt->{windgustkts}, '26', 'windgustkts 201211210253-KTIW');
is($rpt->{windgustmph}, '30', 'windgustmph 201211210253-KTIW');
is($rpt->{windspeedkmh}, '28', 'windspeedkmh 201211210253-KTIW');
is($rpt->{windspeedkts}, '15', 'windspeedkts 201211210253-KTIW');
is($rpt->{windspeedmph}, '17', 'windspeedmph 201211210253-KTIW');
