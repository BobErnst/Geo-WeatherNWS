#!perl -T

use strict;
use warnings;

# Test 201211210248-KASG
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:48 KASG 210248Z 32007KT 10SM SKC 08/05 A3022 RMK LAST 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:48 KASG 210248Z 32007KT 10SM SKC 08/05 A3022 RMK LAST ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211210248-KASG');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201211210248-KASG');
is($rpt->{code}, 'KASG', 'code 201211210248-KASG');
is($rpt->{conditions1}, undef, 'conditions1 201211210248-KASG');
is($rpt->{conditions2}, undef, 'conditions2 201211210248-KASG');
is($rpt->{conditionstext}, undef, 'conditionstext 201211210248-KASG');
is($rpt->{day}, '21', 'day 201211210248-KASG');
is($rpt->{dewpoint_c}, '05', 'dewpoint_c 201211210248-KASG');
is($rpt->{dewpoint_f}, '41', 'dewpoint_f 201211210248-KASG');
is($rpt->{error}, undef, 'error 201211210248-KASG');
is($rpt->{errortext}, undef, 'errortext 201211210248-KASG');
is($rpt->{eventbe}, undef, 'eventbe 201211210248-KASG');
is($rpt->{heat_index_c}, '38', 'heat_index_c 201211210248-KASG');
is($rpt->{heat_index_f}, '101', 'heat_index_f 201211210248-KASG');
is($rpt->{http}, undef, 'http 201211210248-KASG');
is($rpt->{intensity}, undef, 'intensity 201211210248-KASG');
is($rpt->{maintenance}, undef, 'maintenance 201211210248-KASG');
is($rpt->{obs}, '2012/11/21 02:48 KASG 210248Z 32007KT 10SM SKC 08/05 A3022 RMK LAST ', 'obs 201211210248-KASG');
is($rpt->{precipslr}, undef, 'precipslr 201211210248-KASG');
is($rpt->{pressure_inhg}, '30.22', 'pressure_inhg 201211210248-KASG');
is($rpt->{pressure_kgcm}, '1.043544952', 'pressure_kgcm 201211210248-KASG');
is($rpt->{pressure_lbin}, '14.84267388', 'pressure_lbin 201211210248-KASG');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211210248-KASG');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211210248-KASG');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210248-KASG');
is($rpt->{relative_humidity}, '81', 'relative_humidity 201211210248-KASG');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','LAST'], 'remark_arrayref 201211210248-KASG');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210248-KASG');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210248-KASG');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210248-KASG');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210248-KASG');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210248-KASG');
is($rpt->{station_type}, 'Manual', 'station_type 201211210248-KASG');
is($rpt->{storm}, undef, 'storm 201211210248-KASG');
is($rpt->{temperature_c}, '08', 'temperature_c 201211210248-KASG');
is($rpt->{temperature_f}, '46', 'temperature_f 201211210248-KASG');
is($rpt->{templateout}, undef, 'templateout 201211210248-KASG');
is($rpt->{tfile}, undef, 'tfile 201211210248-KASG');
is($rpt->{thpressure}, undef, 'thpressure 201211210248-KASG');
is($rpt->{time}, '0248', 'time 201211210248-KASG');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210248-KASG');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210248-KASG');
is($rpt->{windchill_c}, '6', 'windchill_c 201211210248-KASG');
is($rpt->{windchill_f}, '42', 'windchill_f 201211210248-KASG');
is($rpt->{winddir}, '320', 'winddir 201211210248-KASG');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 201211210248-KASG');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210248-KASG');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210248-KASG');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210248-KASG');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211210248-KASG');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211210248-KASG');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211210248-KASG');
