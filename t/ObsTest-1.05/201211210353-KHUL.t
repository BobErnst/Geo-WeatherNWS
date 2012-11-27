#!perl -T

use strict;
use warnings;

# Test 201211210353-KHUL
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:53 KHUL 210353Z AUTO 00000KT 8SM CLR M05/M07 A3021 RMK AO2 SLP239 T10501067 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:53 KHUL 210353Z AUTO 00000KT 8SM CLR M05/M07 A3021 RMK AO2 SLP239 T10501067 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210353-KHUL');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210353-KHUL');
is($rpt->{code}, 'KHUL', 'code 201211210353-KHUL');
is($rpt->{conditions1}, undef, 'conditions1 201211210353-KHUL');
is($rpt->{conditions2}, undef, 'conditions2 201211210353-KHUL');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210353-KHUL');
is($rpt->{day}, '21', 'day 201211210353-KHUL');
is($rpt->{dewpoint_c}, '-7', 'dewpoint_c 201211210353-KHUL');
is($rpt->{dewpoint_f}, '19', 'dewpoint_f 201211210353-KHUL');
is($rpt->{error}, undef, 'error 201211210353-KHUL');
is($rpt->{errortext}, undef, 'errortext 201211210353-KHUL');
is($rpt->{eventbe}, undef, 'eventbe 201211210353-KHUL');
is($rpt->{heat_index_c}, '103', 'heat_index_c 201211210353-KHUL');
is($rpt->{heat_index_f}, '217', 'heat_index_f 201211210353-KHUL');
is($rpt->{http}, undef, 'http 201211210353-KHUL');
is($rpt->{intensity}, undef, 'intensity 201211210353-KHUL');
is($rpt->{maintenance}, undef, 'maintenance 201211210353-KHUL');
is($rpt->{obs}, '2012/11/21 03:53 KHUL 210353Z AUTO 00000KT 8SM CLR M05/M07 A3021 RMK AO2 SLP239 T10501067 ', 'obs 201211210353-KHUL');
is($rpt->{precipslr}, undef, 'precipslr 201211210353-KHUL');
is($rpt->{pressure_inhg}, '30.21', 'pressure_inhg 201211210353-KHUL');
is($rpt->{pressure_kgcm}, '1.043199636', 'pressure_kgcm 201211210353-KHUL');
is($rpt->{pressure_lbin}, '14.83776234', 'pressure_lbin 201211210353-KHUL');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211210353-KHUL');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211210353-KHUL');
is($rpt->{ptemperature}, 'T10501067', 'ptemperature 201211210353-KHUL');
is($rpt->{relative_humidity}, '86', 'relative_humidity 201211210353-KHUL');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1023.9','T10501067'], 'remark_arrayref 201211210353-KHUL');
is($rpt->{slp_inhg}, '30.23', 'slp_inhg 201211210353-KHUL');
is($rpt->{slp_kgcm}, '1.044091308', 'slp_kgcm 201211210353-KHUL');
is($rpt->{slp_lbin}, '14.85044082', 'slp_lbin 201211210353-KHUL');
is($rpt->{slp_mb}, '1024', 'slp_mb 201211210353-KHUL');
is($rpt->{slp_mmhg}, '768', 'slp_mmhg 201211210353-KHUL');
is($rpt->{station_type}, 'Automated', 'station_type 201211210353-KHUL');
is($rpt->{storm}, undef, 'storm 201211210353-KHUL');
is($rpt->{temperature_c}, '-5', 'temperature_c 201211210353-KHUL');
is($rpt->{temperature_f}, '23', 'temperature_f 201211210353-KHUL');
is($rpt->{templateout}, undef, 'templateout 201211210353-KHUL');
is($rpt->{tfile}, undef, 'tfile 201211210353-KHUL');
is($rpt->{thpressure}, undef, 'thpressure 201211210353-KHUL');
is($rpt->{time}, '0353', 'time 201211210353-KHUL');
is($rpt->{visibility_km}, '13', 'visibility_km 201211210353-KHUL');
is($rpt->{visibility_mi}, '8', 'visibility_mi 201211210353-KHUL');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210353-KHUL');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210353-KHUL');
is($rpt->{winddir}, '0', 'winddir 201211210353-KHUL');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210353-KHUL');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210353-KHUL');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210353-KHUL');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210353-KHUL');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210353-KHUL');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210353-KHUL');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210353-KHUL');
