#!perl -T

use strict;
use warnings;

# Test 201211210253-KHUL
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:53 KHUL 210253Z AUTO 00000KT 9SM CLR M04/M06 A3021 RMK AO2 SLP239 T10391056 53009 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:53 KHUL 210253Z AUTO 00000KT 9SM CLR M04/M06 A3021 RMK AO2 SLP239 T10391056 53009 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210253-KHUL');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210253-KHUL');
is($rpt->{code}, 'KHUL', 'code 201211210253-KHUL');
is($rpt->{conditions1}, undef, 'conditions1 201211210253-KHUL');
is($rpt->{conditions2}, undef, 'conditions2 201211210253-KHUL');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210253-KHUL');
is($rpt->{day}, '21', 'day 201211210253-KHUL');
is($rpt->{dewpoint_c}, '-6', 'dewpoint_c 201211210253-KHUL');
is($rpt->{dewpoint_f}, '21', 'dewpoint_f 201211210253-KHUL');
is($rpt->{error}, undef, 'error 201211210253-KHUL');
is($rpt->{errortext}, undef, 'errortext 201211210253-KHUL');
is($rpt->{eventbe}, undef, 'eventbe 201211210253-KHUL');
is($rpt->{heat_index_c}, '96', 'heat_index_c 201211210253-KHUL');
is($rpt->{heat_index_f}, '204', 'heat_index_f 201211210253-KHUL');
is($rpt->{http}, undef, 'http 201211210253-KHUL');
is($rpt->{intensity}, undef, 'intensity 201211210253-KHUL');
is($rpt->{maintenance}, undef, 'maintenance 201211210253-KHUL');
is($rpt->{obs}, '2012/11/21 02:53 KHUL 210253Z AUTO 00000KT 9SM CLR M04/M06 A3021 RMK AO2 SLP239 T10391056 53009 ', 'obs 201211210253-KHUL');
is($rpt->{precipslr}, undef, 'precipslr 201211210253-KHUL');
is($rpt->{pressure_inhg}, '30.21', 'pressure_inhg 201211210253-KHUL');
is($rpt->{pressure_kgcm}, '1.043199636', 'pressure_kgcm 201211210253-KHUL');
is($rpt->{pressure_lbin}, '14.83776234', 'pressure_lbin 201211210253-KHUL');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211210253-KHUL');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211210253-KHUL');
is($rpt->{ptemperature}, 'T10391056', 'ptemperature 201211210253-KHUL');
is($rpt->{relative_humidity}, '86', 'relative_humidity 201211210253-KHUL');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1023.9','T10391056','53009'], 'remark_arrayref 201211210253-KHUL');
is($rpt->{slp_inhg}, '30.23', 'slp_inhg 201211210253-KHUL');
is($rpt->{slp_kgcm}, '1.044091308', 'slp_kgcm 201211210253-KHUL');
is($rpt->{slp_lbin}, '14.85044082', 'slp_lbin 201211210253-KHUL');
is($rpt->{slp_mb}, '1024', 'slp_mb 201211210253-KHUL');
is($rpt->{slp_mmhg}, '768', 'slp_mmhg 201211210253-KHUL');
is($rpt->{station_type}, 'Automated', 'station_type 201211210253-KHUL');
is($rpt->{storm}, undef, 'storm 201211210253-KHUL');
is($rpt->{temperature_c}, '-4', 'temperature_c 201211210253-KHUL');
is($rpt->{temperature_f}, '25', 'temperature_f 201211210253-KHUL');
is($rpt->{templateout}, undef, 'templateout 201211210253-KHUL');
is($rpt->{tfile}, undef, 'tfile 201211210253-KHUL');
is($rpt->{thpressure}, '53009', 'thpressure 201211210253-KHUL');
is($rpt->{time}, '0253', 'time 201211210253-KHUL');
is($rpt->{visibility_km}, '14', 'visibility_km 201211210253-KHUL');
is($rpt->{visibility_mi}, '9', 'visibility_mi 201211210253-KHUL');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210253-KHUL');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210253-KHUL');
is($rpt->{winddir}, '0', 'winddir 201211210253-KHUL');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210253-KHUL');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210253-KHUL');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210253-KHUL');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210253-KHUL');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210253-KHUL');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210253-KHUL');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210253-KHUL');
