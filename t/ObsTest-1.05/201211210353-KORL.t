#!perl -T

use strict;
use warnings;

# Test 201211210353-KORL
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:53 KORL 210353Z AUTO 36005KT 10SM CLR 15/11 A3005 RMK AO2 SLP179 T01500106 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:53 KORL 210353Z AUTO 36005KT 10SM CLR 15/11 A3005 RMK AO2 SLP179 T01500106 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210353-KORL');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210353-KORL');
is($rpt->{code}, 'KORL', 'code 201211210353-KORL');
is($rpt->{conditions1}, undef, 'conditions1 201211210353-KORL');
is($rpt->{conditions2}, undef, 'conditions2 201211210353-KORL');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210353-KORL');
is($rpt->{day}, '21', 'day 201211210353-KORL');
is($rpt->{dewpoint_c}, '11', 'dewpoint_c 201211210353-KORL');
is($rpt->{dewpoint_f}, '52', 'dewpoint_f 201211210353-KORL');
is($rpt->{error}, undef, 'error 201211210353-KORL');
is($rpt->{errortext}, undef, 'errortext 201211210353-KORL');
is($rpt->{eventbe}, undef, 'eventbe 201211210353-KORL');
is($rpt->{heat_index_c}, '25', 'heat_index_c 201211210353-KORL');
is($rpt->{heat_index_f}, '76', 'heat_index_f 201211210353-KORL');
is($rpt->{http}, undef, 'http 201211210353-KORL');
is($rpt->{intensity}, undef, 'intensity 201211210353-KORL');
is($rpt->{maintenance}, undef, 'maintenance 201211210353-KORL');
is($rpt->{obs}, '2012/11/21 03:53 KORL 210353Z AUTO 36005KT 10SM CLR 15/11 A3005 RMK AO2 SLP179 T01500106 ', 'obs 201211210353-KORL');
is($rpt->{precipslr}, undef, 'precipslr 201211210353-KORL');
is($rpt->{pressure_inhg}, '30.05', 'pressure_inhg 201211210353-KORL');
is($rpt->{pressure_kgcm}, '1.03767458', 'pressure_kgcm 201211210353-KORL');
is($rpt->{pressure_lbin}, '14.7591777', 'pressure_lbin 201211210353-KORL');
is($rpt->{pressure_mb}, '1018', 'pressure_mb 201211210353-KORL');
is($rpt->{pressure_mmhg}, '763', 'pressure_mmhg 201211210353-KORL');
is($rpt->{ptemperature}, 'T01500106', 'ptemperature 201211210353-KORL');
is($rpt->{relative_humidity}, '77', 'relative_humidity 201211210353-KORL');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1017.9','T01500106'], 'remark_arrayref 201211210353-KORL');
is($rpt->{slp_inhg}, '30.05', 'slp_inhg 201211210353-KORL');
is($rpt->{slp_kgcm}, '1.037972988', 'slp_kgcm 201211210353-KORL');
is($rpt->{slp_lbin}, '14.76341802', 'slp_lbin 201211210353-KORL');
is($rpt->{slp_mb}, '1018', 'slp_mb 201211210353-KORL');
is($rpt->{slp_mmhg}, '763', 'slp_mmhg 201211210353-KORL');
is($rpt->{station_type}, 'Automated', 'station_type 201211210353-KORL');
is($rpt->{storm}, undef, 'storm 201211210353-KORL');
is($rpt->{temperature_c}, '15', 'temperature_c 201211210353-KORL');
is($rpt->{temperature_f}, '59', 'temperature_f 201211210353-KORL');
is($rpt->{templateout}, undef, 'templateout 201211210353-KORL');
is($rpt->{tfile}, undef, 'tfile 201211210353-KORL');
is($rpt->{thpressure}, undef, 'thpressure 201211210353-KORL');
is($rpt->{time}, '0353', 'time 201211210353-KORL');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210353-KORL');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210353-KORL');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210353-KORL');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210353-KORL');
is($rpt->{winddir}, '360', 'winddir 201211210353-KORL');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211210353-KORL');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210353-KORL');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210353-KORL');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210353-KORL');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211210353-KORL');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211210353-KORL');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211210353-KORL');
