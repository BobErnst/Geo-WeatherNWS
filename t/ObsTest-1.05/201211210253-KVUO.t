#!perl -T

use strict;
use warnings;

# Test 201211210253-KVUO
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:53 KVUO 210253Z AUTO 13005KT 10SM FEW048 OVC100 10/06 A2974 RMK AO2 SLP072 T01000056 51006 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:53 KVUO 210253Z AUTO 13005KT 10SM FEW048 OVC100 10/06 A2974 RMK AO2 SLP072 T01000056 51006 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210253-KVUO');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW048','OVC100'], 'cloudlevel_arrayref 201211210253-KVUO');
is($rpt->{code}, 'KVUO', 'code 201211210253-KVUO');
is($rpt->{conditions1}, undef, 'conditions1 201211210253-KVUO');
is($rpt->{conditions2}, undef, 'conditions2 201211210253-KVUO');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211210253-KVUO');
is($rpt->{day}, '21', 'day 201211210253-KVUO');
is($rpt->{dewpoint_c}, '06', 'dewpoint_c 201211210253-KVUO');
is($rpt->{dewpoint_f}, '43', 'dewpoint_f 201211210253-KVUO');
is($rpt->{error}, undef, 'error 201211210253-KVUO');
is($rpt->{errortext}, undef, 'errortext 201211210253-KVUO');
is($rpt->{eventbe}, undef, 'eventbe 201211210253-KVUO');
is($rpt->{heat_index_c}, '35', 'heat_index_c 201211210253-KVUO');
is($rpt->{heat_index_f}, '94', 'heat_index_f 201211210253-KVUO');
is($rpt->{http}, undef, 'http 201211210253-KVUO');
is($rpt->{intensity}, undef, 'intensity 201211210253-KVUO');
is($rpt->{maintenance}, undef, 'maintenance 201211210253-KVUO');
is($rpt->{obs}, '2012/11/21 02:53 KVUO 210253Z AUTO 13005KT 10SM FEW048 OVC100 10/06 A2974 RMK AO2 SLP072 T01000056 51006 ', 'obs 201211210253-KVUO');
is($rpt->{precipslr}, undef, 'precipslr 201211210253-KVUO');
is($rpt->{pressure_inhg}, '29.74', 'pressure_inhg 201211210253-KVUO');
is($rpt->{pressure_kgcm}, '1.026969784', 'pressure_kgcm 201211210253-KVUO');
is($rpt->{pressure_lbin}, '14.60691996', 'pressure_lbin 201211210253-KVUO');
is($rpt->{pressure_mb}, '1007', 'pressure_mb 201211210253-KVUO');
is($rpt->{pressure_mmhg}, '755', 'pressure_mmhg 201211210253-KVUO');
is($rpt->{ptemperature}, 'T01000056', 'ptemperature 201211210253-KVUO');
is($rpt->{relative_humidity}, '76', 'relative_humidity 201211210253-KVUO');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1007.2','T01000056','51006'], 'remark_arrayref 201211210253-KVUO');
is($rpt->{slp_inhg}, '29.74', 'slp_inhg 201211210253-KVUO');
is($rpt->{slp_kgcm}, '1.027061984', 'slp_kgcm 201211210253-KVUO');
is($rpt->{slp_lbin}, '14.60822736', 'slp_lbin 201211210253-KVUO');
is($rpt->{slp_mb}, '1007', 'slp_mb 201211210253-KVUO');
is($rpt->{slp_mmhg}, '755', 'slp_mmhg 201211210253-KVUO');
is($rpt->{station_type}, 'Automated', 'station_type 201211210253-KVUO');
is($rpt->{storm}, undef, 'storm 201211210253-KVUO');
is($rpt->{temperature_c}, '10', 'temperature_c 201211210253-KVUO');
is($rpt->{temperature_f}, '50', 'temperature_f 201211210253-KVUO');
is($rpt->{templateout}, undef, 'templateout 201211210253-KVUO');
is($rpt->{tfile}, undef, 'tfile 201211210253-KVUO');
is($rpt->{thpressure}, '51006', 'thpressure 201211210253-KVUO');
is($rpt->{time}, '0253', 'time 201211210253-KVUO');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210253-KVUO');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210253-KVUO');
is($rpt->{windchill_c}, '9', 'windchill_c 201211210253-KVUO');
is($rpt->{windchill_f}, '48', 'windchill_f 201211210253-KVUO');
is($rpt->{winddir}, '130', 'winddir 201211210253-KVUO');
is($rpt->{winddirtext}, 'Southeast', 'winddirtext 201211210253-KVUO');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210253-KVUO');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210253-KVUO');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210253-KVUO');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211210253-KVUO');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211210253-KVUO');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211210253-KVUO');
