#!perl -T

use strict;
use warnings;

# Test 201211210253-KGGW
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:53 KGGW 210253Z AUTO 08009KT 10SM OVC110 05/01 A2977 RMK AO2 SLP103 T00500011 57001 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:53 KGGW 210253Z AUTO 08009KT 10SM OVC110 05/01 A2977 RMK AO2 SLP103 T00500011 57001 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210253-KGGW');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC110'], 'cloudlevel_arrayref 201211210253-KGGW');
is($rpt->{code}, 'KGGW', 'code 201211210253-KGGW');
is($rpt->{conditions1}, undef, 'conditions1 201211210253-KGGW');
is($rpt->{conditions2}, undef, 'conditions2 201211210253-KGGW');
is($rpt->{conditionstext}, 'Cloudy', 'conditionstext 201211210253-KGGW');
is($rpt->{day}, '21', 'day 201211210253-KGGW');
is($rpt->{dewpoint_c}, '01', 'dewpoint_c 201211210253-KGGW');
is($rpt->{dewpoint_f}, '34', 'dewpoint_f 201211210253-KGGW');
is($rpt->{error}, undef, 'error 201211210253-KGGW');
is($rpt->{errortext}, undef, 'errortext 201211210253-KGGW');
is($rpt->{eventbe}, undef, 'eventbe 201211210253-KGGW');
is($rpt->{heat_index_c}, '51', 'heat_index_c 201211210253-KGGW');
is($rpt->{heat_index_f}, '124', 'heat_index_f 201211210253-KGGW');
is($rpt->{http}, undef, 'http 201211210253-KGGW');
is($rpt->{intensity}, undef, 'intensity 201211210253-KGGW');
is($rpt->{maintenance}, undef, 'maintenance 201211210253-KGGW');
is($rpt->{obs}, '2012/11/21 02:53 KGGW 210253Z AUTO 08009KT 10SM OVC110 05/01 A2977 RMK AO2 SLP103 T00500011 57001 ', 'obs 201211210253-KGGW');
is($rpt->{precipslr}, undef, 'precipslr 201211210253-KGGW');
is($rpt->{pressure_inhg}, '29.77', 'pressure_inhg 201211210253-KGGW');
is($rpt->{pressure_kgcm}, '1.028005732', 'pressure_kgcm 201211210253-KGGW');
is($rpt->{pressure_lbin}, '14.62165458', 'pressure_lbin 201211210253-KGGW');
is($rpt->{pressure_mb}, '1008', 'pressure_mb 201211210253-KGGW');
is($rpt->{pressure_mmhg}, '756', 'pressure_mmhg 201211210253-KGGW');
is($rpt->{ptemperature}, 'T00500011', 'ptemperature 201211210253-KGGW');
is($rpt->{relative_humidity}, '75', 'relative_humidity 201211210253-KGGW');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1010.3','T00500011','57001'], 'remark_arrayref 201211210253-KGGW');
is($rpt->{slp_inhg}, '29.83', 'slp_inhg 201211210253-KGGW');
is($rpt->{slp_kgcm}, '1.030223116', 'slp_kgcm 201211210253-KGGW');
is($rpt->{slp_lbin}, '14.65318914', 'slp_lbin 201211210253-KGGW');
is($rpt->{slp_mb}, '1010', 'slp_mb 201211210253-KGGW');
is($rpt->{slp_mmhg}, '758', 'slp_mmhg 201211210253-KGGW');
is($rpt->{station_type}, 'Automated', 'station_type 201211210253-KGGW');
is($rpt->{storm}, undef, 'storm 201211210253-KGGW');
is($rpt->{temperature_c}, '05', 'temperature_c 201211210253-KGGW');
is($rpt->{temperature_f}, '41', 'temperature_f 201211210253-KGGW');
is($rpt->{templateout}, undef, 'templateout 201211210253-KGGW');
is($rpt->{tfile}, undef, 'tfile 201211210253-KGGW');
is($rpt->{thpressure}, '57001', 'thpressure 201211210253-KGGW');
is($rpt->{time}, '0253', 'time 201211210253-KGGW');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210253-KGGW');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210253-KGGW');
is($rpt->{windchill_c}, '2', 'windchill_c 201211210253-KGGW');
is($rpt->{windchill_f}, '35', 'windchill_f 201211210253-KGGW');
is($rpt->{winddir}, '80', 'winddir 201211210253-KGGW');
is($rpt->{winddirtext}, 'East', 'winddirtext 201211210253-KGGW');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210253-KGGW');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210253-KGGW');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210253-KGGW');
is($rpt->{windspeedkmh}, '17', 'windspeedkmh 201211210253-KGGW');
is($rpt->{windspeedkts}, '9', 'windspeedkts 201211210253-KGGW');
is($rpt->{windspeedmph}, '10', 'windspeedmph 201211210253-KGGW');
